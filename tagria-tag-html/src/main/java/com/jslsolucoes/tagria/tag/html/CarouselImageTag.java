
package com.jslsolucoes.tagria.tag.html;

import com.jslsolucoes.tagria.html.Attribute;
import com.jslsolucoes.tagria.html.Element;
import com.jslsolucoes.tagria.html.ElementCreator;
import com.jslsolucoes.tagria.tag.base.AbstractSimpleTagSupport;

public class CarouselImageTag extends AbstractSimpleTagSupport {

	private String alt;
	private String altKey;
	private String url;
	private Boolean cdn = true;
	private Integer height;
	private Integer width;

	@Override
	public void render() {
		Element carouselImg = carouselImg();
		if (width != null) {
			carouselImg.attribute(Attribute.WIDTH, width);
		}
		if (height != null) {
			carouselImg.attribute(Attribute.HEIGHT, height);
		}
		out(carouselImg);
	}

	private Element carouselImg() {
		return ElementCreator.newImg().attribute(Attribute.CLASS, "d-block w-100")
				.attribute(Attribute.SRC, pathForStatic(url, cdn)).attribute(Attribute.ALT, keyOrLabel(altKey, alt));
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

	public String getAlt() {
		return alt;
	}

	public void setAlt(String alt) {
		this.alt = alt;
	}

	public Boolean getCdn() {
		return cdn;
	}

	public void setCdn(Boolean cdn) {
		this.cdn = cdn;
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
}
