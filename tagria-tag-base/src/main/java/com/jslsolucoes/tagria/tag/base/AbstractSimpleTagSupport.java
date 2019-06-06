package com.jslsolucoes.tagria.tag.base;

import java.io.IOException;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.WeakHashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.jstl.core.Config;
import javax.servlet.jsp.tagext.DynamicAttributes;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.jslsolucoes.tagria.config.TagriaConfig;
import com.jslsolucoes.tagria.config.TagriaConfigParameter;
import com.jslsolucoes.tagria.exception.TagriaRuntimeException;
import com.jslsolucoes.tagria.html.Element;
import com.jslsolucoes.tagria.html.ElementCreator;

public abstract class AbstractSimpleTagSupport extends SimpleTagSupport implements DynamicAttributes {

	private static final Logger logger = LoggerFactory.getLogger(AbstractSimpleTagSupport.class);
	private Map<String, String> attributes = new WeakHashMap<String, String>();
	protected Boolean rendered = Boolean.TRUE;
	protected String cssClass;
	protected String id;

	private JspWriter writer() {
		return jspContext().getOut();
	}

	private JspContext jspContext() {
		return getJspContext();
	}

	public void setAttribute(String name, Object value) {
		jspContext().setAttribute(name, value);
	}

	private void out(String value) {
		try {
			if (!StringUtils.isEmpty(value)) {
				writer().print(value);
			}
		} catch (Exception e) {
			throw new TagriaRuntimeException(e);
		}
	}

	private void out(Element element) {
		out(element.html());
	}

	private String version() {
		return "3.1.0";
	}

	public Boolean rendered() {
		return rendered != null && rendered;
	}

	public String idForId(String id) {
		return id(null, id);
	}

	public String idForName(String name) {
		return id(name, null);
	}

	public String id() {
		return id(null, null);
	}

	public String id(String name, String id) {
		String idForComponent = "par_" + RandomStringUtils.randomAlphanumeric(20);
		if (!StringUtils.isEmpty(id)) {
			idForComponent = id;
		} else if (!StringUtils.isEmpty(name)) {
			idForComponent = "par_" + name.replaceAll("\\.", "_").replaceAll("\\[([0-9]{1,}|)\\]", "");
		}
		return idForComponent + complementForMultipleFormGroup();
	}

	private String complementForMultipleFormGroup() {
		CloneableJsAppender cloneableJsAppender = findAncestorWithClass(CloneableJsAppender.class);
		return cloneableJsAppender != null ? "__" + cloneableJsAppender.index() : "";
	}

	public void bypass() {
		
	}

	public List<Element> renders() {
		return Arrays.asList(render());
	}

	public Element render() {
		return ElementCreator.newNull();
	}

	@Override
	public void doTag() throws JspException, IOException {
		if (rendered()) {
			bypass();
			for (Element element : renders()) {
				out(element);
			}
		}
	}

	public PageContext pageContext() {
		return (PageContext) jspContext();
	}

	public HttpSession httpSession() {
		return pageContext().getSession();
	}

	public String contextPath() {
		return httpServletRequest().getContextPath();
	}

	public HttpServletRequest httpServletRequest() {
		return (HttpServletRequest) pageContext().getRequest();
	}

	public HttpServletResponse httpServletResponse() {
		return (HttpServletResponse) pageContext().getResponse();
	}

	private JspFragment jspbody() {
		return getJspBody();
	}
	
	public void flushBodyContent() {
		bodyContent();
	}

	public String bodyContent() {
		JspFragment jspFragment = jspbody();
		if (jspFragment != null) {
			try (StringWriter stringWriter = new StringWriter()) {
				jspFragment.invoke(stringWriter);
				return stringWriter.toString().trim();
			} catch (Exception e) {
				throw new TagriaRuntimeException(e);
			}
		}
		return null;
	}

	public <T> T findAncestorWithClass(Class<T> ancestorClass) {
		List<T> ancestors = findAncestorsWithClass(ancestorClass);
		if (!CollectionUtils.isEmpty(ancestors)) {
			return ancestors.get(0);
		}
		return null;
	}

	public <T> List<T> findAncestorsWithClass(Class<T> ancestorClass) {
		return findAncestorsWithAssignable(this, ancestorClass);
	}

	@SuppressWarnings("unchecked")
	private <T> List<T> findAncestorsWithAssignable(SimpleTagSupport simpleTagSupport, Class<T> ancestorClass) {
		List<T> ancestors = new ArrayList<T>();
		if (ancestorClass.isAssignableFrom(simpleTagSupport.getClass())) {
			ancestors.add((T) simpleTagSupport);
		} else {
			SimpleTagSupport simpleTagSupportParent = (SimpleTagSupport) simpleTagSupport.getParent();
			if (simpleTagSupportParent != null) {
				ancestors.addAll(findAncestorsWithAssignable(simpleTagSupportParent, ancestorClass));
			}
		}
		return ancestors;
	}

	@Override
	public void setDynamicAttribute(String uri, String localName, Object value) throws JspException {
		if (!localName.startsWith("data-")) {
			throw new TagriaRuntimeException("Dynamic attributes must start with data- . Eg.  data-id,data-url... ");
		}
		attributes.put(localName, value.toString());
	}

	public Locale locale() {
		HttpSession httpSession = httpSession();
		Locale locale = Locale.forLanguageTag(propertyValue(TagriaConfigParameter.LOCALE));
		if (Config.get(httpSession, Config.FMT_LOCALE) != null) {
			locale = (Locale) Config.get(httpSession, Config.FMT_LOCALE);
		}
		return locale;
	}

	public String propertyValue(TagriaConfigParameter tagriaConfigParameter) {
		return TagriaConfig.newConfig().propertyValue(tagriaConfigParameter);
	}

	public Boolean hasKeyOrLabel(String key, String label) {
		return !StringUtils.isEmpty(key) || !StringUtils.isEmpty(label);
	}

	public String keyOrLabel(String key, String label) {
		if (!StringUtils.isEmpty(key)) {
			return keyForApplication(key);
		} else if (!StringUtils.isEmpty(label)) {
			return label;
		} else {
			return null;
		}
	}

	private String keyFor(String key, String bundle, Object... args) {
		try {
			MessageFormat messageFormat = new MessageFormat(ResourceBundle.getBundle(bundle, locale()).getString(key));
			return messageFormat.format(args);
		} catch (MissingResourceException e) {
			logger.warn("could not find key resource", e);
			return '!' + key + '!';
		}
	}

	public String keyForApplication(String key) {
		return keyFor(key, "messages", new Object[] {});
	}

	public String keyForLibrary(String key, Object... args) {
		return keyFor(key, "messages_tagrialib", args);
	}

	public String keyForLibrary(String key) {
		return keyForLibrary(key, new Object[] {});
	}

	public String pathForBlank() {
		return pathForUrl("/tagria/blank");
	}

	public String pathForCssOnLibrary(String css) {
		return urlBaseForStaticFile() + "/tagria/lib/css/theme/" + propertyValue(TagriaConfigParameter.SKIN) + "/" + css
				+ "?ver=" + version();
	}

	public String pathForJavascriptOnLibrary(String js) {
		return urlBaseForStaticFile() + "/tagria/lib/js/" + js + "?ver=" + version();
	}

	public String pathForImageOnLibrary(String image) {
		return urlBaseForStaticFile() + "/tagria/lib/image/theme/" + propertyValue(TagriaConfigParameter.SKIN) + "/"
				+ image + "?ver=" + version();
	}

	public String pathForStatic(String src, Boolean cdn) {
		if (cdn) {
			return pathForStatic(src);
		} else {
			return contextPath() + src;
		}
	}

	public String pathForStatic(String url) {
		String urlBase = "";
		if (!url.contains("http") && !url.contains("https")) {
			urlBase = urlBaseForStaticFile();
		}
		return urlBase + url;
	}

	public String pathForUrl(String path) {
		String url = path;
		if (!url.startsWith("javascript") && !url.startsWith("#") && !url.startsWith("http")
				&& !url.startsWith("https")) {
			url = contextPath() + url;
		}
		return url.replaceAll("\"", "'");
	}

	private String urlBaseForStaticFile() {
		return propertyValue(TagriaConfigParameter.CDN_URL) != null
				&& Boolean.valueOf(propertyValue(TagriaConfigParameter.CDN_ENABLED))
						? httpScheme() + "://" + propertyValue(TagriaConfigParameter.CDN_URL)
						: contextPath();
	}

	public String httpScheme() {
		HttpServletRequest httpServletRequest = httpServletRequest();
		if (httpServletRequest.getHeader("X-Forwarded-Protocol") != null) {
			return httpServletRequest.getHeader("X-Forwarded-Protocol");
		} else {
			return httpServletRequest.getScheme();
		}
	}

	public String queryString(List<String> excludesParams) throws UnsupportedEncodingException {
		HttpServletRequest httpServletRequest = httpServletRequest();
		List<String> queryString = new ArrayList<>();
		Enumeration<String> en = httpServletRequest.getParameterNames();
		while (en.hasMoreElements()) {
			String paramName = en.nextElement();
			if (!excludesParams.contains(paramName))
				queryString
						.add(paramName + "=" + URLEncoder.encode(httpServletRequest.getParameter(paramName), "UTF-8"));
		}
		return StringUtils.join(queryString, '&');
	}

	public void appendJsCode(String jsCode) {
		ViewJsAppender jsAppender = findAncestorWithClass(ViewJsAppender.class);
		jsAppender.appendJavascriptCode(jsCode);
		CloneableJsAppender cloneableJsAppender = findAncestorWithClass(CloneableJsAppender.class);
		if (cloneableJsAppender != null && cloneableJsAppender.index() == 0) {
			cloneableJsAppender.appendJavascriptCode(jsCode);
		}
	}

	public String attachTo(String attachToSelector, String attachTo) {
		if (StringUtils.isEmpty(attachToSelector)) {
			return "#" + idForName(attachTo);
		}
		return attachToSelector;
	}

	public Boolean getRendered() {
		return rendered;
	}

	public void setRendered(Boolean rendered) {
		this.rendered = rendered;
	}

	public String getCssClass() {
		return cssClass;
	}

	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
