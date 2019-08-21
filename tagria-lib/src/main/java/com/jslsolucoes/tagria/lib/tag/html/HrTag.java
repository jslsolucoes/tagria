
package com.jslsolucoes.tagria.lib.tag.html;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.commons.lang.StringUtils;

import com.jslsolucoes.tagria.lib.html.Attribute;
import com.jslsolucoes.tagria.lib.html.Hr;
import com.jslsolucoes.tagria.lib.util.TagUtil;

public class HrTag extends SimpleTagSupport {
	
	private String cssClass;

	@Override
	public void doTag() throws JspException, IOException {
		Hr hr = new Hr();
		if (!StringUtils.isEmpty(cssClass)) {
			hr.add(Attribute.CLASS, cssClass);
		}
		TagUtil.out(getJspContext(),hr);
	}
	
	public String getCssClass() {
		return cssClass;
	}

	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}
}
