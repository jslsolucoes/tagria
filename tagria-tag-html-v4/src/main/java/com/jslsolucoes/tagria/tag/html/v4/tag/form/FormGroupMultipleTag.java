
package com.jslsolucoes.tagria.tag.html.v4.tag.form;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;

import com.jslsolucoes.tagria.html.v4.Attribute;
import com.jslsolucoes.tagria.html.v4.Element;
import com.jslsolucoes.tagria.html.v4.ElementCreator;
import com.jslsolucoes.tagria.tag.base.v4.CloneableJsAppender;
import com.jslsolucoes.tagria.tag.base.v4.tag.AbstractIterableSimpleTagSupport;

public class FormGroupMultipleTag extends AbstractIterableSimpleTagSupport implements CloneableJsAppender {

    private String label;
    private String labelKey;
    private Integer atLeast = 0;
    private Boolean empty = Boolean.FALSE;
    private Boolean indexed = Boolean.TRUE;
    private String onAfterInsert;
    private String onAfterRemove;
    private List<String> jsScripts = new ArrayList<>();

    @Override
    public Element render() {
	return div();
    }

    private Element div() {
	String id = id();
	Element div = ElementCreator.newDiv().attribute(Attribute.ID, id)
		.attribute(Attribute.CLASS, "form-group p-2   bg-white fg-container").add(divToolbar())
		.add(divContent()).add(textAreaHtml()).add(textAreaScript());
	appendJsCode("$('#" + id + "').formGroupMultiple({indexed:" + indexed + ",atLeast:" + atLeast + ",empty:" + empty
		+ ",afterInsert:function(idx,element){" + (!StringUtils.isEmpty(onAfterInsert) ? onAfterInsert : "")
		+ " },afterRemove:function(){" + (!StringUtils.isEmpty(onAfterRemove) ? onAfterRemove : "") + "}});");
	return div;
    }

    private Element divContent() {
	Element content = ElementCreator.newDiv().attribute(Attribute.CLASS, "fg-content");
	iterateOver(object-> {
	    content.add(divFormGroup(bodyContent()));
	},() -> {
	    for (int i = 0; i < (atLeast > 0 ? atLeast : 1); i++) {
		content.add(divFormGroup(bodyContent()));
	    }
	});
	return content;
    }

    private Element divToolbar() {
	Element toolbar = ElementCreator.newDiv().attribute(Attribute.CLASS, "p-2 d-flex align-items-center")
		.add(divButtonGroupToolbar());
	if (hasKeyOrLabel(labelKey, label)) {
	    toolbar.add(divTitle());
	}
	return toolbar;
    }

    private Element divTitle() {
	return ElementCreator.newDiv().attribute(Attribute.CLASS, "text-center flex-grow-1").add(h4());
    }

    private Element h4() {
	return ElementCreator.newH4().attribute(Attribute.CLASS, "text-secondary").add(keyOrLabel(labelKey, label));
    }

    private Element divButtonGroupToolbar() {
	return ElementCreator.newDiv().add(buttonPlus());
    }

    private Element buttonPlus() {
	return ElementCreator.newA().attribute(Attribute.HREF, javascriptForVoid())
		.attribute(Attribute.ARIA_LABEL, keyForLibrary("form.group.plus"))
		.attribute(Attribute.TITLE, keyForLibrary("form.group.plus"))
		.attribute(Attribute.CLASS, "btn btn-outline-primary fg-plus").add(spanPlus());
    }

    private Element spanPlus() {
	return ElementCreator.newSpan().attribute(Attribute.CLASS, "fas fa-plus");
    }

    private Element textAreaHtml() {
	return ElementCreator.newTextArea().attribute(Attribute.CLASS, "d-none fg-template");
    }

    private Element textAreaScript() {
	return ElementCreator.newTextArea().attribute(Attribute.CLASS, "d-none fg-template-script")
		.add(scriptTemplate());
    }

    private Element scriptTemplate() {
	return ElementCreator.newScript().add(jsScripts.stream().collect(Collectors.joining()));
    }

    private Element divFormGroup(String bodyContent) {
	return divRow(bodyContent);
    }

    private Element divCol1(String bodyContent) {
	return ElementCreator.newDiv().attribute(Attribute.CLASS, "col col-11")
		.add(ElementCreator.newDiv().add(bodyContent));
    }

    private Element divCol2() {
	return ElementCreator.newDiv().attribute(Attribute.CLASS, "col col-1 my-auto text-center").add(buttonRemove());
    }

    private Element divRow(String bodyContent) {
	return ElementCreator.newDiv().attribute(Attribute.CLASS, "row fg-row my-2 p-2 border ")
		.add(divCol1(bodyContent)).add(divCol2());
    }

    private Element buttonRemove() {
	return ElementCreator.newA().attribute(Attribute.HREF, javascriptForVoid()).attribute(Attribute.ID, id())
		.attribute(Attribute.ARIA_LABEL, keyForLibrary("form.group.minus"))
		.attribute(Attribute.TITLE, keyForLibrary("form.group.minus"))
		.attribute(Attribute.CLASS, "btn btn-outline-danger fg-minus ").add(spanTrash());
    }

    private Element spanTrash() {
	return ElementCreator.newSpan().attribute(Attribute.CLASS, "fas fa-trash");
    }

    public String getLabel() {
	return label;
    }

    public void setLabel(String label) {
	this.label = label;
    }

    public Integer getAtLeast() {
	return atLeast;
    }

    public void setAtLeast(Integer atLeast) {
	this.atLeast = atLeast;
    }

    public Boolean getEmpty() {
	return empty;
    }

    public void setEmpty(Boolean empty) {
	this.empty = empty;
    }

    public String getLabelKey() {
	return labelKey;
    }

    public void setLabelKey(String labelKey) {
	this.labelKey = labelKey;
    }

    @Override
    public void appendJavascriptCode(String jsCode) {
	this.jsScripts.add(jsCode);
    }

    @Override
    public Integer index() {
	return getVarStatusObject().getIndex();
    }

    public String getOnAfterInsert() {
	return onAfterInsert;
    }

    public void setOnAfterInsert(String onAfterInsert) {
	this.onAfterInsert = onAfterInsert;
    }

    public String getOnAfterRemove() {
	return onAfterRemove;
    }

    public void setOnAfterRemove(String onAfterRemove) {
	this.onAfterRemove = onAfterRemove;
    }

    public Boolean getIndexed() {
	return indexed;
    }

    public void setIndexed(Boolean indexed) {
	this.indexed = indexed;
    }

}
