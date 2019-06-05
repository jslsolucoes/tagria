
package com.jslsolucoes.tagria.tag.html;

import com.jslsolucoes.tagria.html.Attribute;
import com.jslsolucoes.tagria.html.Element;
import com.jslsolucoes.tagria.html.ElementCreator;
import com.jslsolucoes.tagria.tag.base.AbstractSimpleTagSupport;

public class MenuBrandTag extends AbstractSimpleTagSupport {

	private String url;
	private String label;
	private String labelKey;

	@Override
	public Element render() {
		return a();
	}

	private Element a() {
		Element a = ElementCreator.newA().attribute(Attribute.CLASS, "navbar-brand").attribute(Attribute.HREF,
				pathForUrl(url));
		if (hasKeyOrLabel(labelKey, label)) {
			a.add(keyOrLabel(labelKey, label));
		} else {
			a.add(bodyContent());
		}
		return a;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getLabelKey() {
		return labelKey;
	}

	public void setLabelKey(String labelKey) {
		this.labelKey = labelKey;
	}
}
