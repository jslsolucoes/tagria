package com.jslsolucoes.tagria.tag.html.v4.tag.tab;

import com.jslsolucoes.tagria.html.v4.Attribute;
import com.jslsolucoes.tagria.html.v4.Element;
import com.jslsolucoes.tagria.html.v4.ElementCreator;
import com.jslsolucoes.tagria.tag.base.v4.tag.AbstractSimpleTagSupport;

public class TabsTabTag extends AbstractSimpleTagSupport {

    private String label;
    private String labelKey;
    private Boolean active = Boolean.FALSE;
    private Boolean reloadOnSelect = Boolean.TRUE;

    @Override
    public Element render() {
	return li();
    }

    private Element link() {
	Element a = ElementCreator.newA().attribute(Attribute.CLASS, "nav-link")
		.attribute(Attribute.HREF, "#" + idForId(id)).attribute(Attribute.DATA_TOGGLE, "tab")
		.add(keyOrLabel(labelKey, label));
	if (active) {
	    a.attribute(Attribute.CLASS, "active");
	}
	return a;
    }

    private Element li() {
	Element li = applyDynamicAttributesOn(ElementCreator.newLi()).add(link()).attribute(Attribute.ID,
		"t-" + idForId(id));
	if (reloadOnSelect) {
	    li.attribute(Attribute.CLASS, "tab-reload-on-select nav-item");
	}
	if (active) {
	    li.attribute(Attribute.CLASS, "active");
	}
	return li;
    }

    public String getLabel() {
	return label;
    }

    public void setLabel(String label) {
	this.label = label;
    }

    public String getLabelKey() {
	return labelKey;
    }

    public void setLabelKey(String labelKey) {
	this.labelKey = labelKey;
    }

    public Boolean getActive() {
	return active;
    }

    public void setActive(Boolean active) {
	this.active = active;
    }

    public Boolean getReloadOnSelect() {
	return reloadOnSelect;
    }

    public void setReloadOnSelect(Boolean reloadOnSelect) {
	this.reloadOnSelect = reloadOnSelect;
    }

}
