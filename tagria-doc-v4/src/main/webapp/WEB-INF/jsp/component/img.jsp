<%@include file="../app/taglibs.jsp"  %>																							<html:view title="{title}" template="master" attribute="body">																													<html:card>																														<html:card-header>																				img							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders an image											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:table-header light="true"><html:table-row><html:table-head><fmt:message key="tag.attribute"/></html:table-head><html:table-head><fmt:message key="tag.required"/></html:table-head><html:table-head><fmt:message key="tag.type"/></html:table-head><html:table-head><fmt:message key="tag.description"/></html:table-head></html:table-row></html:table-header><html:table-body><html:table-row><html:table-data>alt</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>It indicates the label if the component can not be loaded</html:table-data></html:table-row><html:table-row><html:table-data>altKey</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>It indicates the label key (i18n) if the component can not be loaded</html:table-data></html:table-row><html:table-row><html:table-data>cdn</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>It indicates whether the component must follow a set on the properties cdn</html:table-data></html:table-row><html:table-row><html:table-data>responsive</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>It indicates whether the component should be responsive</html:table-data></html:table-row><html:table-row><html:table-data>url</html:table-data><html:table-data>true</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>Indicates the image url</html:table-data></html:table-row><html:table-row><html:table-data>height</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Integer</html:table-data><html:table-data>Indicates the height component</html:table-data></html:table-row><html:table-row><html:table-data>width</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Integer</html:table-data><html:table-data>Indicates the image width</html:table-data></html:table-row><html:table-row><html:table-data>shape</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>It indicates a format for the component. Options: rounded, circle, thumbnail</html:table-data></html:table-row><html:table-row><html:table-data>cssClass</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>It indicates a CSS class to the component</html:table-data></html:table-row><html:table-row><html:table-data>rendered</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>It indicates whether the component should be rendered</html:table-data></html:table-row></html:table-body></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
			<html:img url="/image/person.png" alt="logo" responsive="true"/> 
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:img url="/image/person.png" alt="logo" responsive="true"/&gt; 
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			