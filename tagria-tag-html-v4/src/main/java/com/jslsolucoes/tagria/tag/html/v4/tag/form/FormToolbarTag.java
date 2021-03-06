
package com.jslsolucoes.tagria.tag.html.v4.tag.form;

import com.jslsolucoes.tagria.html.v4.Element;
import com.jslsolucoes.tagria.html.v4.ElementCreator;
import com.jslsolucoes.tagria.tag.base.v4.tag.AbstractSimpleTagSupport;

public class FormToolbarTag extends AbstractSimpleTagSupport {

    @Override
    public void renderOnVoid() {
	findAncestorWithClass(FormTag.class).setToolbar(div());
    }

    private Element div() {
	return ElementCreator.newDiv().add(bodyContent());
    }
}
