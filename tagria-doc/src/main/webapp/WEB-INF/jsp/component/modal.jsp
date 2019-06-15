<%@include file="../app/taglibs.jsp"%>																							<html:view title="{title}">																													<html:card>																														<html:card-header>																				modal							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders a modal block											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:table-header light="true"><html:table-row><html:table-head><fmt:message key="tag.attribute"/></html:table-head><html:table-head><fmt:message key="tag.required"/></html:table-head><html:table-head><fmt:message key="tag.type"/></html:table-head><html:table-head><fmt:message key="tag.description"/></html:table-head></html:table-row></html:table-header><html:table-body><html:table-row><html:table-data>size</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>Indicates the size of modal. Default none. Options: xl,sm,lg</html:table-data></html:table-row><html:table-row><html:table-data>id</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>Indicates the modal id for direct manipulation of events</html:table-data></html:table-row><html:table-row><html:table-data>attachTo</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>Indicates the component name that triggers the modal screen</html:table-data></html:table-row><html:table-row><html:table-data>attachToSelector</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>Indicates the component selector that triggers the modal screen</html:table-data></html:table-row><html:table-row><html:table-data>closeable</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>Indicates if modal can be closeable. Default : true. Options : true,false</html:table-data></html:table-row><html:table-row><html:table-data>centered</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>Indicates if modal is vertically centered. Default : false. Options : true,false</html:table-data></html:table-row><html:table-row><html:table-data>open</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>Indicates if component is opened on load. Default : false. Options : true,false</html:table-data></html:table-row><html:table-row><html:table-data>rendered</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>It indicates whether the component should be rendered</html:table-data></html:table-row></html:table-body></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
		    <html:button-group>
				<html:button label="My button" icon="search" id="btn1" />
			</html:button-group>
			
			<html:modal attachToSelector="#btn1">
				<html:modal-header label="My modal title"></html:modal-header>
				<html:modal-body>
					Here is my component
				</html:modal-body>
				<html:modal-footer>
					My footer
				</html:modal-footer>
			</html:modal>
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
		    &lt;html:button-group&gt;
				&lt;html:button label="My button" icon="search" id="btn1" /&gt;
			&lt;/html:button-group&gt;
			
			&lt;html:modal attachToSelector="#btn1"&gt;
				&lt;html:modal-header label="My modal title"&gt;&lt;/html:modal-header&gt;
				&lt;html:modal-body&gt;
					Here is my component
				&lt;/html:modal-body&gt;
				&lt;html:modal-footer&gt;
					My footer
				&lt;/html:modal-footer&gt;
			&lt;/html:modal&gt;
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			