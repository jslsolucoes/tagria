<%@include file="../app/taglibs.jsp"%>										<html:view title="{title}">																	<html:card>																									<html:cardHeader>															input							</html:cardHeader>																						<html:cardBody>																								<html:tabPanel>																									<html:tab label="{about}" active="true">																	<html:alert state="warning">																				     	Renders an input																			</html:alert>																							</html:tab>																									<html:tab label="{attributes}">										<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableLine><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableLine></html:tableHeader><html:tableBody><html:tableLine><html:tableColumn>list</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates a data list to attach on input</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>cssClass</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates a CSS class to the component</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>title</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates a title for the component</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>format</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates a format in which the value must be converted. Options: date,datetime, timestamp, hour, currency, zipCode, cnpj, tel, cpf</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>type</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates the type of input. Default: text. Options: button, checkbox, color, date, datetime, datetime-local, email, file, hidden, image, month, number, password, radio, range, reset, search, submit, tel, text, time, url, week</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>id</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates the component's id</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>name</html:tableColumn><html:tableColumn>true</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates the component name</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>placeholder</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates the component fill mark</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>value</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates the value of the component</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>focus</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates whether the component should win the cursor focus</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>required</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates whether the component is required within a form</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>pattern</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates the Padra to be followed in a particular field</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>disabled</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates whether the component should be disabled. Default: false</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>maxLength</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Integer</html:tableColumn><html:tableColumn>Indicates the maximum number of characters to be filled</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>max</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Integer</html:tableColumn><html:tableColumn>Indicates the maximun number accepted</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>min</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Integer</html:tableColumn><html:tableColumn>Indicates the minimum number accepted</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>checked</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>Indicates if (radio, checkbox) if the component should be marked</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>multiple</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>Indicates whether the component supports multiple inputs</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>accept</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates which extensions supported in the case (file)</html:tableColumn></html:tableLine></html:tableBody></html:table>																																	</html:tab>																									<html:tab label="{demo}">																						
			<html:input name="field1"/> 
																									</html:tab>																									<html:tab label="{source}">																					<html:code>																										&lt;html:view&gt;
			&lt;html:input name="field1"/&gt; 
		&lt;/html:view&gt;																					</html:code>																							</html:tab>																								</html:tabPanel>																						</html:cardBody>																						</html:card>																							</html:view>																			