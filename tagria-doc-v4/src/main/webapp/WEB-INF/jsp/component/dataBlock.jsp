<%@include file="../app/taglibs.jsp"  %>																							<html:view title="{title}" template="master">					<html:template render="body">																													<html:card>																														<html:cardHeader>																				dataBlock							</html:cardHeader>																											<html:cardBody>																												<html:tabs>																														<html:tabsHeader>																												<html:tabsTab active="true" labelKey="about" id="tab1"></html:tabsTab> 												<html:tabsTab labelKey="attributes" id="tab2"></html:tabsTab> 														<html:tabsTab labelKey="demo" id="tab3"></html:tabsTab> 																<html:tabsTab labelKey="source" id="tab4"></html:tabsTab> 														</html:tabsHeader> 																										<html:tabsBody> 																												<html:tabsContent active="true" contentOf="tab1">																			<html:alert state="warning">													Renders a data block iteration											</html:alert>																											</html:tabsContent>																										<html:tabsContent contentOf="tab2">												<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableRow><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableRow></html:tableHeader><html:tableBody><html:tableRow><html:tableData>data</html:tableData><html:tableData>true</html:tableData><html:tableData>java.util.Collection</html:tableData><html:tableData>It indicates the collection to be iterated by the component</html:tableData></html:tableRow><html:tableRow><html:tableData>var</html:tableData><html:tableData>true</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates the name of the variable java to be made available the object of iteration</html:tableData></html:tableRow><html:tableRow><html:tableData>extraSmall</html:tableData><html:tableData>true</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>Indicates the number of columns to fill to extra small viewport. Options: 1 to 12</html:tableData></html:tableRow><html:tableRow><html:tableData>small</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>Indicates the number of columns to fill to small viewport. Options: 1 to 12</html:tableData></html:tableRow><html:tableRow><html:tableData>medium</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>Indicates the number of columns to fill to medium viewport. Options: 1 to 12</html:tableData></html:tableRow><html:tableRow><html:tableData>large</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>Indicates the number of columns to fill to large viewport. Options: 1 to 12</html:tableData></html:tableRow></html:tableBody></html:table>										</html:tabsContent>																								<html:tabsContent contentOf="tab3">										
			<html:dataBlock extraSmall="12" medium="4" small="4" large="1" data="${ persons }" var="person">
				<html:alert state="success">
					${ person.name }
				</html:alert>
			</html:dataBlock> 
												</html:tabsContent>																								<html:tabsContent contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:dataBlock extraSmall="12" medium="4" small="4" large="1" data="\${ persons }" var="person"&gt;
				&lt;html:alert state="success"&gt;
					\${ person.name }
				&lt;/html:alert&gt;
			&lt;/html:dataBlock&gt; 
		&lt;/html:view&gt;												</html:code>																									</html:tabsContent>																							</html:tabsBody> 																								</html:tabs>																									</html:cardBody>																								</html:card>																									    </html:template> 																							</html:view>																			