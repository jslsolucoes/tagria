package com.jslsolucoes.tagria.tag.html;

import com.jslsolucoes.tagria.html.Element;
import com.jslsolucoes.tagria.html.ElementCreator;
import com.jslsolucoes.tagria.tag.base.AbstractSimpleTagSupport;

public class H1Tag extends AbstractSimpleTagSupport {

	@Override
	public void render() {
		out(h1());
	}

	private Element h1() {
		return ElementCreator.newH1().add(bodyContent());
	}

}