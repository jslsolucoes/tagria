<%@include file="../app/taglibs.jsp"%>										<html:view title="{title}">																	<html:card>																									<html:cardHeader label="cardImage"/>												<html:cardBody>																								<html:tabPanel>																									<html:tab label="{about}" active="true">																	<html:alert state="warning">																				     	Renders an card image																			</html:alert>																							</html:tab>																									<html:tab label="{attributes}">										<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableLine><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableLine></html:tableHeader><html:tableBody><html:tableLine><html:tableColumn>rendered</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates if the component should be rendered. Default : true</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>alt</html:tableColumn><html:tableColumn>true</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates the alt of image</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>cdn</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates if the component must be loaded from cdn</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>url</html:tableColumn><html:tableColumn>true</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>Indicates the image url</html:tableColumn></html:tableLine></html:tableBody></html:table>																																	</html:tab>																									<html:tab label="{demo}">																						
			<html:card>
				<html:cardImage url="/image/person.png" alt="logo"/>
			</html:card>
																									</html:tab>																									<html:tab label="{source}">																					<html:code>																										&lt;html:view&gt;
			&lt;html:card&gt;
				&lt;html:cardImage url="/image/person.png" alt="logo"/&gt;
			&lt;/html:card&gt;
		&lt;/html:view&gt;																					</html:code>																							</html:tab>																								</html:tabPanel>																						</html:cardBody>																						</html:card>																							</html:view>																			