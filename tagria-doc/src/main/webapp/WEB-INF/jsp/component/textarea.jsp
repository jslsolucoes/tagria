<%@include file="../app/taglibs.jsp"%>																							<html:view title="{title}">																													<html:card>																														<html:card-header>																				textarea							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders an textarea											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:thead light="true"><html:tr><html:th><fmt:message key="tag.attribute"/></html:th><html:th><fmt:message key="tag.required"/></html:th><html:th><fmt:message key="tag.type"/></html:th><html:th><fmt:message key="tag.description"/></html:th></html:tr></html:thead><html:tbody><html:tr><html:td>name</html:td><html:td>true</html:td><html:td>java.lang.String</html:td><html:td>Indicates the component name</html:td></html:tr><html:tr><html:td>placeholder</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates placeholder for textarea</html:td></html:tr><html:tr><html:td>placeholderKey</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates placeholder key (i18n) for textarea</html:td></html:tr><html:tr><html:td>value</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>It indicates the value of the component</html:td></html:tr><html:tr><html:td>required</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>It indicates whether the component is required in the form</html:td></html:tr><html:tr><html:td>rows</html:td><html:td>false</html:td><html:td>java.lang.Integer</html:td><html:td>Indicates the number of component lines</html:td></html:tr><html:tr><html:td>cssClass</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>It indicates a css class to the component</html:td></html:tr></html:tbody></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
			<html:textarea name="textarea1" rows="3"/> 
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:textarea name="textarea1" rows="3"/&gt; 
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			