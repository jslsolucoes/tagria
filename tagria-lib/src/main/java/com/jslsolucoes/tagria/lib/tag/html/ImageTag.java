
package com.jslsolucoes.tagria.lib.tag.html;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.commons.lang.StringUtils;

import com.jslsolucoes.tagria.html.HtmlAttribute;
import com.jslsolucoes.tagria.html.Img;
import com.jslsolucoes.tagria.lib.util.TagUtil;

public class ImageTag extends SimpleTagSupport {

	private String alt;
	private String shape;
	private Integer height;
	private String url;
	private Integer width;
	private String cssClass;
	private Boolean cdn = true;
	private Boolean responsive = true;

	@Override
	public void doTag() throws JspException, IOException {

		Img img = new Img();
		if (responsive) {
			img.attribute(HtmlAttribute.CLASS, "img-responsive");
		}
		if (!StringUtils.isEmpty(shape)) {
			img.attribute(HtmlAttribute.CLASS, "img-" + shape);
		}
		if (!StringUtils.isEmpty(cssClass)) {
			img.attribute(HtmlAttribute.CLASS, cssClass);
		}
		img.attribute(HtmlAttribute.SRC, TagUtil.getPathForStatic(getJspContext(), url, cdn));
		img.attribute(HtmlAttribute.ALT, TagUtil.getLocalized(alt, getJspContext()));
		if (width != null) {
			img.attribute(HtmlAttribute.WIDTH, width);
		}
		if (height != null) {
			img.attribute(HtmlAttribute.HEIGHT, height);
		}
		TagUtil.out(getJspContext(), img);
	}

	public String getAlt() {
		return alt;
	}

	public void setAlt(String alt) {
		this.alt = alt;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public Integer getWidth() {
		return width;
	}

	public void setWidth(Integer width) {
		this.width = width;
	}

	public Boolean getCdn() {
		return cdn;
	}

	public void setCdn(Boolean cdn) {
		this.cdn = cdn;
	}

	public String getShape() {
		return shape;
	}

	public void setShape(String shape) {
		this.shape = shape;
	}

	public String getCssClass() {
		return cssClass;
	}

	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}

	public Boolean getResponsive() {
		return responsive;
	}

	public void setResponsive(Boolean responsive) {
		this.responsive = responsive;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
