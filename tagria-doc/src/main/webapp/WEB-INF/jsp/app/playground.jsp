<%@include file="../app/taglibs.jsp"%>
<html:view title="Playground">

	<html:menu dark="true">
		<html:menu-brand label="my brand" url="/app/playground"></html:menu-brand>
		<html:menu-collapse attachToSelector="#block1" />
		<html:menu-collapsable id="block1">
			<html:menu-dropdown label="Menu">
				<html:menu-dropdown-item label="Item 1" url="#" />
				<html:menu-dropdown-divider />
				<html:menu-dropdown-item label="Item 2" target="_blank" url="#" />
				<html:menu-dropdown-item icon="trash" label="Item 3" url="#" />
			</html:menu-dropdown>
			<html:menu-link label="My link" url="#" />
		</html:menu-collapsable>
	</html:menu>


	<html:table dark="true" hover="true" stripe="true">
		<html:thead light="dark">
			<html:tr>
				<html:th label="My label"></html:th>
			</html:tr>
		</html:thead>
		<html:tbody>
			<html:tr>
				<html:td state="info"> hello </html:td>
			</html:tr>
		</html:tbody>
		<html:tfoot>
			<html:tr>
				<html:td>Foot 1</html:td>
			</html:tr>
			<html:tr state="danger">
				<html:td>Foot value 1</html:td>
			</html:tr>
		</html:tfoot>
	</html:table>


	<html:tabs>
		<html:tabs-header>
			<html:tabs-tab active="true" label="my tab 1" id="tab1"></html:tabs-tab>
			<html:tabs-tab label="my tab 2" id="tab2"></html:tabs-tab>
			<html:tabs-tab label="my tab 3" id="tab3"></html:tabs-tab>
		</html:tabs-header>
		<html:tabs-body>
			<html:tabs-content active="true" contentOf="tab1"> My content 1</html:tabs-content>
			<html:tabs-content contentOf="tab2"> My content 2</html:tabs-content>
			<html:tabs-content contentOf="tab3"> My content 3</html:tabs-content>
		</html:tabs-body>
	</html:tabs>

	<html:button-group>
		<html:button label="My button" icon="search" id="btn1" />
		<html:button label="My button 2" icon="plus" id="btn2" state="danger"
			filled="true" />
	</html:button-group>

	<html:modal attachToSelector="#btn1">
		<html:modal-header label="My modal title"></html:modal-header>
		<html:modal-body>
			Here is my component
		</html:modal-body>
		<html:modal-footer>
			My footer
		</html:modal-footer>
	</html:modal>


	<html:card>
		<html:card-image url="/image/person.png" width="32" height="32"
			responsive="false"></html:card-image>
		<html:card-header>
			My header
		</html:card-header>
		<html:card-body>
			<html:card-title>My title</html:card-title>
			<html:card-sub-title>My subtitle</html:card-sub-title>
			<html:card-text>My text</html:card-text>
			<html:card-link label="My link 1" url="#"></html:card-link>
		</html:card-body>
		<html:card-footer>
			My footer
		</html:card-footer>
	</html:card>

	<html:listgroup>
		<html:listgroup-item>Item 1</html:listgroup-item>
		<html:listgroup-item>Item 2</html:listgroup-item>
		<html:listgroup-item>Item 3</html:listgroup-item>
	</html:listgroup>

	<html:js-code>
		console.log('js code as component');
	</html:js-code>

	<html:js-event event="click" attachToSelector="#btn2">
		console.log('btn 2 clicked');
	</html:js-event>

	<html:carousel>
		<html:carousel-item active="true" label="Item 1"
			description="Description 1">
			<html:carousel-image
				url="https://solutionsreview.com/content-management/files/2017/08/Sungard-AS-Launches-Sovereign-Cloud-Consulting-and-Services.jpg"
				width="800" height="400" alt="logo" />
		</html:carousel-item>
		<html:carousel-item label="Item 2" description="Description 2">
			<html:carousel-image
				url="https://www.milesweb.com/blog/wp-content/uploads/2017/12/cloud-computing-in-iot-800x400.jpg"
				width="800" height="400" alt="logo" />
		</html:carousel-item>
	</html:carousel>

	<html:dropdown label="List">
		<html:dropdown-item label="Item 1" url="#" />
		<html:dropdown-divider />
		<html:dropdown-item label="Item 2" target="_blank" url="#" />
		<html:dropdown-item icon="trash" label="Item 3" url="#" />
	</html:dropdown>

	<html:form action="#">
		<html:form-header label="My title" />

		<html:form-body>
			<html:form-group label="Field 1" required="true">
				<html:input required="true" name="field1" />
			</html:form-group>
			<html:form-group label="Field 2">
				<html:input name="field2" />
			</html:form-group>
			<html:form-group-multiple label="Groups 1" data="${ persons }"
				var="person" atLeast="1">
				<html:input name="fields3[]" required="true"
					value="${ person.name }" />
				<html:js-event event="blur" attachTo="fields3[]">
					console.log($(this).val());
				</html:js-event>
			</html:form-group-multiple>
		</html:form-body>

		<html:form-footer>
			<html:button state="primary" type="submit" label="Label for submit" />
		</html:form-footer>
	</html:form>

	<html:img url="/image/person.png" alt="logo" responsive="true" />
	<html:icon icon="cog" />

	<html:div>
		Div tag
	</html:div>

	<html:block>
		Block tag
	</html:block>

	<html:data-block extraSmall="12" medium="4" small="4" large="1"
		data="${ persons }" var="person">
		<html:alert state="success">
			${ person.name }
		</html:alert>
	</html:data-block>


	<html:row>
		<html:col extraSmall="3">
			<html:input required="true" name="field4" />
			<html:mask mask="99/99/9999" attachTo="field4">
				<html:mask-on-keypress>
					 console.log($(field[0]).attr('id'));
				</html:mask-on-keypress>
			</html:mask>
		</html:col>
		<html:col extraSmall="9">
			<html:input name="field5" />
			<html:mask-currency attachTo="field5"></html:mask-currency>
		</html:col>
	</html:row>

	<html:container>
		<html:alert state="info">
			Component inside container
		</html:alert>
	</html:container>

	<html:h1>
		H1 header
	</html:h1>

	<html:h2>
		H2 header 
	</html:h2>

	<html:h3>
		H3 header 
	</html:h3>

	<html:small>
		small text
	</html:small>

	<html:p>
		Paragraph 
	</html:p>

	<html:code>
		private class Java {
			private String id;
			private String name;
		}
	</html:code>

	<html:link label="My link" url="#" />

	<html:iframe url="/app/welcome" name="content" />

</html:view>