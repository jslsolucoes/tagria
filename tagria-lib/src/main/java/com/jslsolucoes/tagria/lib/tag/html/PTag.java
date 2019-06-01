
package com.jslsolucoes.tagria.lib.tag.html;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.jslsolucoes.tagria.lib.html.P;
import com.jslsolucoes.tagria.lib.util.TagUtil;

public class PTag extends SimpleTagSupport {

	private Boolean rendered = Boolean.TRUE;

	@Override
	public void doTag() throws JspException, IOException {
		if (rendered != null && rendered) {
			P p = new P();
			p.add(TagUtil.getBody(getJspBody()));
			TagUtil.out(getJspContext(), p);
		}
	}

	public Boolean getRendered() {
		return rendered;
	}

	public void setRendered(Boolean rendered) {
		this.rendered = rendered;
	}

}
