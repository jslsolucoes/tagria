package com.jslsolucoes.tagria.tag.html;

import com.jslsolucoes.tagria.lib.util.TagUtil;
import com.jslsolucoes.tagria.tag.base.AbstractSimpleTagSupport;

public class CurrencyMaskTag extends AbstractSimpleTagSupport {

	private String attachTo;
	private String attachToSelector;

	@Override
	public void render() {

		TagUtil.appendJs("$('" + TagUtil.attachTo(attachToSelector, attachTo, this)
				+ "').priceFormat({prefix:'',centsSeparator:',',thousandsSeparator:'.',centsLimit:2});", this);

	}

	public String getAttachTo() {
		return attachTo;
	}

	public void setAttachTo(String attachTo) {
		this.attachTo = attachTo;
	}

	public String getAttachToSelector() {
		return attachToSelector;
	}

	public void setAttachToSelector(String attachToSelector) {
		this.attachToSelector = attachToSelector;
	}

}