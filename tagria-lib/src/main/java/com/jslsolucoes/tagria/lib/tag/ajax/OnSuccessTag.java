
package com.jslsolucoes.tagria.lib.tag.ajax;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.jslsolucoes.tagria.lib.util.TagUtil;

public class OnSuccessTag extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {
		FunctionTag functionTag = (FunctionTag) findAncestorWithClass(this, FunctionTag.class);
		functionTag.setOnSuccess(TagUtil.getBody(getJspBody()));
	}

}
