
package com.jslsolucoes.tagria.html;

public class CData extends AbstractElement {

	private String value;

	public CData(String value) {
		this.value = value;
	}

	@Override
	public String tag() {
		return "";
	}

	@Override
	public String html() {
		return value;
	}
	
}
