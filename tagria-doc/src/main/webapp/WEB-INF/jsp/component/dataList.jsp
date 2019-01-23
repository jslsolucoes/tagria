<%@include file="../app/taglibs.jsp"%>
<html:view title="{title}">
	<html:card>
		<html:cardHeader label="dataList" />
		<html:cardBody>
			<html:tabPanel>
				<html:tab label="{about}" active="true">
					<html:alert state="warning">																				     	Renders a data list component																			</html:alert>
				</html:tab>
				<html:tab label="{attributes}">
					<html:table stripe="true" hover="true">
						<html:tableHeader light="true">
							<html:tableLine>
								<html:tableHead>
									<fmt:message key="tag.attribute" />
								</html:tableHead>
								<html:tableHead>
									<fmt:message key="tag.required" />
								</html:tableHead>
								<html:tableHead>
									<fmt:message key="tag.type" />
								</html:tableHead>
								<html:tableHead>
									<fmt:message key="tag.description" />
								</html:tableHead>
							</html:tableLine>
						</html:tableHeader>
						<html:tableBody>
							<html:tableLine>
								<html:tableColumn>id</html:tableColumn>
								<html:tableColumn>true</html:tableColumn>
								<html:tableColumn>java.lang.String</html:tableColumn>
								<html:tableColumn>Indicates the id for the component</html:tableColumn>
							</html:tableLine>
							<html:tableLine>
								<html:tableColumn>data</html:tableColumn>
								<html:tableColumn>false</html:tableColumn>
								<html:tableColumn>java.util.Collection</html:tableColumn>
								<html:tableColumn>Indicates the collection to be iterated in component</html:tableColumn>
							</html:tableLine>
							<html:tableLine>
								<html:tableColumn>map</html:tableColumn>
								<html:tableColumn>false</html:tableColumn>
								<html:tableColumn>java.util.Map</html:tableColumn>
								<html:tableColumn>Indicates the map to be iterated in component</html:tableColumn>
							</html:tableLine>
							<html:tableLine>
								<html:tableColumn>fixed</html:tableColumn>
								<html:tableColumn>false</html:tableColumn>
								<html:tableColumn>java.lang.Boolean</html:tableColumn>
								<html:tableColumn>Indicates that component has fixed options</html:tableColumn>
							</html:tableLine>
							<html:tableLine>
								<html:tableColumn>var</html:tableColumn>
								<html:tableColumn>false</html:tableColumn>
								<html:tableColumn>java.lang.String</html:tableColumn>
								<html:tableColumn>It indicates the name of the variable java to be made available the object of iteration</html:tableColumn>
							</html:tableLine>
						</html:tableBody>
					</html:table>
				</html:tab>
				<html:tab label="{demo}">
					<html:input name="dl" list="myDatalist1" />
					<html:dataList id="myDatalist1" data="${ persons }" var="person">
						<html:option value="${ person.id }">
					${ person.name }
				</html:option>
					</html:dataList>
				</html:tab>
				<html:tab label="{source}">
					<html:code>																										&lt;html:view&gt;
			&lt;html:input name="dl" list="myDatalist1"/&gt;
			&lt;html:dataList id="myDatalist1" data="\${ persons }" var="person"&gt;
				&lt;html:option value="\${ person.id }"&gt;
					\${ person.name }
				&lt;/html:option&gt;
			&lt;/html:dataList&gt;
		&lt;/html:view&gt;																					</html:code>
				</html:tab>
			</html:tabPanel>
		</html:cardBody>
	</html:card>
</html:view>
