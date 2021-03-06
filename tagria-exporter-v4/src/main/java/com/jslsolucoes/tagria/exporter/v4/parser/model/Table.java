
package com.jslsolucoes.tagria.exporter.v4.parser.model;

import java.util.List;

public class Table {
    
    private String id;
    private String title;
    private List<Header> headers;
    private List<Row> rows;

    public String getTitle() {
	return title;
    }

    public void setTitle(String title) {
	this.title = title;
    }

    public List<Header> getHeaders() {
	return headers;
    }

    public void setHeaders(List<Header> headers) {
	this.headers = headers;
    }

    public List<Row> getRows() {
	return rows;
    }

    public void setRows(List<Row> rows) {
	this.rows = rows;
    }

    public String getId() {
	return id;
    }

    public void setId(String id) {
	this.id = id;
    }

    @Override
    public String toString() {
	return "Table [id=" + id + ", title=" + title + ", headers=" + headers + ", rows=" + rows + "]";
    }
    
    
}
