<%@include file="../app/taglibs.jsp"%>																							<html:view title="{title}">																													<html:card>																														<html:card-header>																				col							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders a column within a row											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:thead light="true"><html:tr><html:th><fmt:message key="tag.attribute"/></html:th><html:th><fmt:message key="tag.required"/></html:th><html:th><fmt:message key="tag.type"/></html:th><html:th><fmt:message key="tag.description"/></html:th></html:tr></html:thead><html:tbody><html:tr><html:td>extraSmall</html:td><html:td>true</html:td><html:td>java.lang.Integer</html:td><html:td>Indicates the number of columns to fill to extra small viewport. Options: 1 to 12</html:td></html:tr><html:tr><html:td>small</html:td><html:td>false</html:td><html:td>java.lang.Integer</html:td><html:td>Indicates the number of columns to fill to small viewport. Options: 1 to 12</html:td></html:tr><html:tr><html:td>medium</html:td><html:td>false</html:td><html:td>java.lang.Integer</html:td><html:td>Indicates the number of columns to fill to medium viewport. Options: 1 to 12</html:td></html:tr><html:tr><html:td>large</html:td><html:td>false</html:td><html:td>java.lang.Integer</html:td><html:td>Indicates the number of columns to fill to large viewport. Options: 1 to 12</html:td></html:tr><html:tr><html:td>cssClass</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>It indicates a CSS class to the component</html:td></html:tr></html:tbody></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
			<html:row>
				<html:col extraSmall="3">
					<html:input required="true" name="field1"/>
				</html:col>
				<html:col extraSmall="9">
					<html:input name="field2"/>
				</html:col>
			</html:row>
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:row&gt;
				&lt;html:col extraSmall="3"&gt;
					&lt;html:input required="true" name="field1"/&gt;
				&lt;/html:col&gt;
				&lt;html:col extraSmall="9"&gt;
					&lt;html:input name="field2"/&gt;
				&lt;/html:col&gt;
			&lt;/html:row&gt;
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			