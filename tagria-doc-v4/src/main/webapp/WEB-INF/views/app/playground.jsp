<%@include file="taglibs.jsp"%>
<html:view title="Playground">


	<html:spinner label="Some label"/>

	<html:input name="teste" value="${ quotedValue }"/>
	<html:textarea name="teste" value="${ quotedValue }"/>


	<html:pdf attachToSelector="#mySpecialGrid"></html:pdf>

	<html:div id="printit">
		<html:div>
			Teste
		</html:div>
	</html:div>
	
	<html:form name="form2" id="form2" action="#" label="Validate">
		<html:formGroup label="Field validate 1">
			<html:input name="validate1" type="email" value="aa" maxLengthCount="true" maxLength="50"/>
		</html:formGroup>
		<html:formGroup label="Field validate 1">
			<html:input name="validate2" type="number" max="20" value="30"/>
		</html:formGroup>
		<html:formGroup label="Field validate 3">
			<html:input name="validate3" type="number" min="10" value="1"/>
		</html:formGroup>
		<html:formGroup label="Field validate 4">
			<html:input name="validate4" validateAs="date"/>
			<html:mask mask="99/99/9999" attachTo="validate4"></html:mask>
		</html:formGroup>
		<html:formGroup label="Field validate 5">
			<html:input name="validate5" validateAs="cpf" value="839.932.328-99"/>
		</html:formGroup>
	</html:form>


	<html:grid var="personAsObjectGrid" data="${ person }"
		label="Grid as single object" id="mySpecialGrid">
		<html:gridExport />
		<html:gridHeader>
			<html:gridColumn label="Person" align="left" exportable="true"></html:gridColumn>
			<html:gridColumn label="Other persons" align="left"></html:gridColumn>
		</html:gridHeader>
		<html:gridBody>
			<html:gridColumnData align="right" exportable="true"
				cssClass="border border-danger">
				${ personAsObjectGrid.id } - ${ personAsObjectGrid.name }
			</html:gridColumnData>
			<html:gridColumnData align="left" collapsable="true">
				<html:grid var="personAsObjectGrid2" data="${ person }"
					label="Sub grid">
					<html:gridExport />
					<html:gridHeader>
						<html:gridColumn label="Sub person" align="left" exportable="true"></html:gridColumn>
					</html:gridHeader>
					<html:gridBody>
						<html:gridColumnData align="right" exportable="true"
							cssClass="border border-danger">
							${ personAsObjectGrid2.id } - ${ personAsObjectGrid2.name }
						</html:gridColumnData>
					</html:gridBody>
				</html:grid>
			</html:gridColumnData>
		</html:gridBody>
	</html:grid>

	<html:grid var="personAsArrayGrid" data="${ personsArray }"
		label="Grid as array">
		<html:gridHeader>
			<html:gridColumn label="Person" align="left" exportable="true"></html:gridColumn>
		</html:gridHeader>
		<html:gridBody>
			<html:gridColumnData align="right" exportable="true"
				cssClass="border border-danger">
				${ personAsArrayGrid.id } - ${ personAsArrayGrid.name }
			</html:gridColumnData>
		</html:gridBody>
	</html:grid>

	<html:grid var="personAsEntryGrid" data="${ personsMap }"
		label="Grid as map">
		<html:gridHeader>
			<html:gridColumn label="Person" align="left" exportable="true"></html:gridColumn>
		</html:gridHeader>
		<html:gridBody>
			<html:gridColumnData align="right" exportable="true"
				cssClass="border border-danger">
				${ personAsEntryGrid.key } - ${ personAsEntryGrid.value }
			</html:gridColumnData>
		</html:gridBody>
	</html:grid>


	Persons as single object:
	<html:select name="field19" data="${ person }" var="personAsObject"
		required="true">
		<html:option value="${ personAsObject.id }">${ personAsObject.name }</html:option>
	</html:select>


	Persons as array:
	<html:select name="field19" data="${ personsArray }"
		var="personAsArray" required="true">
		<html:option value="${ personAsArray.id }">${ personAsArray.name }</html:option>
	</html:select>
	
	
	Persons as map:
	<html:select name="field19" data="${ personsMap }" var="personAsEntry"
		required="true">
		<html:option value="${ personAsEntry.key }">${ personAsEntry.value }</html:option>
	</html:select>


	Developed by JSL Solu��es LTDA ����es
	
	<html:switch name="MySwitch" value="1"></html:switch>


	<html:inputGroup>
		<html:inputGroup prepend="true">
			<html:button icon="trash" title="Search 1" />
		</html:inputGroup>
		<html:input type="search" name="search2" />
		<html:inputGroup append="true">
			<html:button icon="search" title="Search" />
		</html:inputGroup>
	</html:inputGroup>

	<html:popover attachTo="search2" label="My label" placement="bottom">
		My content
	</html:popover>


	<html:form action="#" label="My title"
		validation="/app/form/validation">


		<html:formOnBeforeSubmit>
			console.log('before submit event canceled');
			return false;
		</html:formOnBeforeSubmit>

		<html:formGroupRow>
			<html:col extraSmall="4">
				<html:formGroup label="Field 1 with an huge label of this one"
					required="true" forElement="field1"
					help="My another huge label <p> asd </p> teste">
					<html:input required="true" name="field1" maxLength="50"
						maxLengthCount="true" />
				</html:formGroup>
				<html:jsEvent event="blur" attachTo="field1">
					console.log('hello ' + new Date());
				</html:jsEvent>
			</html:col>
			<html:col extraSmall="4">
				<html:formGroup label="Field 3 with an huge label of this one"
					required="true" forElement="field3">
					<html:input required="true" name="field3" />
				</html:formGroup>
			</html:col>
			<html:col extraSmall="4">
				<html:formGroup label="Field 19" required="true"
					forElement="field19">
					<html:select name="field19" data="${ persons }" var="person"
						required="true">
						<html:option value="${ person.id }">${ person.name }</html:option>
					</html:select>
				</html:formGroup>
			</html:col>
		</html:formGroupRow>
		<html:formGroup label="Field 17" required="true" help="My help 2"
			visible="false">
			<html:textarea name="textarea17" required="true" maxLength="2"
				maxLengthCount="true"></html:textarea>
		</html:formGroup>
		<html:formGroup label="Field 18" required="true">
			<html:select name="filed18" data="${ persons }" var="person"
				required="true">
				<html:option value="${ person.id }">${ person.name }</html:option>
			</html:select>
		</html:formGroup>
		<html:formGroup label="One label">
			<html:icon icon="plus"></html:icon>
		</html:formGroup>
		<html:formGroup>
			<html:card>
				<html:cardBody>
					<html:formGroupRow>
						<html:col extraSmall="6">
							<html:formGroup label="Field 15" forElement="field15">
								<html:input name="field15" disabled="true"
									placeHolder="holder15" value="value15" />
							</html:formGroup>
						</html:col>
						<html:col extraSmall="6">
							<html:formGroup label="Field 16" forElement="field16">
								<html:input name="field16" disabled="true"
									placeHolder="holder16" value="value16" />
							</html:formGroup>
						</html:col>
					</html:formGroupRow>
				</html:cardBody>
			</html:card>
		</html:formGroup>

		<html:formGroup label="Field 2" forElement="field2">
			<html:input name="field2" disabled="true" placeHolder="holder2"
				value="value1" />
		</html:formGroup>
		<html:formGroup label="Field 14" forElement="field14">
			<html:input name="field14" disabled="true" placeHolder="holder14"
				value="value14" />
		</html:formGroup>

		<html:formGroupMultiple label="Groups 1" data="${ persons }"
			var="person" atLeast="1">


			<html:formGroupMultipleOnAfterInsert>
				console.log('after insert row ' + idx +  '=>' + element);
			</html:formGroupMultipleOnAfterInsert>

			<html:formGroupMultipleOnAfterRemove>
				console.log('after remove row ');
			</html:formGroupMultipleOnAfterRemove>

			<html:input name="fields3[]" required="true" value="${ person.name }" />
			<html:jsEvent event="blur" attachTo="fields3[]">
					console.log($(this).val());
				</html:jsEvent>
		</html:formGroupMultiple>


		<html:formToolbar>
			<html:button state="primary" type="submit" label="Label for submit" />
		</html:formToolbar>
	</html:form>


	<html:tabs>

		<html:tabsOnAfterShow>
			console.log(oldTab);
			console.log(newTab);
		</html:tabsOnAfterShow>

		<html:tabsHeader>
			<html:tabsTab data-id="mytabid" active="true" label="my tab 1"
				id="tab1"></html:tabsTab>
			<html:tabsTab label="my tab 2" id="tab2"></html:tabsTab>
			<html:tabsTab label="my tab 3" id="tab3"></html:tabsTab>
		</html:tabsHeader>
		<html:tabsBody>
			<html:tabsContent active="true" contentOf="tab1"> My content 1</html:tabsContent>
			<html:tabsContent contentOf="tab2"> My content 2</html:tabsContent>
			<html:tabsContent contentOf="tab3"> My content 3</html:tabsContent>
		</html:tabsBody>
	</html:tabs>


	<html:select name="s14" disabled="true" fixed="true">
		<html:option value="1">-1-</html:option>
		<html:option value="2">-2-</html:option>
		<html:option value="3">-3-</html:option>
	</html:select>


	<html:grid id="myGridId" var="person" data="${ persons }"
		label="My grid" url="/app/playground/v4">

		<html:gridExport filename="MyFileName" />
		<html:gridPaginate totalResults="200" />
		<html:gridSearch />

		<html:gridToolbar>
			<html:alert state="danger">my toolbars</html:alert>
		</html:gridToolbar>

		<html:gridHeader>
			<html:gridColumn labelKey="app.dev.by" align="left" exportable="true"></html:gridColumn>
			<html:gridColumn labelKey="grid.column1" align="center"
				exportable="true"></html:gridColumn>
			<html:gridColumn label="Column 3" align="center"></html:gridColumn>
		</html:gridHeader>
		<html:gridBody>
			<html:gridColumnData align="right" exportable="true"
				cssClass="border border-danger">
				${ person.name }
			</html:gridColumnData>
			<html:gridColumnData align="center" exportable="true"
				cssClass="border border-danger" formatter="boolean">
				${ person.likeChocolate }
			</html:gridColumnData>
			<html:gridColumnData align="center" collapsable="true"
				cssClass="border border-danger">
				${ person.cpf }
			</html:gridColumnData>
		</html:gridBody>
	</html:grid>



	<html:print />


	<html:div>
		<html:overlay>
			<html:div>
				Some content
			</html:div>
		</html:overlay>

		<html:button label="test"></html:button>


		<html:overlay>
			<html:buttonGroup>
				<html:button label="btn1"></html:button>
				<html:button label="btn2"></html:button>
			</html:buttonGroup>
		</html:overlay>

	</html:div>


	<html:link disabled="true" url="/a/abc">My disabled link</html:link>


	<html:inputGroup cssClass="form-group">
		<html:select name="s1">
			<html:option value="">---</html:option>
		</html:select>
		<html:label label="anotherLabel"></html:label>
		<html:button label="test"></html:button>
	</html:inputGroup>

	<html:row>
		<html:col extraSmall="3">
			<html:input required="true" name="field4" />
			<html:mask mask="99/99/9999" attachTo="field4">
				<html:maskOnKeypress>
					 console.log($(field[0]).attr('id'));
				</html:maskOnKeypress>
			</html:mask>
		</html:col>
		<html:col extraSmall="9">
			<html:input name="field5" />
			<html:maskCurrency attachTo="field5"></html:maskCurrency>
		</html:col>
	</html:row>




	<html:jsCode>
		if(random()){
			$('#par_field3').val('text by val');
		}
		
		if(random()){
			$('#par_filed18').val(2);
		}
		
		if(random()){
			$('#par_textarea17').val('textarea by val').change();
		}
		
		function random() {
			return Math.floor(Math.random() * 100) % 2 === 0;
		}
		
		hello = () => {
		  return "Hello World!";
		}
		
		console.log(' arrow function compiled: ' + hello());
	</html:jsCode>


	<security:authorize uri="/pessoa3" httpMethod="get">
		<html:button label="This button will not render" icon="search"
			id="btn3" url="/pessoa" />
	</security:authorize>

	<html:input name="ipt1" formatter="cpf" value="${ cpf }" />
	
	My date <html:format formatter="datetime">${ dateTime }</html:format>
	My cpf <html:format formatter="cpf">${ cpf }</html:format>
	My custom formatter  <html:format formatter="matriculaSap">${ cpf }</html:format>

	<html:autoComplete url="/app/autoComplete" name="myautoComplete">
		<html:autoCompleteOnSelect>
			console.log(value);
			console.log(text);
		</html:autoCompleteOnSelect>
	</html:autoComplete>


	<html:input name="mydate"></html:input>
	<html:datePicker attachTo="mydate" min="1" max="2"></html:datePicker>
	<html:tooltip attachTo="mydate">My tooltip</html:tooltip>

	<ajax:function url="/app/ajax/list" name="ajaxPersons" execute="true">
		<ajax:parameters>
			<ajax:parameter name="param1" value="1"></ajax:parameter>
		</ajax:parameters>

		<ajax:onSuccess>
			console.log('success');
			<ajax:mapOptions value="id" target="ajaxSelect" text="name"></ajax:mapOptions>
		</ajax:onSuccess>
		<ajax:onError>
			console.log('error');
		</ajax:onError>
		<ajax:onDone>
			console.log('done');
		</ajax:onDone>
	</ajax:function>

	<html:select name="ajaxSelect" searchable="true">
		<html:option value="">---</html:option>
	</html:select>

	<html:cssCode>
		.mystyle {
			background-color:   red;
		}
		.mystyle2 {
			color: white;
		}
	</html:cssCode>

	<html:div cssClass="mystyle mystyle2">
		styled div ${ descriptions }
	</html:div>






	<html:menu dark="true">
		<html:menuBrand label="my brand" url="/app/playground"></html:menuBrand>
		<html:menuCollapse attachToSelector="#block1" />
		<html:menuCollapsable id="block1">
			<html:menuDropdown label="Menu">
				<html:menuDropdownItem label="Item 1" url="#" />
				<html:menuDropdownDivider />
				<html:menuDropdownItem label="Item 2" target="_blank" url="#" />
				<html:menuDropdownItem icon="trash" label="Item 3" url="#" />
			</html:menuDropdown>
			<html:menuLink label="My link" url="#" />
		</html:menuCollapsable>
	</html:menu>


	<html:table dark="true" hover="true" stripe="true">
		<html:tableCaption>
			Caption
		</html:tableCaption>
		<html:tableHeader light="true">
			<html:tableRow>
				<html:tableHead>Head 1</html:tableHead>
			</html:tableRow>
		</html:tableHeader>
		<html:tableBody>
			<html:tableRow>
				<html:tableData>Column 1</html:tableData>
			</html:tableRow>
			<html:tableRow state="danger">
				<html:tableData>Value 1</html:tableData>
			</html:tableRow>
		</html:tableBody>
		<html:tableFooter>
			<html:tableRow>
				<html:tableData>Foot 1</html:tableData>
			</html:tableRow>
			<html:tableRow state="danger">
				<html:tableData>Foot value 1</html:tableData>
			</html:tableRow>
		</html:tableFooter>
	</html:table>




	<html:buttonGroup>
		<html:button label="My button" icon="search" id="btn1" />
		<html:button label="My button 2" icon="plus" id="btn2" state="danger"
			filled="true" />
	</html:buttonGroup>

	<html:modal attachToSelector="#btn1">
		<html:modalHeader label="My modal title"></html:modalHeader>
		<html:modalBody>
			Here is my component
		</html:modalBody>
		<html:modalFooter>
			My footer
		</html:modalFooter>
	</html:modal>


	<html:card>
		<html:cardImage url="/assets/image/person.png" width="32" height="32"
			responsive="false" alt="logo"></html:cardImage>
		<html:cardHeader>
			My header
		</html:cardHeader>
		<html:cardBody>
			<html:cardTitle>My title</html:cardTitle>
			<html:cardSubTitle>My subtitle</html:cardSubTitle>
			<html:cardText>My text</html:cardText>
			<html:cardLink label="My link 1" url="#"></html:cardLink>
		</html:cardBody>
		<html:cardFooter>
			My footer
		</html:cardFooter>
	</html:card>

	<html:listGroup>
		<html:listGroupItem>Item 1</html:listGroupItem>
		<html:listGroupItem>Item 2</html:listGroupItem>
		<html:listGroupItem>Item 3</html:listGroupItem>
	</html:listGroup>

	<html:jsCode>
		console.log('js code as component');
	</html:jsCode>

	<html:jsEvent event="click" attachToSelector="#btn2">
		console.log('btn 2 clicked');
	</html:jsEvent>

	<html:carousel>
		<html:carouselItem active="true" label="Item 1"
			description="Description 1">
			<html:carouselImage
				url="https://solutionsreview.com/content-management/files/2017/08/Sungard-AS-Launches-Sovereign-Cloud-Consulting-and-Services.jpg"
				width="800" height="400" alt="logo" />
		</html:carouselItem>
		<html:carouselItem label="Item 2" description="Description 2">
			<html:carouselImage
				url="https://www.milesweb.com/blog/wp-content/uploads/2017/12/cloud-computing-in-iot-800x400.jpg"
				width="800" height="400" alt="logo" />
		</html:carouselItem>
	</html:carousel>

	<html:dropDown label="List">
		<html:dropDownItem label="Item 1" url="#" />
		<html:dropDownDivider />
		<html:dropDownItem label="Item 2" target="_blank" url="#" />
		<html:dropDownItem icon="trash" label="Item 3" url="#" />
	</html:dropDown>



	<html:img url="/assets/image/person.png" alt="logo" responsive="true" />
	<html:icon icon="cog" />

	<html:div>
		Div tag
	</html:div>

	<html:block>
		Block tag
	</html:block>

	<html:dataBlock extraSmall="12" medium="4" small="4" large="4"
		data="${ persons }" var="person">
		<html:alert state="success">
			${ person.name }
		</html:alert>
	</html:dataBlock>




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

	<html:h4>
		H3 header 
	</html:h4>

	<html:small>
		small text
	</html:small>

	<html:p>
		Paragraph 
	</html:p>

	<html:span>Span</html:span>

	<html:code>
private class Java {
	private String id;
	private String name;
}
</html:code>

	<html:link label="My link" url="#" />



	<html:recaptcha siteKey="fdaf9dsj9j" />

	<html:input name="dl" list="myDatalist1" />
	<html:dataList id="myDatalist1" data="${ persons }" var="person">
		<html:dataListOption value="${ person.id }">
			${ person.name }
		</html:dataListOption>
	</html:dataList>

	<html:select name="select1" data="${ persons }" var="person">
		<html:option value="${ person.id }">
			${ person.name }
		</html:option>
	</html:select>

	<html:textarea name="textarea1" rows="3">
		My textarea
		with
		new
		line
	</html:textarea>

	<html:jumbotron>
		<html:h1>
			Header
		</html:h1>
	</html:jumbotron>

	<html:collapsable label="Label 1">
		Components
	</html:collapsable>



	<html:button id="btn3" label="Confirm that ?" url="#" />
	<html:confirm url="#" label="Confirm title" attachToSelector="#btn3" />

	<html:import url="/assets/css/example.css" type="css"></html:import>
	<html:import url="/assets/js/example.js" type="js"></html:import>

	<html:iframe url="/" name="content" title="My iframe title" />




</html:view>