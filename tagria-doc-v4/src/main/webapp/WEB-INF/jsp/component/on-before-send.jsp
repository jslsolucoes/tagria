<%@include file="../app/taglibs.jsp"%>																							<html:view title="{title}">																													<html:card>																														<html:card-header>																				on-before-send							</html:card-header>																											<html:card-body>																												<html:tabs>																														<html:tabs-header>																												<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab> 												<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab> 														<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab> 																<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab> 														</html:tabs-header> 																										<html:tabs-body> 																												<html:tabs-content active="true" contentOf="tab1">																			<html:alert state="warning">													Renders before send block on ajax request											</html:alert>																											</html:tabs-content>																										<html:tabs-content contentOf="tab2">												<html:alert state="info" labelKey="tag.empty.attributes"></html:alert>										</html:tabs-content>																								<html:tabs-content contentOf="tab3">										
				<ajax:function name="data" url="/app/ajax" execute="true">
			    <ajax:beforeSend>
			    	    /* Available javascript variables ( jqXHR jqXHR, Object settings )*/
			           alert(settings);
			           alert(jqXHR);
			    </ajax:beforeSend>
			</ajax:function>
												</html:tabs-content>																								<html:tabs-content contentOf="tab4">																					<html:code>																												&lt;html:view&gt;
				&lt;ajax:function name="data" url="/app/ajax" execute="true"&gt;
			    &lt;ajax:beforeSend&gt;
			    	    /* Available javascript variables ( jqXHR jqXHR, Object settings )*/
			           alert(settings);
			           alert(jqXHR);
			    &lt;/ajax:beforeSend&gt;
			&lt;/ajax:function&gt;
		&lt;/html:view&gt;												</html:code>																									</html:tabs-content>																							</html:tabs-body> 																								</html:tabs>																									</html:card-body>																								</html:card>																									</html:view>																			