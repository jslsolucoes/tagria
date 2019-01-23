<%@include file="../app/taglibs.jsp"%>										<html:view title="{title}">																	<html:card>																									<html:cardHeader label="col"/>												<html:cardBody>																								<html:tabPanel>																									<html:tab label="{about}" active="true">																	<html:alert state="warning">																				     	Renders a column within a row																			</html:alert>																							</html:tab>																									<html:tab label="{attributes}">										<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableLine><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableLine></html:tableHeader><html:tableBody><html:tableLine><html:tableColumn>extraSmall</html:tableColumn><html:tableColumn>true</html:tableColumn><html:tableColumn>java.lang.Integer</html:tableColumn><html:tableColumn>Indicates the number of columns to fill to extra small viewport. Options: 1 to 12</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>small</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Integer</html:tableColumn><html:tableColumn>Indicates the number of columns to fill to small viewport. Options: 1 to 12</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>medium</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Integer</html:tableColumn><html:tableColumn>Indicates the number of columns to fill to medium viewport. Options: 1 to 12</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>large</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Integer</html:tableColumn><html:tableColumn>Indicates the number of columns to fill to large viewport. Options: 1 to 12</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>cssClass</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates a CSS class to the component</html:tableColumn></html:tableLine></html:tableBody></html:table>																																	</html:tab>																									<html:tab label="{demo}">																						
			<html:form action="#">
				<html:formGroup forElement="field1" label="Campo 1" required="true">
					<html:row>
						<html:col extraSmall="3">
							<html:input required="true" name="field1"/>
						</html:col>
						<html:col extraSmall="9">
							<html:input name="field2"/>
						</html:col>
					</html:row>
				</html:formGroup>
			</html:form> 																							</html:tab>																									<html:tab label="{source}">																					<html:code>																										&lt;html:view&gt;
			&lt;html:form action="#"&gt;
				&lt;html:formGroup forElement="field1" label="Campo 1" required="true"&gt;
					&lt;html:row&gt;
						&lt;html:col extraSmall="3"&gt;
							&lt;html:input required="true" name="field1"/&gt;
						&lt;/html:col&gt;
						&lt;html:col extraSmall="9"&gt;
							&lt;html:input name="field2"/&gt;
						&lt;/html:col&gt;
					&lt;/html:row&gt;
				&lt;/html:formGroup&gt;
			&lt;/html:form&gt; &lt;/html:view&gt;																					</html:code>																							</html:tab>																								</html:tabPanel>																						</html:cardBody>																						</html:card>																							</html:view>																			