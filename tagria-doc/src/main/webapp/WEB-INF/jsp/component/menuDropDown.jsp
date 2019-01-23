<%@include file="../app/taglibs.jsp"%>										<html:view title="{title}">																	<html:card>																									<html:cardHeader label="menuDropDown"/>												<html:cardBody>																								<html:tabPanel>																									<html:tab label="{about}" active="true">																	<html:alert state="warning">																				     	Renders a dropdown menu																			</html:alert>																							</html:tab>																									<html:tab label="{attributes}">										<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableLine><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableLine></html:tableHeader><html:tableBody><html:tableLine><html:tableColumn>label</html:tableColumn><html:tableColumn>true</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates the label to be used in dropdown root</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>rendered</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.Boolean</html:tableColumn><html:tableColumn>It indicates whether the component should be rendered</html:tableColumn></html:tableLine></html:tableBody></html:table>																																	</html:tab>																									<html:tab label="{demo}">																						
				<html:menuDropDown label="Menu dropdown" >
					<html:menuDropDownItem label="Item 1" url="#"/>
				</html:menuDropDown> 																							</html:tab>																									<html:tab label="{source}">																					<html:code>																										&lt;html:view&gt;
				&lt;html:menuDropDown label="Menu dropdown" &gt;
					&lt;html:menuDropDownItem label="Item 1" url="#"/&gt;
				&lt;/html:menuDropDown&gt; &lt;/html:view&gt;																					</html:code>																							</html:tab>																								</html:tabPanel>																						</html:cardBody>																						</html:card>																							</html:view>																			