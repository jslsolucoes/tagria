<%@include file="../app/taglibs.jsp"  %>																							<html:view title="{title}" template="master">					<html:template render="body">																													<html:card>																														<html:cardHeader>																				tabsContent							</html:cardHeader>																											<html:cardBody>																												<html:tabs>																														<html:tabsHeader>																												<html:tabsTab active="true" labelKey="about" id="tab1"></html:tabsTab> 												<html:tabsTab labelKey="attributes" id="tab2"></html:tabsTab> 														<html:tabsTab labelKey="demo" id="tab3"></html:tabsTab> 																<html:tabsTab labelKey="source" id="tab4"></html:tabsTab> 														</html:tabsHeader> 																										<html:tabsBody> 																												<html:tabsContent active="true" contentOf="tab1">																			<html:alert state="warning">													Renders a tab content											</html:alert>																											</html:tabsContent>																										<html:tabsContent contentOf="tab2">												<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableRow><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableRow></html:tableHeader><html:tableBody><html:tableRow><html:tableData>active</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Boolean</html:tableData><html:tableData>It indicates whether the tab should be initiated selected</html:tableData></html:tableRow><html:tableRow><html:tableData>contentOf</html:tableData><html:tableData>true</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates the link between tab head and content</html:tableData></html:tableRow><html:tableRow><html:tableData>url</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates the url to be incorporated into the tab. If not indicated it renders content in the component body.</html:tableData></html:tableRow></html:tableBody></html:table>										</html:tabsContent>																								<html:tabsContent contentOf="tab3">										
			<html:tabs>
				<html:tabsHeader>
					<html:tabsTab active="true" label="my tab 1" id="etab1"></html:tabsTab>
					<html:tabsTab label="my tab 2" id="tab2"></html:tabsTab>
					<html:tabsTab label="my tab 3" id="tab3"></html:tabsTab>
				</html:tabsHeader>
				<html:tabsBody>
					<html:tabsContent active="true" contentOf="etab1"> My content 1</html:tabsContent>
					<html:tabsContent contentOf="tab2"> My content 2</html:tabsContent>
					<html:tabsContent contentOf="tab3"> My content 3</html:tabsContent>
				</html:tabsBody>
			</html:tabs>
												</html:tabsContent>																								<html:tabsContent contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:tabs&gt;
				&lt;html:tabsHeader&gt;
					&lt;html:tabsTab active="true" label="my tab 1" id="etab1"&gt;&lt;/html:tabsTab&gt;
					&lt;html:tabsTab label="my tab 2" id="tab2"&gt;&lt;/html:tabsTab&gt;
					&lt;html:tabsTab label="my tab 3" id="tab3"&gt;&lt;/html:tabsTab&gt;
				&lt;/html:tabsHeader&gt;
				&lt;html:tabsBody&gt;
					&lt;html:tabsContent active="true" contentOf="etab1"&gt; My content 1&lt;/html:tabsContent&gt;
					&lt;html:tabsContent contentOf="tab2"&gt; My content 2&lt;/html:tabsContent&gt;
					&lt;html:tabsContent contentOf="tab3"&gt; My content 3&lt;/html:tabsContent&gt;
				&lt;/html:tabsBody&gt;
			&lt;/html:tabs&gt;
		&lt;/html:view&gt;												</html:code>																									</html:tabsContent>																							</html:tabsBody> 																								</html:tabs>																									</html:cardBody>																								</html:card>																									    </html:template> 																							</html:view>																			