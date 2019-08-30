<%@include file="../app/taglibs.jsp"  %>																							<html:view title="{title}" template="master" attribute="body">																													<html:card>																														<html:card-header>																				card-image							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders an card image											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:table-header light="true"><html:table-row><html:table-head><fmt:message key="tag.attribute"/></html:table-head><html:table-head><fmt:message key="tag.required"/></html:table-head><html:table-head><fmt:message key="tag.type"/></html:table-head><html:table-head><fmt:message key="tag.description"/></html:table-head></html:table-row></html:table-header><html:table-body><html:table-row><html:table-data>rendered</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>It indicates if the component should be rendered. Default : true</html:table-data></html:table-row><html:table-row><html:table-data>responsive</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>It indicates if card-image is responsive. Default : false</html:table-data></html:table-row><html:table-row><html:table-data>height</html:table-data><html:table-data>true</html:table-data><html:table-data>java.lang.Integer</html:table-data><html:table-data>Indicates the height component</html:table-data></html:table-row><html:table-row><html:table-data>width</html:table-data><html:table-data>true</html:table-data><html:table-data>java.lang.Integer</html:table-data><html:table-data>Indicates the image width</html:table-data></html:table-row><html:table-row><html:table-data>alt</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>It indicates the alt of image</html:table-data></html:table-row><html:table-row><html:table-data>altKey</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>It indicates the alt key (i18n) of image</html:table-data></html:table-row><html:table-row><html:table-data>cdn</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.Boolean</html:table-data><html:table-data>It indicates if the component must be loaded from cdn</html:table-data></html:table-row><html:table-row><html:table-data>url</html:table-data><html:table-data>true</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>Indicates the image url</html:table-data></html:table-row></html:table-body></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
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