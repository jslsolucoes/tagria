package com.jslsolucoes.tagria.tag.ajax.v4.tag;

import com.jslsolucoes.tagria.tag.base.v4.tag.AbstractSimpleTagSupport;

public class OnDoneTag extends AbstractSimpleTagSupport {

    @Override
    public void renderOnVoid() {
	findAncestorWithClass(FunctionTag.class).setOnDone(bodyContent());
    }

}
