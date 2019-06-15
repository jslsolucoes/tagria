<%@include file="../app/taglibs.jsp"%>																							<html:view title="{title}">																													<html:card>																														<html:card-header>																				carousel							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders a carousel											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:table-header light="true"><html:table-row><html:table-head><fmt:message key="tag.attribute"/></html:table-head><html:table-head><fmt:message key="tag.required"/></html:table-head><html:table-head><fmt:message key="tag.type"/></html:table-head><html:table-head><fmt:message key="tag.description"/></html:table-head></html:table-row></html:table-header><html:table-body><html:table-row><html:table-data>id</html:table-data><html:table-data>false</html:table-data><html:table-data>java.lang.String</html:table-data><html:table-data>Indicates the id for carousel</html:table-data></html:table-row></html:table-body></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
			<html:carousel>
				<html:carousel-item active="true" label="Item 1" description="Description 1">
					<html:carousel-image url="https://jslsolucoes.com/wp-content/uploads/logo.png" width="200" height="200" alt="logo"/>
				</html:carousel-item>
				<html:carousel-item label="Item 2" description="Description 2">
					<html:carousel-image url="https://jslsolucoes.com/wp-content/uploads/logo.png" width="200" height="200" alt="logo"/>
				</html:carousel-item>
			</html:carousel> 
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:carousel&gt;
				&lt;html:carousel-item active="true" label="Item 1" description="Description 1"&gt;
					&lt;html:carousel-image url="https://jslsolucoes.com/wp-content/uploads/logo.png" width="200" height="200" alt="logo"/&gt;
				&lt;/html:carousel-item&gt;
				&lt;html:carousel-item label="Item 2" description="Description 2"&gt;
					&lt;html:carousel-image url="https://jslsolucoes.com/wp-content/uploads/logo.png" width="200" height="200" alt="logo"/&gt;
				&lt;/html:carousel-item&gt;
			&lt;/html:carousel&gt; 
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			