
package com.jslsolucoes.tagria.tag.html.tag.grid;

import java.util.Arrays;
import java.util.Collection;

import org.apache.commons.collections4.CollectionUtils;

import com.jslsolucoes.tagria.html.Attribute;
import com.jslsolucoes.tagria.html.Div;
import com.jslsolucoes.tagria.html.Element;
import com.jslsolucoes.tagria.html.ElementCreator;
import com.jslsolucoes.tagria.html.H2;
import com.jslsolucoes.tagria.tag.base.tag.AbstractSimpleTagSupport;

public class GridTag extends AbstractSimpleTagSupport {

	private String var;
	private String varStatus;
	private String label;
	private String labelKey;
	private Collection<Object> data;
	private String url = "#";
	private String noRowText;
	private String noRowTextKey;
	private Element paginate;
	private Element export;
	private Element search;
	private Element toolbar;

	@Override
	public Boolean flush() {
		return true;
	}

	@Override
	public Element render() {

		Div container = new Div();
		container.attribute(Attribute.CLASS, "border border-secondary rounded p-2");
		container.attribute(Attribute.ID, id());

		if (hasKeyOrLabel(labelKey, label)) {
			Div title = new Div();
			title.attribute(Attribute.CLASS, "text-center mb-3");
			H2 h2 = new H2();
			h2.attribute(Attribute.CLASS, "text-secondary");
			h2.add(keyOrLabel(labelKey, label));
			title.add(h2);
			container.add(title);
		}
		
		Element clearfix = ElementCreator.newDiv().attribute(Attribute.CLASS, "clearfix");
		
		if (toolbar != null) {
			clearfix.add(toolbar);
		}

		if (!CollectionUtils.isEmpty(data)) {
			if (export != null) {
				clearfix.add(export);
			}
			if (search != null) {
				clearfix.add(search);
			}
			container.add(clearfix);
			container.add(divTable());
			if (paginate != null) {
				container.add(paginate);
			}
		} else {
			container.add(divNoRow());
		}

		appendJsCode(
				"$('#" + container.attribute(Attribute.ID) + "').grid({ url : '" + pathForUrl(url) + "',queryString:'"
						+ queryString(Arrays.asList("page", "property", "direction", "resultsPerPage")) + "'});");
		return container;
	}
	
	private Element divTable() {
		return ElementCreator.newDiv().add(table());
	}
	
	private Element table() {
		return ElementCreator.newTable()
		.attribute(Attribute.CLASS, "table table-striped table-hover table-light").add(bodyContent());
	}
	
	private Element divNoRow() {
		return ElementCreator.newDiv()
		.attribute(Attribute.CLASS, "alert alert-info")
		.attribute(Attribute.ROLE, "alert")
		.add((hasKeyOrLabel(noRowTextKey, noRowText) ? keyOrLabel(noRowTextKey, noRowText)
				: keyForLibrary("grid.no.row")));
	}

	public Collection<Object> getData() {
		return data;
	}

	public void setData(Collection<Object> data) {
		this.data = data;
	}

	public String getVar() {
		return var;
	}

	public void setVar(String var) {
		this.var = var;
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

	public String getVarStatus() {
		return varStatus;
	}

	public void setVarStatus(String varStatus) {
		this.varStatus = varStatus;
	}

	public String getNoRowText() {
		return noRowText;
	}

	public void setNoRowText(String noRowText) {
		this.noRowText = noRowText;
	}

	public String getLabelKey() {
		return labelKey;
	}

	public void setLabelKey(String labelKey) {
		this.labelKey = labelKey;
	}

	public String getNoRowTextKey() {
		return noRowTextKey;
	}

	public void setNoRowTextKey(String noRowTextKey) {
		this.noRowTextKey = noRowTextKey;
	}

	public Element getPaginate() {
		return paginate;
	}

	public void setPaginate(Element paginate) {
		this.paginate = paginate;
	}


	public Element getSearch() {
		return search;
	}

	public void setSearch(Element search) {
		this.search = search;
	}

	public Element getExport() {
		return export;
	}

	public void setExport(Element export) {
		this.export = export;
	}

	public Element getToolbar() {
		return toolbar;
	}

	public void setToolbar(Element toolbar) {
		this.toolbar = toolbar;
	}

}
