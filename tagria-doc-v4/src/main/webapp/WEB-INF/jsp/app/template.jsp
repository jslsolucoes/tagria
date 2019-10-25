<%@include file="taglibs.jsp"%>
<html:view title="Playground">
	
	<html:cssCode>
		.grid {
			display:grid;
			grid-template-columns: 20vw 80vw;
			grid-template-rows: 70px 1fr 70px;
			grid-template-areas: "a h"
								 "a m"
								 "a f";
		}
		
		header {
			grid-area: h;
		}
		
		aside {
			grid-area: a;
		}
		
		main {
			grid-area: m;
		}
		
		footer {
			grid-area: f;
		}
		
		.bg-4e73df-gradient {
		    background-color: #4e73df;
		    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(10%, #4e73df), to(#224abe));
		    background-image: linear-gradient(180deg, #4e73df 10%, #224abe 100%);
		    background-size: cover;
		}
		
		.bg-f8f9fc {
		    background-color: #f8f9fc;
		}
		
	</html:cssCode>
	
	<html:div cssClass="grid">
		<html:header cssClass="p-2 d-flex align-items-center justify-content-between shadow">
			<fmt:message key="title"/>
		</html:header>
		<html:aside cssClass="p-2 bg-4e73df-gradient">
			<html:template render="menu">
				<html:div cssClass="menu"><html:collapsable cssClass="mt-3 mb-3" label="Ajax"><html:listGroup><html:listGroupItem><html:link label="function" url="/component/function"/></html:listGroupItem><html:listGroupItem><html:link label="mapOptions" url="/component/mapOptions"/></html:listGroupItem><html:listGroupItem><html:link label="onBeforeSend" url="/component/onBeforeSend"/></html:listGroupItem><html:listGroupItem><html:link label="onDone" url="/component/onDone"/></html:listGroupItem><html:listGroupItem><html:link label="onError" url="/component/onError"/></html:listGroupItem><html:listGroupItem><html:link label="onSuccess" url="/component/onSuccess"/></html:listGroupItem><html:listGroupItem><html:link label="parameter" url="/component/parameter"/></html:listGroupItem><html:listGroupItem><html:link label="parameters" url="/component/parameters"/></html:listGroupItem><html:listGroupItem><html:link label="target" url="/component/target"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Auth"><html:listGroup><html:listGroupItem><html:link label="rule" url="/component/rule"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Button"><html:listGroup><html:listGroupItem><html:link label="button" url="/component/button"/></html:listGroupItem><html:listGroupItem><html:link label="buttonGroup" url="/component/buttonGroup"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Card"><html:listGroup><html:listGroupItem><html:link label="card" url="/component/card"/></html:listGroupItem><html:listGroupItem><html:link label="cardBody" url="/component/cardBody"/></html:listGroupItem><html:listGroupItem><html:link label="cardFooter" url="/component/cardFooter"/></html:listGroupItem><html:listGroupItem><html:link label="cardHeader" url="/component/cardHeader"/></html:listGroupItem><html:listGroupItem><html:link label="cardImage" url="/component/cardImage"/></html:listGroupItem><html:listGroupItem><html:link label="cardLink" url="/component/cardLink"/></html:listGroupItem><html:listGroupItem><html:link label="cardSubTitle" url="/component/cardSubTitle"/></html:listGroupItem><html:listGroupItem><html:link label="cardText" url="/component/cardText"/></html:listGroupItem><html:listGroupItem><html:link label="cardTitle" url="/component/cardTitle"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Carousel"><html:listGroup><html:listGroupItem><html:link label="carousel" url="/component/carousel"/></html:listGroupItem><html:listGroupItem><html:link label="carouselImage" url="/component/carouselImage"/></html:listGroupItem><html:listGroupItem><html:link label="carouselItem" url="/component/carouselItem"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Css"><html:listGroup><html:listGroupItem><html:link label="cssCode" url="/component/cssCode"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="DropDown"><html:listGroup><html:listGroupItem><html:link label="dropDown" url="/component/dropDown"/></html:listGroupItem><html:listGroupItem><html:link label="dropDownDivider" url="/component/dropDownDivider"/></html:listGroupItem><html:listGroupItem><html:link label="dropDownItem" url="/component/dropDownItem"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Form"><html:listGroup><html:listGroupItem><html:link label="form" url="/component/form"/></html:listGroupItem><html:listGroupItem><html:link label="formGroup" url="/component/formGroup"/></html:listGroupItem><html:listGroupItem><html:link label="formGroupMultiple" url="/component/formGroupMultiple"/></html:listGroupItem><html:listGroupItem><html:link label="formGroupMultipleOnAfterInsert" url="/component/formGroupMultipleOnAfterInsert"/></html:listGroupItem><html:listGroupItem><html:link label="formGroupMultipleOnAfterRemove" url="/component/formGroupMultipleOnAfterRemove"/></html:listGroupItem><html:listGroupItem><html:link label="formOnBeforeSubmit" url="/component/formOnBeforeSubmit"/></html:listGroupItem><html:listGroupItem><html:link label="formToolbar" url="/component/formToolbar"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Grid"><html:listGroup><html:listGroupItem><html:link label="grid" url="/component/grid"/></html:listGroupItem><html:listGroupItem><html:link label="gridBody" url="/component/gridBody"/></html:listGroupItem><html:listGroupItem><html:link label="gridColumn" url="/component/gridColumn"/></html:listGroupItem><html:listGroupItem><html:link label="gridColumnData" url="/component/gridColumnData"/></html:listGroupItem><html:listGroupItem><html:link label="gridExport" url="/component/gridExport"/></html:listGroupItem><html:listGroupItem><html:link label="gridFooter" url="/component/gridFooter"/></html:listGroupItem><html:listGroupItem><html:link label="gridHeader" url="/component/gridHeader"/></html:listGroupItem><html:listGroupItem><html:link label="gridPaginate" url="/component/gridPaginate"/></html:listGroupItem><html:listGroupItem><html:link label="gridSearch" url="/component/gridSearch"/></html:listGroupItem><html:listGroupItem><html:link label="gridToolbar" url="/component/gridToolbar"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Groupments"><html:listGroup><html:listGroupItem><html:link label="listGroup" url="/component/listGroup"/></html:listGroupItem><html:listGroupItem><html:link label="listGroupItem" url="/component/listGroupItem"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Html"><html:listGroup><html:listGroupItem><html:link label="aside" url="/component/aside"/></html:listGroupItem><html:listGroupItem><html:link label="code" url="/component/code"/></html:listGroupItem><html:listGroupItem><html:link label="footer" url="/component/footer"/></html:listGroupItem><html:listGroupItem><html:link label="h1" url="/component/h1"/></html:listGroupItem><html:listGroupItem><html:link label="h2" url="/component/h2"/></html:listGroupItem><html:listGroupItem><html:link label="h3" url="/component/h3"/></html:listGroupItem><html:listGroupItem><html:link label="h4" url="/component/h4"/></html:listGroupItem><html:listGroupItem><html:link label="header" url="/component/header"/></html:listGroupItem><html:listGroupItem><html:link label="hr" url="/component/hr"/></html:listGroupItem><html:listGroupItem><html:link label="link" url="/component/link"/></html:listGroupItem><html:listGroupItem><html:link label="main" url="/component/main"/></html:listGroupItem><html:listGroupItem><html:link label="p" url="/component/p"/></html:listGroupItem><html:listGroupItem><html:link label="small" url="/component/small"/></html:listGroupItem><html:listGroupItem><html:link label="span" url="/component/span"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Image"><html:listGroup><html:listGroupItem><html:link label="icon" url="/component/icon"/></html:listGroupItem><html:listGroupItem><html:link label="img" url="/component/img"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Input"><html:listGroup><html:listGroupItem><html:link label="autoComplete" url="/component/autoComplete"/></html:listGroupItem><html:listGroupItem><html:link label="autoCompleteItem" url="/component/autoCompleteItem"/></html:listGroupItem><html:listGroupItem><html:link label="autoCompleteOnSelect" url="/component/autoCompleteOnSelect"/></html:listGroupItem><html:listGroupItem><html:link label="dataList" url="/component/dataList"/></html:listGroupItem><html:listGroupItem><html:link label="dataListOption" url="/component/dataListOption"/></html:listGroupItem><html:listGroupItem><html:link label="input" url="/component/input"/></html:listGroupItem><html:listGroupItem><html:link label="inputGroup" url="/component/inputGroup"/></html:listGroupItem><html:listGroupItem><html:link label="option" url="/component/option"/></html:listGroupItem><html:listGroupItem><html:link label="select" url="/component/select"/></html:listGroupItem><html:listGroupItem><html:link label="textarea" url="/component/textarea"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Javascript"><html:listGroup><html:listGroupItem><html:link label="jsCode" url="/component/jsCode"/></html:listGroupItem><html:listGroupItem><html:link label="jsEvent" url="/component/jsEvent"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Layout"><html:listGroup><html:listGroupItem><html:link label="block" url="/component/block"/></html:listGroupItem><html:listGroupItem><html:link label="col" url="/component/col"/></html:listGroupItem><html:listGroupItem><html:link label="container" url="/component/container"/></html:listGroupItem><html:listGroupItem><html:link label="dataBlock" url="/component/dataBlock"/></html:listGroupItem><html:listGroupItem><html:link label="div" url="/component/div"/></html:listGroupItem><html:listGroupItem><html:link label="row" url="/component/row"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Mask"><html:listGroup><html:listGroupItem><html:link label="mask" url="/component/mask"/></html:listGroupItem><html:listGroupItem><html:link label="maskCurrency" url="/component/maskCurrency"/></html:listGroupItem><html:listGroupItem><html:link label="maskOnKeypress" url="/component/maskOnKeypress"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Menu"><html:listGroup><html:listGroupItem><html:link label="menu" url="/component/menu"/></html:listGroupItem><html:listGroupItem><html:link label="menuBrand" url="/component/menuBrand"/></html:listGroupItem><html:listGroupItem><html:link label="menuCollapsable" url="/component/menuCollapsable"/></html:listGroupItem><html:listGroupItem><html:link label="menuCollapse" url="/component/menuCollapse"/></html:listGroupItem><html:listGroupItem><html:link label="menuDropdown" url="/component/menuDropdown"/></html:listGroupItem><html:listGroupItem><html:link label="menuDropdownDivider" url="/component/menuDropdownDivider"/></html:listGroupItem><html:listGroupItem><html:link label="menuDropdownItem" url="/component/menuDropdownItem"/></html:listGroupItem><html:listGroupItem><html:link label="menuLink" url="/component/menuLink"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Misc"><html:listGroup><html:listGroupItem><html:link label="alert" url="/component/alert"/></html:listGroupItem><html:listGroupItem><html:link label="animate" url="/component/animate"/></html:listGroupItem><html:listGroupItem><html:link label="collapsable" url="/component/collapsable"/></html:listGroupItem><html:listGroupItem><html:link label="confirm" url="/component/confirm"/></html:listGroupItem><html:listGroupItem><html:link label="format" url="/component/format"/></html:listGroupItem><html:listGroupItem><html:link label="iframe" url="/component/iframe"/></html:listGroupItem><html:listGroupItem><html:link label="import" url="/component/import"/></html:listGroupItem><html:listGroupItem><html:link label="jumbotron" url="/component/jumbotron"/></html:listGroupItem><html:listGroupItem><html:link label="recaptcha" url="/component/recaptcha"/></html:listGroupItem><html:listGroupItem><html:link label="template" url="/component/template"/></html:listGroupItem><html:listGroupItem><html:link label="tooltip" url="/component/tooltip"/></html:listGroupItem><html:listGroupItem><html:link label="view" url="/component/view"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Modal"><html:listGroup><html:listGroupItem><html:link label="modal" url="/component/modal"/></html:listGroupItem><html:listGroupItem><html:link label="modalBody" url="/component/modalBody"/></html:listGroupItem><html:listGroupItem><html:link label="modalFooter" url="/component/modalFooter"/></html:listGroupItem><html:listGroupItem><html:link label="modalHeader" url="/component/modalHeader"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Picker"><html:listGroup><html:listGroupItem><html:link label="datePicker" url="/component/datePicker"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Table"><html:listGroup><html:listGroupItem><html:link label="table" url="/component/table"/></html:listGroupItem><html:listGroupItem><html:link label="tableBody" url="/component/tableBody"/></html:listGroupItem><html:listGroupItem><html:link label="tableCaption" url="/component/tableCaption"/></html:listGroupItem><html:listGroupItem><html:link label="tableData" url="/component/tableData"/></html:listGroupItem><html:listGroupItem><html:link label="tableFooter" url="/component/tableFooter"/></html:listGroupItem><html:listGroupItem><html:link label="tableHead" url="/component/tableHead"/></html:listGroupItem><html:listGroupItem><html:link label="tableHeader" url="/component/tableHeader"/></html:listGroupItem><html:listGroupItem><html:link label="tableRow" url="/component/tableRow"/></html:listGroupItem></html:listGroup></html:collapsable><html:collapsable cssClass="mt-3 mb-3" label="Tabs"><html:listGroup><html:listGroupItem><html:link label="tabs" url="/component/tabs"/></html:listGroupItem><html:listGroupItem><html:link label="tabsBody" url="/component/tabsBody"/></html:listGroupItem><html:listGroupItem><html:link label="tabsContent" url="/component/tabsContent"/></html:listGroupItem><html:listGroupItem><html:link label="tabsHeader" url="/component/tabsHeader"/></html:listGroupItem><html:listGroupItem><html:link label="tabsOnAfterShow" url="/component/tabsOnAfterShow"/></html:listGroupItem><html:listGroupItem><html:link label="tabsTab" url="/component/tabsTab"/></html:listGroupItem></html:listGroup></html:collapsable></html:div>
			</html:template>
		</html:aside>
		<html:main cssClass="p-2">
			<html:template render="body"/>
		</html:main>
		<html:footer cssClass="bg-white border-top border p-2 d-flex align-items-center justify-content-center">
			<html:div>
				<html:span labelKey="app.dev.by" />
			</html:div>
		</html:footer>
	</html:div>
	
</html:view>