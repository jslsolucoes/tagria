<%@include file="../app/taglibs.jsp"%>																							<html:view title="{title}">																													<html:card>																														<html:card-header>																				list-group-item							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders a list item											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:thead light="true"><html:tr><html:th><fmt:message key="tag.attribute"/></html:th><html:th><fmt:message key="tag.required"/></html:th><html:th><fmt:message key="tag.type"/></html:th><html:th><fmt:message key="tag.description"/></html:th></html:tr></html:thead><html:tbody><html:tr><html:td>rendered</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>It indicates whether the component should be rendered. Default : true</html:td></html:tr><html:tr><html:td>cssClass</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>It indicates a CSS class to the component</html:td></html:tr><html:tr><html:td>state</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>It indicates the state where the item should be rendered. Default: none. Options: primary, secondary, light, dark, warning, success, danger, info</html:td></html:tr></html:tbody></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
			<html:list-group>
				<html:list-group-item>
					Item 1
				</html:list-group-item>
				<html:list-group-item>
					Item 2
				</html:list-group-item>
				<html:list-group-item>
					Item 3
				</html:list-group-item>
			</html:list-group> 
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:list-group&gt;
				&lt;html:list-group-item&gt;
					Item 1
				&lt;/html:list-group-item&gt;
				&lt;html:list-group-item&gt;
					Item 2
				&lt;/html:list-group-item&gt;
				&lt;html:list-group-item&gt;
					Item 3
				&lt;/html:list-group-item&gt;
			&lt;/html:list-group&gt; 
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			