<%@include file="../app/taglibs.jsp"%>																							<html:view title="{title}">																													<html:card>																														<html:card-header>																				grid							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders a grid											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:thead light="true"><html:tr><html:th><fmt:message key="tag.attribute"/></html:th><html:th><fmt:message key="tag.required"/></html:th><html:th><fmt:message key="tag.type"/></html:th><html:th><fmt:message key="tag.description"/></html:th></html:tr></html:thead><html:tbody><html:tr><html:td>data</html:td><html:td>true</html:td><html:td>java.util.Collection</html:td><html:td>It indicates the collection to be iterated by the component</html:td></html:tr><html:tr><html:td>var</html:td><html:td>true</html:td><html:td>java.lang.String</html:td><html:td>It indicates the name of the variable java to be made available the object of iteration</html:td></html:tr><html:tr><html:td>varStatus</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>It indicates the name of the variable to be available to current iteration</html:td></html:tr><html:tr><html:td>label</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the label component</html:td></html:tr><html:tr><html:td>totalResults</html:td><html:td>false</html:td><html:td>java.lang.Integer</html:td><html:td>Indicates the total number of records in component</html:td></html:tr><html:tr><html:td>resultsPerPage</html:td><html:td>false</html:td><html:td>java.lang.Integer</html:td><html:td>It indicates the default number of results per page. Default: 60. Options: 20,40,60,80,100</html:td></html:tr><html:tr><html:td>search</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>It indicates whether the component should be search feature. Default: false</html:td></html:tr><html:tr><html:td>paginate</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>It indicates whether the component should be paginated. Default: true</html:td></html:tr><html:tr><html:td>export</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>It indicates whether the component should be export feature. Default: true</html:td></html:tr><html:tr><html:td>url</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the url component a ser utilizada caso haja pagina��o</html:td></html:tr><html:tr><html:td>rendered</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>It indicates whether the component should be rendered</html:td></html:tr><html:tr><html:td>noRowText</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the component title when there are no lines available</html:td></html:tr></html:tbody></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
			<html:grid label="Persons" url="/component/grid" data="${ persons }" var="person" noRowText="No records found">
				<html:gridColumn label="Identification" exportable="true">
					${ person.id }
				</html:gridColumn>
				<html:gridColumn label="Name" exportable="true">
					${ person.name }
				</html:gridColumn>
			</html:grid> 										</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:grid label="Persons" url="/component/grid" data="\${ persons }" var="person" noRowText="No records found"&gt;
				&lt;html:gridColumn label="Identification" exportable="true"&gt;
					\${ person.id }
				&lt;/html:gridColumn&gt;
				&lt;html:gridColumn label="Name" exportable="true"&gt;
					\${ person.name }
				&lt;/html:gridColumn&gt;
			&lt;/html:grid&gt; &lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			