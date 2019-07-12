
package com.jslsolucoes.tagria.lib.tag.html;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.commons.lang.StringUtils;

import com.jslsolucoes.tagria.lib.html.Attribute;
import com.jslsolucoes.tagria.lib.html.Div;
import com.jslsolucoes.tagria.lib.html.Form;
import com.jslsolucoes.tagria.lib.html.H2;
import com.jslsolucoes.tagria.lib.html.Script;
import com.jslsolucoes.tagria.lib.tag.Toolballer;
import com.jslsolucoes.tagria.lib.util.TagUtil;

public class FormTag extends SimpleTagSupport implements Toolballer {

	private String method = "post";
	private String action = "#";
	private String name;
	private String validation;
	private String label;
	private String toolbar;
	private Boolean rendered = Boolean.TRUE;
	private Boolean multipart = Boolean.FALSE;
	private Boolean inline = Boolean.FALSE;
	private Boolean border = Boolean.TRUE;
	private String target = "_self";
	private String cssClass;
	private String id;
	private String beforeSubmit;

	@Override
	public void doTag() throws JspException, IOException {
		if (rendered != null && rendered) {
			
			Div container = new Div();
			if(border) {
			    container.add(Attribute.CLASS,"p-3 border border-secondary rounded shadow-sm");
			}
	
			Form form = new Form();
			form.add(Attribute.NOVALIDATE, "novalidate");
			if (!StringUtils.isEmpty(name)) {
				form.add(Attribute.NAME, name);
			}
			form.add(Attribute.ID, TagUtil.getId(name, id, this));
			
			if(inline) {
			    form.add(Attribute.CLASS, "form-inline");
			}
			
			if (!StringUtils.isEmpty(cssClass)) {
			    form.add(Attribute.CLASS, cssClass);
			}
			
			form.add(Attribute.TARGET, target);
			form.add(Attribute.METHOD, method);
			form.add(Attribute.ACTION, TagUtil.getPathForUrl(getJspContext(), action));
			if (multipart) {
				form.add(Attribute.ENCTYPE, "multipart/form-data");
			}
			
			if (!StringUtils.isEmpty(label)) {
				Div title = new Div();
				title.add(Attribute.CLASS, "text-center");
				H2 h2 = new H2();
				h2.add(Attribute.CLASS, "text-secondary");
				h2.add(TagUtil.getLocalized(getLabel(), getJspContext()));
				title.add(h2);
				form.add(title);
			}
			
			Div errors = new Div();
			errors.add(Attribute.CLASS, "collapse form-error");
			errors.add("&nbsp;");
			
			form.add(errors);
			form.add(TagUtil.getBody(getJspBody()));
			if(toolbar != null) {
				form.add(toolbar);
			}
			
			container.add(form);

			TagUtil.out(getJspContext(), container);

			Script script = new Script();
			
			script.add("$('#" + form.get(Attribute.ID) + "')"
					+ "		.form({ 																														" 
					+ "				validation : '" + (!StringUtils.isEmpty(validation) ? TagUtil.getPathForUrl(getJspContext(), validation) : "")+ "',	" 
					+ "   				invalid : { " 
					+ "					email : '"+ TagUtil.getLocalizedForLib("form.email.invalid", getJspContext()) 	+ "',								" 
					+ "					max : '" + TagUtil.getLocalizedForLib("form.max.invalid", getJspContext()) 		+ "',								" 
					+ "					min : '" + TagUtil.getLocalizedForLib("form.min.invalid", getJspContext()) 		+ "'								" 
					+ "				},																													"
					+ "				beforeSubmit: function() { 												" 
					+ 					(StringUtils.isEmpty(beforeSubmit) ? "return true;" : "return " + beforeSubmit + "();") 
					+ " 				}														"
					+ "		});																																");

			TagUtil.out(getJspContext(), script);
		}
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getValidation() {
		return validation;
	}

	public void setValidation(String validation) {
		this.validation = validation;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	@Override
	public void setToolbar(String html) {
		this.toolbar = html;
	}

	public Boolean getRendered() {
		return rendered;
	}

	public void setRendered(Boolean rendered) {
		this.rendered = rendered;
	}

	public Boolean getMultipart() {
		return multipart;
	}

	public void setMultipart(Boolean multipart) {
		this.multipart = multipart;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public Boolean getInline() {
	    return inline;
	}

	public void setInline(Boolean inline) {
	    this.inline = inline;
	}

	public Boolean getBorder() {
	    return border;
	}

	public void setBorder(Boolean border) {
	    this.border = border;
	}

	public String getCssClass() {
	    return cssClass;
	}

	public void setCssClass(String cssClass) {
	    this.cssClass = cssClass;
	}

	public String getId() {
	    return id;
	}

	public void setId(String id) {
	    this.id = id;
	}

	public String getBeforeSubmit() {
	    return beforeSubmit;
	}

	public void setBeforeSubmit(String beforeSubmit) {
	    this.beforeSubmit = beforeSubmit;
	}
}
