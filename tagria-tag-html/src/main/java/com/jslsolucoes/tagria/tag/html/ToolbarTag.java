
package com.jslsolucoes.tagria.tag.html;

import com.jslsolucoes.tagria.tag.base.AbstractSimpleTagSupport;

public class ToolbarTag extends AbstractSimpleTagSupport {

	@Override
	public void renderOnVoid() {
		findAncestorWithClass(Toolbar.class).bodyContent(bodyContent());
	}
}
