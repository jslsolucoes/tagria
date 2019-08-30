<%@include file="../app/taglibs.jsp"  %>																							<html:view title="{title}" template="master" attribute="body">																													<html:card>																														<html:card-header>																				textarea							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders an textarea											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:table-header light="true"><html:table-row><html:table-head><fmt:message key="tag.attribute"/></html:table-head><html:table-head><fmt:message key="tag.required"/></html:table-head><html:table-head><fmt:message key="tag.type"/></html:table-head><html:table-head><fmt:message key="tag.description"/></html:table-head></html:table-row></html:table-header><html:table-body><html:table-row><html:table-data>name</html:table-data><html:table-data>true</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>Indicates the component name</html:table-data></html:table-row><html:table-row><html:table-data>placeholder</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>Indicates placeholder for textarea</html:table-data></html:table-row><html:table-row><html:table-data>placeholderKey</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>Indicates placeholder key (i18n) for textarea</html:table-data></html:table-row><html:table-row><html:table-data>value</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>It indicates the value of the component</html:table-data></html:table-row><html:table-row><html:table-data>required</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>It indicates whether the component is required in the form</html:table-data></html:table-row><html:table-row><html:table-data>rows</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Integer</html:table-data><html:table-data>Indicates the number of component lines</html:table-data></html:table-row><html:table-row><html:table-data>cssClass</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>It indicates a css class to the component</html:table-data></html:table-row></html:table-body></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
			<html:textarea name="textarea1" rows="3"/> 
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:textarea name="textarea1" rows="3"/&gt; 
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			