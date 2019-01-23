
package com.jslsolucoes.tagria.lib.tag.html;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.jslsolucoes.tagria.lib.html.Attribute;
import com.jslsolucoes.tagria.lib.html.Div;
import com.jslsolucoes.tagria.lib.util.TagUtil;

public class CardTag extends SimpleTagSupport {

	private String state = "default";
	private String id;
	private Boolean rendered = Boolean.TRUE;
	private Boolean visible = Boolean.TRUE;

	@Override
	public void doTag() throws JspException, IOException {
		if (rendered != null && rendered) {
			Div div = new Div();
			div.add(Attribute.ID, TagUtil.getId(id));
			div.add(Attribute.CLASS, "card bg-" + state);
			div.add(TagUtil.getBody(getJspBody()));
			if (!visible) {
				div.add(Attribute.CLASS, "d-none");
			}
			TagUtil.out(getJspContext(), div);
		}
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Boolean getRendered() {
		return rendered;
	}

	public void setRendered(Boolean rendered) {
		this.rendered = rendered;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Boolean getVisible() {
		return visible;
	}

	public void setVisible(Boolean visible) {
		this.visible = visible;
	}
}