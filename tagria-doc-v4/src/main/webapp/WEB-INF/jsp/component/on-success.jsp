<%@include file="../app/taglibs.jsp"  %>																							<html:view title="{title}" template="master" attribute="body">																													<html:card>																														<html:card-header>																				on-success							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders success block if the ajax request run smoothly											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:alert state="info" labelKey="tag.empty.attributes"></html:alert>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
			<html:input name="input1" value="Valor 0"/>
		
			<ajax:function name="dados" url="/app/ajax" execute="true">
				<ajax:parameters>
					<ajax:parameter name="input1" src="input1" type="val" />
				</ajax:parameters>
			    <ajax:on-success>
			    	   //function signature is f(data,textStatus,jqXHR):void. data: result data response, textStatus: status response text,jqXHR: ajax request object  */
			           alert(textStatus);
			           alert(data);
			           alert(jqXHR);
			    </ajax:on-success>
			    <ajax:on-error>
			          
			    </ajax:on-error>
			</ajax:function>
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
			&lt;html:input name="input1" value="Valor 0"/&gt;
		
			&lt;ajax:function name="dados" url="/app/ajax" execute="true"&gt;
				&lt;ajax:parameters&gt;
					&lt;ajax:parameter name="input1" src="input1" type="val" /&gt;
				&lt;/ajax:parameters&gt;
			    &lt;ajax:on-success&gt;
			    	   //function signature is f(data,textStatus,jqXHR):void. data: result data response, textStatus: status response text,jqXHR: ajax request object  */
			           alert(textStatus);
			           alert(data);
			           alert(jqXHR);
			    &lt;/ajax:on-success&gt;
			    &lt;ajax:on-error&gt;
			          
			    &lt;/ajax:on-error&gt;
			&lt;/ajax:function&gt;
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			