
package com.jslsolucoes.tagria.tag.ajax.v4.tag;

import org.apache.commons.lang3.StringUtils;

import com.jslsolucoes.tagria.tag.ajax.v4.FunctionParameter;
import com.jslsolucoes.tagria.tag.base.v4.tag.AbstractSimpleTagSupport;

public class ParameterTag extends AbstractSimpleTagSupport {

    private String src;
    private String type;
    private String name;
    private String value;
    private Boolean required = Boolean.TRUE;

    @Override
    public void renderOnVoid() {
	findAncestorWithClass(FunctionTag.class)
		.addFunctionParameter(new FunctionParameter(name, required, valueForParameter()));
    }

    private String valueForParameter() {
	if (!StringUtils.isEmpty(value)) {
	    return "'" + value + "'";
	} else {
	    return "$('#" + idForName(src) + "')" + "." + type + "()";
	}
    }

    public String getSrc() {
	return src;
    }

    public void setSrc(String src) {
	this.src = src;
    }

    public String getType() {
	return type;
    }

    public void setType(String type) {
	this.type = type;
    }

    public String getName() {
	return name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public Boolean getRequired() {
	return required;
    }

    public void setRequired(Boolean required) {
	this.required = required;
    }

    public String getValue() {
	return value;
    }

    public void setValue(String value) {
	this.value = value;
    }

}
