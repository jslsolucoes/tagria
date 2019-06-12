<%@include file="../app/taglibs.jsp"%>
<html:view title="{title}">
	<html:card>
		<html:card-header>																				button							</html:card-header>
		<html:card-body>
			<html:tabs>
				<html:tabs-header>
					<html:tabs-tab active="true" labelKey="about" id="tab1"></html:tabs-tab>
					<html:tabs-tab labelKey="attributes" id="tab2"></html:tabs-tab>
					<html:tabs-tab labelKey="demo" id="tab3"></html:tabs-tab>
					<html:tabs-tab labelKey="source" id="tab4"></html:tabs-tab>
				</html:tabs-header>
				<html:tabs-body>
					<html:tabs-content active="true" contentOf="tab1">
						<html:alert state="warning">													Renders a button											</html:alert>
					</html:tabs-content>
					<html:tabs-content contentOf="tab2">
						<html:table stripe="true" hover="true">
							<html:thead light="true">
								<html:tr>
									<html:th>
										<fmt:message key="tag.attribute" />
									</html:th>
									<html:th>
										<fmt:message key="tag.required" />
									</html:th>
									<html:th>
										<fmt:message key="tag.type" />
									</html:th>
									<html:th>
										<fmt:message key="tag.description" />
									</html:th>
								</html:tr>
							</html:thead>
							<html:tbody>
								<html:tr>
									<html:td>state</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>Indicates the status of the button. Default: default. Options: default, primary, danger, info, success</html:td>
								</html:tr>
								<html:tr>
									<html:td>type</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>Indicates the type of button. Default: button. Options: button, submit</html:td>
								</html:tr>
								<html:tr>
									<html:td>dismiss</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.Boolean</html:td>
									<html:td>Indicates the component linked to dismiss button. Default false. Options: true,false</html:td>
								</html:tr>
								<html:tr>
									<html:td>filled</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.Boolean</html:td>
									<html:td>Indicates the if button is full filled. Default false. Options: true,false</html:td>
								</html:tr>
								<html:tr>
									<html:td>cssClass</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>It indicates a CSS class to the component</html:td>
								</html:tr>
								<html:tr>
									<html:td>url</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>Indicates the url to be performed by the component</html:td>
								</html:tr>
								<html:tr>
									<html:td>icon</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>Indicates the icon to be used by the component. available list https://fontawesome.com/icons</html:td>
								</html:tr>
								<html:tr>
									<html:td>id</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>Indicates the component's id</html:td>
								</html:tr>
								<html:tr>
									<html:td>label</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>Indicates the label component</html:td>
								</html:tr>
								<html:tr>
									<html:td>labelKey</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>Indicates the label key (i18n) component</html:td>
								</html:tr>
								<html:tr>
									<html:td>target</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>Indicates the component target. Default: _self. Options: _blank, _newtab, _parent, nomedoiframe</html:td>
								</html:tr>
								<html:tr>
									<html:td>title</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>Indicates the title button</html:td>
								</html:tr>
								<html:tr>
									<html:td>titleKey</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.String</html:td>
									<html:td>Indicates the title key(i18n) button</html:td>
								</html:tr>
								<html:tr>
									<html:td>rendered</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.Boolean</html:td>
									<html:td>It indicates whether the component should be rendered. Default : true</html:td>
								</html:tr>
								<html:tr>
									<html:td>autoblock</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.Boolean</html:td>
									<html:td>It indicates whether the component should be blocked after click . Default : false</html:td>
								</html:tr>
								<html:tr>
									<html:td>disabled</html:td>
									<html:td>false</html:td>
									<html:td>java.lang.Boolean</html:td>
									<html:td>It indicates whether the component should be disabled. Default: false.</html:td>
								</html:tr>
							</html:tbody>
						</html:table>
					</html:tabs-content>
					<html:tabs-content contentOf="tab3">
						<html:button label="My button" icon="search" />
					</html:tabs-content>
					<html:tabs-content contentOf="tab4">
						<html:code>																												&lt;html:view&gt;
		   &lt;html:button label="My button" icon="search" /&gt;
		&lt;/html:view&gt;												</html:code>
					</html:tabs-content>
				</html:tabs-body>
			</html:tabs>
		</html:card-body>
	</html:card>
</html:view>
