
package com.jslsolucoes.tagria.lib.tag.html;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.jslsolucoes.tagria.html.Div;
import com.jslsolucoes.tagria.html.HtmlAttribute;
import com.jslsolucoes.tagria.lib.util.TagUtil;

public class CardFooterTag extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {
		Div div = new Div();
		div.attribute(HtmlAttribute.CLASS, "card-footer");
		div.add(TagUtil.getBody(getJspBody()));
		TagUtil.out(getJspContext(), div);
	}

}
