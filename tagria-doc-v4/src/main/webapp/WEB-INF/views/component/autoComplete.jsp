<%@include file="../app/taglibs.jsp"  %>																							<html:view title="{title}" template="master">					<html:template render="body">																													<html:card>																														<html:cardHeader>																				autoComplete							</html:cardHeader>																											<html:cardBody>																												<html:tabs>																														<html:tabsHeader>																												<html:tabsTab active="true" labelKey="about" id="tab1"></html:tabsTab> 												<html:tabsTab labelKey="attributes" id="tab2"></html:tabsTab> 														<html:tabsTab labelKey="demo" id="tab3"></html:tabsTab> 																<html:tabsTab labelKey="source" id="tab4"></html:tabsTab> 														</html:tabsHeader> 																										<html:tabsBody> 																												<html:tabsContent active="true" contentOf="tab1">																			<html:alert state="warning">													Renders a autoComplete											</html:alert>																											</html:tabsContent>																										<html:tabsContent contentOf="tab2">												<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableRow><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableRow></html:tableHeader><html:tableBody><html:tableRow><html:tableData>name</html:tableData><html:tableData>true</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates the name of the hidden input.</html:tableData></html:tableRow><html:tableRow><html:tableData>placeHolder</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates placeHolder for autoComplete</html:tableData></html:tableRow><html:tableRow><html:tableData>placeHolderKey</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates placeHolder key (i18n) for autoComplete</html:tableData></html:tableRow><html:tableRow><html:tableData>width</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>Indicates the autoComplete result box width</html:tableData></html:tableRow><html:tableRow><html:tableData>height</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>Indicates the autoComplete result box max height</html:tableData></html:tableRow><html:tableRow><html:tableData>required</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Boolean</html:tableData><html:tableData>Indicates whether the component form is mandatory in form</html:tableData></html:tableRow><html:tableRow><html:tableData>text</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates the text to be show on input load.</html:tableData></html:tableRow><html:tableRow><html:tableData>textKey</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates the text key (i18n) to be show on input load.</html:tableData></html:tableRow><html:tableRow><html:tableData>value</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates the value of the hidden input.</html:tableData></html:tableRow><html:tableRow><html:tableData>url</html:tableData><html:tableData>true</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates url to execute query.</html:tableData></html:tableRow><html:tableRow><html:tableData>minLength</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>It indicates min length of input. Default: 3</html:tableData></html:tableRow><html:tableRow><html:tableData>delay</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>It indicates delay in ms to listen changes. Default: 1000</html:tableData></html:tableRow></html:tableBody></html:table>										</html:tabsContent>																								<html:tabsContent contentOf="tab3">										
			<html:autoComplete url="/app/autoComplete" name="myautoComplete">
				<html:autoCompleteOnSelect>
					console.log(value);
					console.log(text);
				</html:autoCompleteOnSelect>
			</html:autoComplete>
												</html:tabsContent>																								<html:tabsContent contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:autoComplete url="/app/autoComplete" name="myautoComplete"&gt;
				&lt;html:autoCompleteOnSelect&gt;
					console.log(value);
					console.log(text);
				&lt;/html:autoCompleteOnSelect&gt;
			&lt;/html:autoComplete&gt;
		&lt;/html:view&gt;												</html:code>																									</html:tabsContent>																							</html:tabsBody> 																								</html:tabs>																									</html:cardBody>																								</html:card>																									    </html:template> 																							</html:view>																			