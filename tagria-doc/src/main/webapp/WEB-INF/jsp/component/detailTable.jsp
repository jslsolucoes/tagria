<%@include file="../app/taglibs.jsp"%>										<html:view title="{title}">																	<html:card>																									<html:cardHeader label="detailTable"/>												<html:cardBody>																								<html:tabPanel>																									<html:tab label="{about}" active="true">																	<html:alert state="warning">																				     	Renders a detail table																			</html:alert>																							</html:tab>																									<html:tab label="{attributes}">										<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableLine><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableLine></html:tableHeader><html:tableBody><html:tableLine><html:tableColumn>label</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates the label component</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>data</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.util.Collection</html:tableColumn><html:tableColumn>Indicates the collection to be iterated in component</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>var</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates the name of the variable java to be made available the object of iteration</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>atLeast</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Integer</html:tableColumn><html:tableColumn>Indicates the minimum number of lines to be filled</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>empty</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates whether the component should start without lines</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>afterInsert</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates a javascript function to be performed after inserting a row</html:tableColumn></html:tableLine></html:tableBody></html:table>																																	</html:tab>																									<html:tab label="{demo}">																						
			<html:form action="#" label="Form with details">
				<html:formGroup>
					<html:detailTable atLeast="1" label="Persons details">
						<html:detailTableColumn label="Name" required="true">
							<html:input name="names[]" required="true"/>
						</html:detailTableColumn>
						<html:detailTableColumn label="Age" required="true">
							<html:input name="ages[]" type="number" required="true"/>
						</html:detailTableColumn>
					</html:detailTable>
				</html:formGroup>
			</html:form>
																									</html:tab>																									<html:tab label="{source}">																					<html:code>																										&lt;html:view&gt;
			&lt;html:form action="#" label="Form with details"&gt;
				&lt;html:formGroup&gt;
					&lt;html:detailTable atLeast="1" label="Persons details"&gt;
						&lt;html:detailTableColumn label="Name" required="true"&gt;
							&lt;html:input name="names[]" required="true"/&gt;
						&lt;/html:detailTableColumn&gt;
						&lt;html:detailTableColumn label="Age" required="true"&gt;
							&lt;html:input name="ages[]" type="number" required="true"/&gt;
						&lt;/html:detailTableColumn&gt;
					&lt;/html:detailTable&gt;
				&lt;/html:formGroup&gt;
			&lt;/html:form&gt;
		&lt;/html:view&gt;																					</html:code>																							</html:tab>																								</html:tabPanel>																						</html:cardBody>																						</html:card>																							</html:view>																			