<%@include file="../app/taglibs.jsp"  %>																							<html:view title="{title}" template="master">					<html:template render="body">																													<html:card>																														<html:cardHeader>																				recaptcha							</html:cardHeader>																											<html:cardBody>																												<html:tabs>																														<html:tabsHeader>																												<html:tabsTab active="true" labelKey="about" id="tab1"></html:tabsTab> 												<html:tabsTab labelKey="attributes" id="tab2"></html:tabsTab> 														<html:tabsTab labelKey="demo" id="tab3"></html:tabsTab> 																<html:tabsTab labelKey="source" id="tab4"></html:tabsTab> 														</html:tabsHeader> 																										<html:tabsBody> 																												<html:tabsContent active="true" contentOf="tab1">																			<html:alert state="warning">													Renders a google recaptcha											</html:alert>																											</html:tabsContent>																										<html:tabsContent contentOf="tab2">												<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableRow><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableRow></html:tableHeader><html:tableBody><html:tableRow><html:tableData>siteKey</html:tableData><html:tableData>true</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates the site key available in google account developer for recaptcha</html:tableData></html:tableRow><html:tableRow><html:tableData>dataCallback</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates the function after data sent on client side event</html:tableData></html:tableRow><html:tableRow><html:tableData>expiredCallback</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates the function after data expired on client side event</html:tableData></html:tableRow></html:tableBody></html:table>										</html:tabsContent>																								<html:tabsContent contentOf="tab3">										
			<html:jsCode >
				function myJsFunction() {
					console.log('click');
				}
			</html:jsCode> 
		
			<html:recaptcha siteKey="yourapikey" dataCallback="myJsFunction" >
				
			</html:recaptcha> 
												</html:tabsContent>																								<html:tabsContent contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:jsCode &gt;
				function myJsFunction() {
					console.log('click');
				}
			&lt;/html:jsCode&gt; 
		
			&lt;html:recaptcha siteKey="yourapikey" dataCallback="myJsFunction" &gt;
				
			&lt;/html:recaptcha&gt; 
		&lt;/html:view&gt;												</html:code>																									</html:tabsContent>																							</html:tabsBody> 																								</html:tabs>																									</html:cardBody>																								</html:card>																									    </html:template> 																							</html:view>																			