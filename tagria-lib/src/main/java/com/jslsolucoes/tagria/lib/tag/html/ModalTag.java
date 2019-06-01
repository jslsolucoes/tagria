
package com.jslsolucoes.tagria.lib.tag.html;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.commons.lang.StringUtils;

import com.jslsolucoes.tagria.html.Button;
import com.jslsolucoes.tagria.html.Div;
import com.jslsolucoes.tagria.html.H4;
import com.jslsolucoes.tagria.html.HtmlAttribute;
import com.jslsolucoes.tagria.html.Span;
import com.jslsolucoes.tagria.lib.tag.Toolballer;
import com.jslsolucoes.tagria.lib.util.TagUtil;

public class ModalTag extends SimpleTagSupport implements Toolballer {

	private String id;
	private String label;
	private String attachTo;
	private String attachToSelector;
	private Boolean closeable = Boolean.TRUE;
	private Boolean centered = Boolean.FALSE;
	private Boolean open = Boolean.FALSE;
	private Boolean rendered = Boolean.TRUE;
	private String toolbar;
	private String size;

	@Override
	public void doTag() throws JspException, IOException {
		if (rendered != null && rendered) {
			Div modal = new Div();
			modal.attribute(HtmlAttribute.CLASS, "modal fade");
			modal.attribute(HtmlAttribute.ID, TagUtil.getId(id, this));

			if (!closeable) {
				modal.attribute(HtmlAttribute.DATA_KEYBOARD, "false");
				modal.attribute(HtmlAttribute.DATA_BACKDROP, "static");
			}

			Div dialog = new Div();
			dialog.attribute(HtmlAttribute.CLASS, "modal-dialog");
			if (!StringUtils.isEmpty(size)) {
				dialog.attribute(HtmlAttribute.CLASS, "modal-" + size);
			}
			if (centered) {
				dialog.attribute(HtmlAttribute.CLASS, "modal-dialog-centered");
			}

			Div content = new Div();
			content.attribute(HtmlAttribute.CLASS, "modal-content");

			Div header = new Div();
			header.attribute(HtmlAttribute.CLASS, "modal-header");

			H4 h4 = new H4();
			h4.attribute(HtmlAttribute.CLASS, "modal-title");
			h4.add(TagUtil.getLocalized(label, getJspContext()));
			header.add(h4);

			if (closeable) {
				Button close = new Button();
				close.attribute(HtmlAttribute.CLASS, "close");
				close.attribute(HtmlAttribute.DATA_DISMISS, "modal");
				close.add(new Span().add("&times;"));
				header.add(close);
			}

			content.add(header);

			Div body = new Div();
			body.attribute(HtmlAttribute.CLASS, "modal-body");
			body.add(TagUtil.getBody(getJspBody()));
			content.add(body);

			if (!StringUtils.isEmpty(toolbar)) {
				Div footer = new Div();
				footer.attribute(HtmlAttribute.CLASS, "modal-footer");
				footer.add(toolbar);
				content.add(footer);
			}

			dialog.add(content);
			modal.add(dialog);
			TagUtil.out(getJspContext(), modal);

			TagUtil.appendJs(
					"$('" + TagUtil.attachTo(attachToSelector, attachTo, this)
							+ "').attr('data-toggle','modal').attr('data-target','#" + modal.attribute(HtmlAttribute.ID) + "');",
					this);

			if (open != null && open) {
				TagUtil.appendJs("$('#" + modal.attribute(HtmlAttribute.ID) + "').modal('show')", this);

			}
		}
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getAttachTo() {
		return attachTo;
	}

	public void setAttachTo(String attachTo) {
		this.attachTo = attachTo;
	}

	@Override
	public void setToolbar(String html) {
		this.toolbar = html;
	}

	public Boolean getCloseable() {
		return closeable;
	}

	public void setCloseable(Boolean closeable) {
		this.closeable = closeable;
	}

	public Boolean getOpen() {
		return open;
	}

	public void setOpen(Boolean open) {
		this.open = open;
	}

	public Boolean getRendered() {
		return rendered;
	}

	public void setRendered(Boolean rendered) {
		this.rendered = rendered;
	}

	public String getAttachToSelector() {
		return attachToSelector;
	}

	public void setAttachToSelector(String attachToSelector) {
		this.attachToSelector = attachToSelector;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public Boolean getCentered() {
		return centered;
	}

	public void setCentered(Boolean centered) {
		this.centered = centered;
	}

}