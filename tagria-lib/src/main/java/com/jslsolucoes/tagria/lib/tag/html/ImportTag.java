
package com.jslsolucoes.tagria.lib.tag.html;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.jslsolucoes.tagria.html.HtmlAttribute;
import com.jslsolucoes.tagria.html.Link;
import com.jslsolucoes.tagria.html.Script;
import com.jslsolucoes.tagria.lib.util.TagUtil;

public class ImportTag extends SimpleTagSupport {

	private String type;
	private String url;

	@Override
	public void doTag() throws JspException, IOException {

		if ("css".equals(type)) {
			Link link = new Link();
			link.attribute(HtmlAttribute.REL, "stylesheet");
			link.attribute(HtmlAttribute.TYPE, "text/css");
			link.attribute(HtmlAttribute.HREF, TagUtil.getPathForStatic(getJspContext(), url));
			TagUtil.out(getJspContext(), link);
		} else if ("js".equals(type)) {
			Script script = new Script();
			script.attribute(HtmlAttribute.SRC, TagUtil.getPathForStatic(getJspContext(), url));
			TagUtil.out(getJspContext(), script);
		}
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
