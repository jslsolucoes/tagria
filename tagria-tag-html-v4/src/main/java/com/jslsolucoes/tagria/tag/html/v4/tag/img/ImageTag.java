
package com.jslsolucoes.tagria.tag.html.v4.tag.img;

import org.apache.commons.lang3.StringUtils;

import com.jslsolucoes.tagria.html.v4.Attribute;
import com.jslsolucoes.tagria.html.v4.Element;
import com.jslsolucoes.tagria.html.v4.ElementCreator;
import com.jslsolucoes.tagria.tag.base.v4.tag.AbstractSimpleTagSupport;

public class ImageTag extends AbstractSimpleTagSupport {

    private String alt;
    private String altKey;
    private String shape;
    private Integer height;
    private String url;
    private Integer width;
    private String cssClass;
    private Boolean cdn = true;
    private Boolean responsive = true;
    private Boolean lazy = true;

    @Override
    public Element render() {

	return img();
    }

    private Element img() {
	Element img = ElementCreator.newImg()
		.attribute((lazy ? Attribute.DATA_SRC : Attribute.SRC), pathForStatic(url, cdn))
		.attribute(Attribute.CLASS, (lazy ? "lazyload" : "")).attribute(Attribute.ALT, keyOrLabel(altKey, alt));
	if (responsive) {
	    img.attribute(Attribute.CLASS, "img-responsive");
	}
	if (!StringUtils.isEmpty(shape)) {
	    img.attribute(Attribute.CLASS, "img-" + shape);
	}
	if (!StringUtils.isEmpty(cssClass)) {
	    img.attribute(Attribute.CLASS, cssClass);
	}
	if (width != null) {
	    img.attribute(Attribute.WIDTH, width);
	}
	if (height != null) {
	    img.attribute(Attribute.HEIGHT, height);
	}
	return img;
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

    public String getAltKey() {
	return altKey;
    }

    public void setAltKey(String altKey) {
	this.altKey = altKey;
    }

    public Boolean getLazy() {
	return lazy;
    }

    public void setLazy(Boolean lazy) {
	this.lazy = lazy;
    }
}
