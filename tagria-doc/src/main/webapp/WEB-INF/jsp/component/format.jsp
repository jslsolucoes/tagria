<%@include file="../app/taglibs.jsp"%>										<html:view title="{title}">																	<html:card>																									<html:cardHeader>															format							</html:cardHeader>																						<html:cardBody>																								<html:tabPanel>																									<html:tab label="{about}" active="true">																	<html:alert state="warning">																				     	Format values																			</html:alert>																							</html:tab>																									<html:tab label="{attributes}">										<html:table stripe="true" hover="true"><html:tableHeader light="true"><html:tableLine><html:tableHead><fmt:message key="tag.attribute"/></html:tableHead><html:tableHead><fmt:message key="tag.required"/></html:tableHead><html:tableHead><fmt:message key="tag.type"/></html:tableHead><html:tableHead><fmt:message key="tag.description"/></html:tableHead></html:tableLine></html:tableHeader><html:tableBody><html:tableLine><html:tableColumn>type</html:tableColumn><html:tableColumn>true</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates a type format in which the value must be converted. Options: date,datetime, timestamp, hour, currency, zipCode, cnpj, tel, cpf</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>match</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates a match regular expression value</html:tableColumn></html:tableLine><html:tableLine><html:tableColumn>replace</html:tableColumn><html:tableColumn>false</html:tableColumn><html:tableColumn>java.lang.String</html:tableColumn><html:tableColumn>It indicates a replace regular expression value</html:tableColumn></html:tableLine></html:tableBody></html:table>																																	</html:tab>																									<html:tab label="{demo}">																						
			<html:format type="currency"> ${ myValue} </html:format>
																									</html:tab>																									<html:tab label="{source}">																					<html:code>																										&lt;html:view&gt;
			&lt;html:format type="currency"&gt; \${ myValue} &lt;/html:format&gt;
		&lt;/html:view&gt;																					</html:code>																							</html:tab>																								</html:tabPanel>																						</html:cardBody>																						</html:card>																							</html:view>																			