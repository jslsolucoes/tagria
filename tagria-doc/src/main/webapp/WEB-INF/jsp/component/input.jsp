<%@include file="../app/taglibs.jsp"%>																							<html:view title="{title}">																													<html:card>																														<html:card-header>																				input							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders an input											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:table stripe="true" hover="true"><html:thead light="true"><html:tr><html:th><fmt:message key="tag.attribute"/></html:th><html:th><fmt:message key="tag.required"/></html:th><html:th><fmt:message key="tag.type"/></html:th><html:th><fmt:message key="tag.description"/></html:th></html:tr></html:thead><html:tbody><html:tr><html:td>list</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>It indicates a data list to attach on input</html:td></html:tr><html:tr><html:td>cssClass</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>It indicates a CSS class to the component</html:td></html:tr><html:tr><html:td>title</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates a title for the component</html:td></html:tr><html:tr><html:td>titleKey</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates a title key (i18n) for the component</html:td></html:tr><html:tr><html:td>type</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>It indicates the type of input. Default: text. Options: button, checkbox, color, date, datetime, datetime-local, email, file, hidden, image, month, number, password, radio, range, reset, search, submit, tel, text, time, url, week</html:td></html:tr><html:tr><html:td>id</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the component's id</html:td></html:tr><html:tr><html:td>name</html:td><html:td>true</html:td><html:td>java.lang.String</html:td><html:td>Indicates the component name</html:td></html:tr><html:tr><html:td>placeholder</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates placeholder for input</html:td></html:tr><html:tr><html:td>placeholderKey</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates placeholder key (i18n) for textarea</html:td></html:tr><html:tr><html:td>value</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates the value of the component</html:td></html:tr><html:tr><html:td>focus</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>It indicates whether the component should gain the cursor focus</html:td></html:tr><html:tr><html:td>autocomplete</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>Defines if input allow autocomplete previous input date.Default false</html:td></html:tr><html:tr><html:td>required</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>It indicates whether the component is required within a form</html:td></html:tr><html:tr><html:td>pattern</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>It indicates the pattern to be followed in a particular field</html:td></html:tr><html:tr><html:td>disabled</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>It indicates whether the component should be disabled. Default: false</html:td></html:tr><html:tr><html:td>maxLength</html:td><html:td>false</html:td><html:td>java.lang.Integer</html:td><html:td>Indicates the maximum number of characters to be filled</html:td></html:tr><html:tr><html:td>max</html:td><html:td>false</html:td><html:td>java.lang.Integer</html:td><html:td>Indicates the maximun number accepted</html:td></html:tr><html:tr><html:td>min</html:td><html:td>false</html:td><html:td>java.lang.Integer</html:td><html:td>Indicates the minimum number accepted</html:td></html:tr><html:tr><html:td>step</html:td><html:td>false</html:td><html:td>java.lang.Integer</html:td><html:td>Indicates the step increment number</html:td></html:tr><html:tr><html:td>checked</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>Indicates if (radio, checkbox) if the component should be marked</html:td></html:tr><html:tr><html:td>multiple</html:td><html:td>false</html:td><html:td>java.lang.Boolean</html:td><html:td>Indicates whether the component supports multiple inputs</html:td></html:tr><html:tr><html:td>accept</html:td><html:td>false</html:td><html:td>java.lang.String</html:td><html:td>Indicates which extensions supported in the case (file)</html:td></html:tr></html:tbody></html:table>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
			<html:input name="field1"/> 
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:input name="field1"/&gt; 
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			