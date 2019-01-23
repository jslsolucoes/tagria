
package com.jslsolucoes.tagria.lib.compressor;

import java.io.File;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.javascript.jscomp.CompilationLevel;
import com.google.javascript.jscomp.Compiler;
import com.google.javascript.jscomp.CompilerOptions;
import com.google.javascript.jscomp.CompilerOptions.LanguageMode;
import com.google.javascript.jscomp.SourceFile;
import com.jslsolucoes.tagria.lib.error.TagriaRuntimeException;
import com.jslsolucoes.tagria.lib.util.TagUtil;
import com.yahoo.platform.yui.compressor.CssCompressor;

public class Compressor {

	private static final String THEME = "theme";
	private static Logger logger = LoggerFactory.getLogger(Compressor.class);
	private static final String CHARSET = "UTF-8";
	private List<String> themes = Arrays.asList(new String[] { "default" });
	private String source;
	private Boolean compress;
	private String destination;

	public Compressor(String source, String destination, Boolean compress) {
		this.source = source;
		this.compress = compress;
		this.destination = destination;
	}

	public void compressJs() throws IOException {
		String[] files = new String[] { "jquery/jquery.js","jquery/ui/jquery-ui.js", 
				"tagria/form.js","tagria/mask.js",
				"fontawesome/all.js","tagria/iframe.js","tagria/grid.js","tagria/tabs.js"
				,"tagria/detail.table.js",
				"popper/popper.js","bootstrap/bootstrap.js"};

		List<String> contents = new ArrayList<>();
		for (String file : files) {
			contents.add(FileUtils.readFileToString(new File(new File(source, "js"), file), CHARSET));
		}

		String content = StringUtils.join(contents, "\n");
		FileUtils.writeStringToFile(new File(new File(destination, "js"), "tagria-ui.js"),
				compress ? minifyJs(content, CompilationLevel.SIMPLE_OPTIMIZATIONS) : content, CHARSET);
		logger.info("JS COMPRESSED");
	}

	public String minifyJs(String code, CompilationLevel compilationLevel) throws IOException {
		Compiler compiler = new Compiler();
		CompilerOptions options = new CompilerOptions();
		compilationLevel.setOptionsForCompilationLevel(options);
		options.setLanguageIn(LanguageMode.ECMASCRIPT5);
		SourceFile input = SourceFile.fromCode("input.js", code);
		compiler.compile(SourceFile.fromCode("output.js", ""), input, options);
		return compiler.toSource();
	}

	private void copyFileToDirectory(String resource) throws IOException {
		File root = new File(new File(source, resource), THEME);
		for (String theme : themes) {
			File themeFolder = new File(root, theme);
			if (!themeFolder.exists()) {
				themeFolder.mkdirs();
			}
			File baseFolder = new File(root, "base");
			if(!baseFolder.exists()) {
				baseFolder.mkdirs();
			}
			Stream.concat(Arrays.asList(baseFolder.listFiles()).stream(),
					Arrays.asList(themeFolder.listFiles()).stream()).forEach(file -> {
						try {
							FileUtils.copyFileToDirectory(file,
									new File(new File(new File(destination, resource), THEME), theme));
						} catch (Exception exception) {
							throw new TagriaRuntimeException(exception);
						}
					});
		}
	}

	public void compressFonts() throws IOException {
		copyFileToDirectory("fonts");
		logger.info("FONTS COMPRESSED");
	}

	public void compressImage() throws IOException {
		copyFileToDirectory("image");
		logger.info("IMAGES COMPRESSED");
	}

	public void compressCss() throws IOException {
		
		File root = new File(new File(source, "css"), THEME);

		for (String theme : themes) {

			String[] files = new String[] { "bootstrap.css","bootstrap.fix.css","common.css" };

			String content = StringUtils.join(Stream
					.concat(Arrays.asList(files).stream().map(file -> new File(new File(root, "base"), file)),
							Arrays.asList(new File(root, theme).listFiles()).stream())
					.map(file -> normalizeCssFile(file, theme)).collect(Collectors.toList()), "\n");

			FileUtils.writeStringToFile(
					new File(new File(new File(new File(destination, "css"), THEME), theme), "tagria-ui.css"),
					compress ? minifyCss(content) : content, CHARSET);
			logger.info("CSS THEME %s COMPRESSED", theme);
		}
	}

	private String minifyCss(String code) throws IOException {
		
		try (StringWriter minified = new StringWriter()) {
			CssCompressor cssCompressor = new CssCompressor(new StringReader(code));
			cssCompressor.compress(minified, -1);
			return minified.toString();
		}
	}

	private String normalizeCssFile(File cssFile, String theme) {
		try {
			String normalized = FileUtils.readFileToString(cssFile, CHARSET).replaceAll("\\$\\{theme\\}", theme);
			Set<String> extensions = new HashSet<>();
			extensions.add("png");
			extensions.add("gif");
			extensions.add("eot");
			extensions.add("svg");
			extensions.add("ttf");
			extensions.add("woff");
			extensions.add("woff2");
			extensions.add("otf");
			for (String extension : extensions) {
				normalized = normalized.replaceAll("\\." + extension + "('|\")",
						"." + extension + "?ver=" + TagUtil.VERSION + "$1");
			}
			return normalized;
		} catch (IOException exception) {
			throw new TagriaRuntimeException(exception);
		}
	}
}
