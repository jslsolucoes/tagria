<%@include file="../app/taglibs.jsp"%>
<html:view title="{title}">

	<html:import type="css" url="/css/app.css"></html:import>

	<html:body cssClass="mt-60px">
		<html:menu fixed="top">
			<html:container>
				<html:menuBrand url="/" label="{title}"></html:menuBrand>
			</html:container>
		</html:menu>

		<html:container>
			<html:div cssClass="left float-left">
				<html:div cssClass="menu"><html:listGroup><html:listGroupItem><html:collapsable label="Ajax"><html:listGroup><html:listGroupItem><html:link label="BeforeSend" target="conteudo" url="/component/beforeSend"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Function" target="conteudo" url="/component/function"></html:link></html:listGroupItem><html:listGroupItem><html:link label="MapOptions" target="conteudo" url="/component/mapOptions"></html:link></html:listGroupItem><html:listGroupItem><html:link label="OnDone" target="conteudo" url="/component/onDone"></html:link></html:listGroupItem><html:listGroupItem><html:link label="OnError" target="conteudo" url="/component/onError"></html:link></html:listGroupItem><html:listGroupItem><html:link label="OnSuccess" target="conteudo" url="/component/onSuccess"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Parameter" target="conteudo" url="/component/parameter"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Parameters" target="conteudo" url="/component/parameters"></html:link></html:listGroupItem><html:listGroupItem><html:link label="PreCode" target="conteudo" url="/component/preCode"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Target" target="conteudo" url="/component/target"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Button"><html:listGroup><html:listGroupItem><html:link label="Button" target="conteudo" url="/component/button"></html:link></html:listGroupItem><html:listGroupItem><html:link label="ButtonGroup" target="conteudo" url="/component/buttonGroup"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Card"><html:listGroup><html:listGroupItem><html:link label="Card" target="conteudo" url="/component/card"></html:link></html:listGroupItem><html:listGroupItem><html:link label="CardBody" target="conteudo" url="/component/cardBody"></html:link></html:listGroupItem><html:listGroupItem><html:link label="CardFooter" target="conteudo" url="/component/cardFooter"></html:link></html:listGroupItem><html:listGroupItem><html:link label="CardHeader" target="conteudo" url="/component/cardHeader"></html:link></html:listGroupItem><html:listGroupItem><html:link label="CardImage" target="conteudo" url="/component/cardImage"></html:link></html:listGroupItem><html:listGroupItem><html:link label="CardText" target="conteudo" url="/component/cardText"></html:link></html:listGroupItem><html:listGroupItem><html:link label="CardTitle" target="conteudo" url="/component/cardTitle"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Carousel"><html:listGroup><html:listGroupItem><html:link label="Carousel" target="conteudo" url="/component/carousel"></html:link></html:listGroupItem><html:listGroupItem><html:link label="CarouselImage" target="conteudo" url="/component/carouselImage"></html:link></html:listGroupItem><html:listGroupItem><html:link label="CarouselItem" target="conteudo" url="/component/carouselItem"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Detail table"><html:listGroup><html:listGroupItem><html:link label="MultipleFormGroup" target="conteudo" url="/component/multipleFormGroup"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Form"><html:listGroup><html:listGroupItem><html:link label="Col" target="conteudo" url="/component/col"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Form" target="conteudo" url="/component/form"></html:link></html:listGroupItem><html:listGroupItem><html:link label="FormGroup" target="conteudo" url="/component/formGroup"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Row" target="conteudo" url="/component/row"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Grid"><html:listGroup><html:listGroupItem><html:link label="Grid" target="conteudo" url="/component/grid"></html:link></html:listGroupItem><html:listGroupItem><html:link label="GridColumn" target="conteudo" url="/component/gridColumn"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Groupments"><html:listGroup><html:listGroupItem><html:link label="InputGroup" target="conteudo" url="/component/inputGroup"></html:link></html:listGroupItem><html:listGroupItem><html:link label="ListGroup" target="conteudo" url="/component/listGroup"></html:link></html:listGroupItem><html:listGroupItem><html:link label="ListGroupItem" target="conteudo" url="/component/listGroupItem"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Html"><html:listGroup><html:listGroupItem><html:link label="Body" target="conteudo" url="/component/body"></html:link></html:listGroupItem><html:listGroupItem><html:link label="H1" target="conteudo" url="/component/h1"></html:link></html:listGroupItem><html:listGroupItem><html:link label="H2" target="conteudo" url="/component/h2"></html:link></html:listGroupItem><html:listGroupItem><html:link label="H3" target="conteudo" url="/component/h3"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Hr" target="conteudo" url="/component/hr"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Link" target="conteudo" url="/component/link"></html:link></html:listGroupItem><html:listGroupItem><html:link label="P" target="conteudo" url="/component/p"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Small" target="conteudo" url="/component/small"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Image"><html:listGroup><html:listGroupItem><html:link label="Icon" target="conteudo" url="/component/icon"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Img" target="conteudo" url="/component/img"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Input"><html:listGroup><html:listGroupItem><html:link label="Autocomplete" target="conteudo" url="/component/autocomplete"></html:link></html:listGroupItem><html:listGroupItem><html:link label="AutocompleteItem" target="conteudo" url="/component/autocompleteItem"></html:link></html:listGroupItem><html:listGroupItem><html:link label="AutocompleteOnSelect" target="conteudo" url="/component/autocompleteOnSelect"></html:link></html:listGroupItem><html:listGroupItem><html:link label="DataList" target="conteudo" url="/component/dataList"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Input" target="conteudo" url="/component/input"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Option" target="conteudo" url="/component/option"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Select" target="conteudo" url="/component/select"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Textarea" target="conteudo" url="/component/textarea"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Javascript"><html:listGroup><html:listGroupItem><html:link label="JsCode" target="conteudo" url="/component/jsCode"></html:link></html:listGroupItem><html:listGroupItem><html:link label="JsEvent" target="conteudo" url="/component/jsEvent"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Layout"><html:listGroup><html:listGroupItem><html:link label="Container" target="conteudo" url="/component/container"></html:link></html:listGroupItem><html:listGroupItem><html:link label="DataBlock" target="conteudo" url="/component/dataBlock"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Div" target="conteudo" url="/component/div"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Mask"><html:listGroup><html:listGroupItem><html:link label="CurrencyMask" target="conteudo" url="/component/currencyMask"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Mask" target="conteudo" url="/component/mask"></html:link></html:listGroupItem><html:listGroupItem><html:link label="MaskOnKeyPress" target="conteudo" url="/component/maskOnKeyPress"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Menu"><html:listGroup><html:listGroupItem><html:link label="Menu" target="conteudo" url="/component/menu"></html:link></html:listGroupItem><html:listGroupItem><html:link label="MenuBrand" target="conteudo" url="/component/menuBrand"></html:link></html:listGroupItem><html:listGroupItem><html:link label="MenuCollapsable" target="conteudo" url="/component/menuCollapsable"></html:link></html:listGroupItem><html:listGroupItem><html:link label="MenuCollapse" target="conteudo" url="/component/menuCollapse"></html:link></html:listGroupItem><html:listGroupItem><html:link label="MenuDropDown" target="conteudo" url="/component/menuDropDown"></html:link></html:listGroupItem><html:listGroupItem><html:link label="MenuDropDownDivider" target="conteudo" url="/component/menuDropDownDivider"></html:link></html:listGroupItem><html:listGroupItem><html:link label="MenuDropDownItem" target="conteudo" url="/component/menuDropDownItem"></html:link></html:listGroupItem><html:listGroupItem><html:link label="MenuLink" target="conteudo" url="/component/menuLink"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Misc"><html:listGroup><html:listGroupItem><html:link label="Alert" target="conteudo" url="/component/alert"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Block" target="conteudo" url="/component/block"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Code" target="conteudo" url="/component/code"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Collapsable" target="conteudo" url="/component/collapsable"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Confirm" target="conteudo" url="/component/confirm"></html:link></html:listGroupItem><html:listGroupItem><html:link label="DropDown" target="conteudo" url="/component/dropDown"></html:link></html:listGroupItem><html:listGroupItem><html:link label="DropDownDivider" target="conteudo" url="/component/dropDownDivider"></html:link></html:listGroupItem><html:listGroupItem><html:link label="DropDownItem" target="conteudo" url="/component/dropDownItem"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Format" target="conteudo" url="/component/format"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Iframe" target="conteudo" url="/component/iframe"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Import" target="conteudo" url="/component/import"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Jumbotron" target="conteudo" url="/component/jumbotron"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Modal" target="conteudo" url="/component/modal"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Recaptcha" target="conteudo" url="/component/recaptcha"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Toolbar" target="conteudo" url="/component/toolbar"></html:link></html:listGroupItem><html:listGroupItem><html:link label="View" target="conteudo" url="/component/view"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Picker"><html:listGroup><html:listGroupItem><html:link label="DatePicker" target="conteudo" url="/component/datePicker"></html:link></html:listGroupItem><html:listGroupItem><html:link label="DatePickerOnSelect" target="conteudo" url="/component/datePickerOnSelect"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Tab"><html:listGroup><html:listGroupItem><html:link label="Tab" target="conteudo" url="/component/tab"></html:link></html:listGroupItem><html:listGroupItem><html:link label="TabPanel" target="conteudo" url="/component/tabPanel"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="Table"><html:listGroup><html:listGroupItem><html:link label="Table" target="conteudo" url="/component/table"></html:link></html:listGroupItem><html:listGroupItem><html:link label="TableBody" target="conteudo" url="/component/tableBody"></html:link></html:listGroupItem><html:listGroupItem><html:link label="TableCaption" target="conteudo" url="/component/tableCaption"></html:link></html:listGroupItem><html:listGroupItem><html:link label="TableColumn" target="conteudo" url="/component/tableColumn"></html:link></html:listGroupItem><html:listGroupItem><html:link label="TableHead" target="conteudo" url="/component/tableHead"></html:link></html:listGroupItem><html:listGroupItem><html:link label="TableHeader" target="conteudo" url="/component/tableHeader"></html:link></html:listGroupItem><html:listGroupItem><html:link label="TableLine" target="conteudo" url="/component/tableLine"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem><html:listGroupItem><html:collapsable label="html"><html:listGroup><html:listGroupItem><html:link label="H4" target="conteudo" url="/component/h4"></html:link></html:listGroupItem><html:listGroupItem><html:link label="Span" target="conteudo" url="/component/span"></html:link></html:listGroupItem></html:listGroup></html:collapsable></html:listGroupItem></html:listGroup></html:div>
			</html:div>
			<html:div cssClass="right float-left">
				<template:partial name="body"/>
			</html:div>
		</html:container>

	</html:body>
</html:view>