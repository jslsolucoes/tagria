
package com.jslsolucoes.tagria.lib.tag.html;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.commons.collections.CollectionUtils;

import com.jslsolucoes.tagria.lib.html.Attribute;
import com.jslsolucoes.tagria.lib.html.Option;
import com.jslsolucoes.tagria.lib.util.TagUtil;

public class OptionTag extends SimpleTagSupport {

	private String value;

	@Override
	public void doTag() throws JspException, IOException {
		Option option = new Option();
		option.add(Attribute.VALUE, value);
		option.add(TagUtil.getBody(getJspBody()));
		checkForSelected(option);
		TagUtil.out(getJspContext(), option);
	}

	private void checkForSelected(Option option) {
		SelectTag select = (SelectTag) findAncestorWithClass(this, SelectTag.class);
		if(select != null) {
			if (value.equals(select.getValue()) || (select.getRequired() && !CollectionUtils.isEmpty(select.getData())
					&& select.getData().size() == 1)) {
				option.add(Attribute.SELECTED, "selected");
			}
		}
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
