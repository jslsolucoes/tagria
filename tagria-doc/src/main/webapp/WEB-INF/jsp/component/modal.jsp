<%@include file="../app/taglibs.jsp"%>																							<html:view title="{title}">																													<html:card>																														<html:card-header>																				modal							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders a modal block											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:thead light="true"><html:tr><html:th><fmt:message key="tag.attribute"/></html:th><html:th><fmt:message key="tag.required"/></html:th><html:th><fmt:message key="tag.type"/></html:th><html:th><fmt:message key="tag.description"/></html:th></html:tr></html:thead><html:tbody><html:tr><html:td>size</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the size of modal. Default none. Options: xl,sm,lg</html:td></html:tr><html:tr><html:td>id</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the modal id for direct manipulation of events</html:td></html:tr><html:tr><html:td>attachTo</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the component name that triggers the modal screen</html:td></html:tr><html:tr><html:td>attachToSelector</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the component selector that triggers the modal screen</html:td></html:tr><html:tr><html:td>closeable</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>Indicates if modal can be closeable. Default : true. Options : true,false</html:td></html:tr><html:tr><html:td>centered</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>Indicates if modal is vertically centered. Default : false. Options : true,false</html:td></html:tr><html:tr><html:td>open</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>Indicates if component is opened on load. Default : false. Options : true,false</html:td></html:tr><html:tr><html:td>rendered</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>It indicates whether the component should be rendered</html:td></html:tr></html:tbody></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
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