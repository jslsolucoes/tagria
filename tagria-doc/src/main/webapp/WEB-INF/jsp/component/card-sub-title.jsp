<%@include file="../app/taglibs.jsp"%>																							<html:view title="{title}">																													<html:card>																														<html:card-header>																				card-sub-title							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders card sub title											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:thead light="true"><html:tr><html:th><fmt:message key="tag.attribute"/></html:th><html:th><fmt:message key="tag.required"/></html:th><html:th><fmt:message key="tag.type"/></html:th><html:th><fmt:message key="tag.description"/></html:th></html:tr></html:thead><html:tbody><html:tr><html:td>label</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the label</html:td></html:tr><html:tr><html:td>labelKey</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the label key (i18n)</html:td></html:tr></html:tbody></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
			<html:card>
				<html:card-image url="/image/person.png" width="32" height="32" responsive="false"></html:card-image>
				<html:card-header>
					My header
				</html:card-header>
				<html:card-body>
					<html:card-title>My title</html:card-title>
					<html:card-sub-title>My subtitle</html:card-sub-title>
					<html:card-text>My text</html:card-text>
					<html:card-link label="My link 1" url="#"></html:card-link>
				</html:card-body>
				<html:card-footer>
					My footer
				</html:card-footer>
			</html:card>
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:card&gt;
				&lt;html:card-image url="/image/person.png" width="32" height="32" responsive="false"&gt;&lt;/html:card-image&gt;
				&lt;html:card-header&gt;
					My header
				&lt;/html:card-header&gt;
				&lt;html:card-body&gt;
					&lt;html:card-title&gt;My title&lt;/html:card-title&gt;
					&lt;html:card-sub-title&gt;My subtitle&lt;/html:card-sub-title&gt;
					&lt;html:card-text&gt;My text&lt;/html:card-text&gt;
					&lt;html:card-link label="My link 1" url="#"&gt;&lt;/html:card-link&gt;
				&lt;/html:card-body&gt;
				&lt;html:card-footer&gt;
					My footer
				&lt;/html:card-footer&gt;
			&lt;/html:card&gt;
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			