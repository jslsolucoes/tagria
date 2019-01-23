<%@include file="../app/taglibs.jsp"%>										<html:view title="{title}">																	<html:card>																									<html:cardHeader label="grid"/>												<html:cardBody>																								<html:tabPanel>																									<html:tab label="{about}" active="true">																	<html:alert state="warning">																				     	Renders a grid																			</html:alert>																							</html:tab>																									<html:tab label="{attributes}">										<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableLine><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableLine></html:tableHeader><html:tableBody><html:tableLine><html:tableColumn>data</html:tableColumn><html:tableColumn>true</html:tableColumn><html:tableColumn>java.util.Collection</html:tableColumn><html:tableColumn>It indicates the collection to be iterated by the component</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>var</html:tableColumn><html:tableColumn>true</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates the name of the variable java to be made available the object of iteration</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>varStatus</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates the name of the variable to be available to current iteration</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>label</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates the label component</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>totalResults</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Integer</html:tableColumn><html:tableColumn>Indicates the total number of records in component</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>resultsPerPage</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Integer</html:tableColumn><html:tableColumn>It indicates the default number of results per page. Default: 60. Options: 20,40,60,80,100</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>search</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates whether the component should be search feature. Default: false</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>paginate</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates whether the component should be paginated. Default: true</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>export</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates whether the component should be export feature. Default: true</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>url</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates the url component a ser utilizada caso haja paginação</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>rendered</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates whether the component should be rendered</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>noRowText</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates the component title when there are no lines available</html:tableColumn></html:tableLine></html:tableBody></html:table>																																	</html:tab>																									<html:tab label="{demo}">																						
			<html:grid label="Pessoas" url="/component/grid" data="${ persons }" var="person" noRowText="No records found">
				<html:gridColumn label="Identification" exportable="true">
					${ person.id }
				</html:gridColumn>
				<html:gridColumn label="Name" exportable="true">
					${ person.name }
				</html:gridColumn>
			</html:grid> 																							</html:tab>																									<html:tab label="{source}">																					<html:code>																										&lt;html:view&gt;
			&lt;html:grid label="Pessoas" url="/component/grid" data="\${ persons }" var="person" noRowText="No records found"&gt;
				&lt;html:gridColumn label="Identification" exportable="true"&gt;
					\${ person.id }
				&lt;/html:gridColumn&gt;
				&lt;html:gridColumn label="Name" exportable="true"&gt;
					\${ person.name }
				&lt;/html:gridColumn&gt;
			&lt;/html:grid&gt; &lt;/html:view&gt;																					</html:code>																							</html:tab>																								</html:tabPanel>																						</html:cardBody>																						</html:card>																							</html:view>																			