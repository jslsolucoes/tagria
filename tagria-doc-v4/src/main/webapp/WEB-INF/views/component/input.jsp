<%@include file="../app/taglibs.jsp"  %>																							<html:view title="{title}" template="master">					<html:template render="body">																													<html:card>																														<html:cardHeader>																				input							</html:cardHeader>																											<html:cardBody>																												<html:tabs>																														<html:tabsHeader>																												<html:tabsTab active="true" labelKey="about" id="tab1"></html:tabsTab> 												<html:tabsTab labelKey="attributes" id="tab2"></html:tabsTab> 														<html:tabsTab labelKey="demo" id="tab3"></html:tabsTab> 																<html:tabsTab labelKey="source" id="tab4"></html:tabsTab> 														</html:tabsHeader> 																										<html:tabsBody> 																												<html:tabsContent active="true" contentOf="tab1">																			<html:alert state="warning">													Renders an input											</html:alert>																											</html:tabsContent>																										<html:tabsContent contentOf="tab2">												<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableRow><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableRow></html:tableHeader><html:tableBody><html:tableRow><html:tableData>list</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates a data list to attach on input</html:tableData></html:tableRow><html:tableRow><html:tableData>formatter</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates a type format in which the value must be converted. Default options: date,datetime, timestamp, hour, currency, zipCode, cnpj, tel, cpf</html:tableData></html:tableRow><html:tableRow><html:tableData>cssClass</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates a CSS class to the component</html:tableData></html:tableRow><html:tableRow><html:tableData>title</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates a title for the component</html:tableData></html:tableRow><html:tableRow><html:tableData>titleKey</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates a title key (i18n) for the component</html:tableData></html:tableRow><html:tableRow><html:tableData>type</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates the type of input. Default: text. Options: button, checkbox, color, date, datetime, datetime-local, email, file, hidden, image, month, number, password, radio, range, reset, search, submit, tel, text, time, url, week</html:tableData></html:tableRow><html:tableRow><html:tableData>id</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates the component's id</html:tableData></html:tableRow><html:tableRow><html:tableData>name</html:tableData><html:tableData>true</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates the component name</html:tableData></html:tableRow><html:tableRow><html:tableData>placeHolder</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates placeHolder for input</html:tableData></html:tableRow><html:tableRow><html:tableData>placeHolderKey</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates placeHolder key (i18n) for textarea</html:tableData></html:tableRow><html:tableRow><html:tableData>value</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates the value of the component</html:tableData></html:tableRow><html:tableRow><html:tableData>focus</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Boolean</html:tableData><html:tableData>It indicates whether the component should gain the cursor focus</html:tableData></html:tableRow><html:tableRow><html:tableData>autoComplete</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Boolean</html:tableData><html:tableData>Defines if input allow autoComplete previous input date.Default false</html:tableData></html:tableRow><html:tableRow><html:tableData>required</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Boolean</html:tableData><html:tableData>It indicates whether the component is required within a form</html:tableData></html:tableRow><html:tableRow><html:tableData>pattern</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>It indicates the pattern to be followed in a particular field</html:tableData></html:tableRow><html:tableRow><html:tableData>disabled</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Boolean</html:tableData><html:tableData>It indicates whether the component should be disabled. Default: false</html:tableData></html:tableRow><html:tableRow><html:tableData>maxLength</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>Indicates the maximum number of characters to be filled</html:tableData></html:tableRow><html:tableRow><html:tableData>max</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>Indicates the maximum value for input</html:tableData></html:tableRow><html:tableRow><html:tableData>min</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>Indicates the minimum value for input</html:tableData></html:tableRow><html:tableRow><html:tableData>step</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Integer</html:tableData><html:tableData>Indicates the step increment number</html:tableData></html:tableRow><html:tableRow><html:tableData>checked</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Boolean</html:tableData><html:tableData>Indicates if (radio, checkbox) if the component should be marked</html:tableData></html:tableRow><html:tableRow><html:tableData>multiple</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.Boolean</html:tableData><html:tableData>Indicates whether the component supports multiple inputs</html:tableData></html:tableRow><html:tableRow><html:tableData>accept</html:tableData><html:tableData>false</html:tableData><html:tableData>java.lang.String</html:tableData><html:tableData>Indicates which extensions supported in the case (file)</html:tableData></html:tableRow></html:tableBody></html:table>										</html:tabsContent>																								<html:tabsContent contentOf="tab3">										
			<html:input name="field1"/> 
												</html:tabsContent>																								<html:tabsContent contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:input name="field1"/&gt; 
		&lt;/html:view&gt;												</html:code>																									</html:tabsContent>																							</html:tabsBody> 																								</html:tabs>																									</html:cardBody>																								</html:card>																									    </html:template> 																							</html:view>																			