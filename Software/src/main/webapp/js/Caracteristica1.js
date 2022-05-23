/**
 * 
 */

function cambio() {
	var caracteristica = document.getElementById("CaracteristicaSelccionada").value;

	if (caracteristica == "PermanenciaDesercion") {

		document.getElementById("caracteristica1").setAttribute('style', " visibility: visible ");
		document.getElementById("caracteristica2").setAttribute('style', " display: none ");
		document.getElementById("caracteristica3").setAttribute('style', " display: none ");
		document.getElementById("caracteristica4").setAttribute('style', " display: none ");
		/**
		let formulario=document.createElement("form");
		let divcontainer = document.createElement("div");
		let divcenter = document.createElement("div");
		
		// Campos para el select del formulario
		let divSelect = document.createElement("div");
		let labelTipo = document.createElement("label")
		let divSelect2 = document.createElement("div");
		let selectTipo = document.createElement("select");
		let opcion1 = document.createElement("option");
		let opcion1Texto = document.createTextNode("Seleccione");		
		let opcion2 = document.createElement("option");
		let opcion2Texto = document.createTextNode("Académica");
		let opcion3 = document.createElement("option");
		let opcion3Texto = document.createTextNode("No académica");
		
		// Campos para el select del perido
		let divSelectPeriodo = document.createElement("div");
		let labelPeriodo = document.createElement("label")
		let divSelectPeriodo2 = document.createElement("div");
		
		let selectPeriodo = document.createElement("select");
		let opcion1Periodo = document.createElement("option");
		let opcion1TextoPeriodo = document.createTextNode("Seleccione");		
		let opcion2Periodo = document.createElement("option");
		let opcion2TextoPeriodo = document.createTextNode("I Periodo");
		let opcion3Periodo = document.createElement("option");
		let opcion3TextoPeriodo = document.createTextNode("II Perido");
		
		
		formulario.setAttribute('method', "post");
		formulario.setAttribute('action', "");
		formulario.setAttribute('class', "needs-validation");
		
		divcontainer.setAttribute('class', "container")
		divcenter.setAttribute('class', "row justify-content-center");
		divcenter.setAttribute('style', "margin-top: 30px");
		
		divSelect.setAttribute('class', "col-4");
		labelTipo.setAttribute('for', "inputPeriodo");
		labelTipo.setAttribute('class', "form-label");
		labelTipo.setAttribute('value', "Periodo");
		divSelect2.setAttribute('class', "input-group mb-3");
		selectTipo.setAttribute('class', "form-select");
		selectTipo.setAttribute('aria-label', "Seleccione");
		opcion1.appendChild(opcion1Texto);
		opcion2.appendChild(opcion2Texto);
		opcion3.appendChild(opcion3Texto);
		opcion1.setAttribute('value', "");
		opcion2.setAttribute('value', "1");
		opcion3.setAttribute('value', "2");
		selectTipo.appendChild(opcion1);
		selectTipo.appendChild(opcion2);
		selectTipo.appendChild(opcion3);
		
		divSelectPeriodo.setAttribute('class', "col-4");
		labelPeriodo.setAttribute('class', "form-label");
		labelPeriodo.setAttribute('for', "inputPeriodo");
		divSelectPeriodo2.setAttribute('class', "input-group mb-3");
		
		selectPeriodo.setAttribute('class', "form-select");
		selectPeriodo.setAttribute('aria-label', "Seleccione");
		opcion1Periodo.appendChild(opcion1TextoPeriodo);
		opcion2Periodo.appendChild(opcion2TextoPeriodo);
		opcion3Periodo.appendChild(opcion3TextoPeriodo);
		opcion1Periodo.setAttribute('value', "");
		opcion2Periodo.setAttribute('value', "1");
		opcion3Periodo.setAttribute('value', "2");
		selectPeriodo.appendChild(opcion1Periodo);
		selectPeriodo.appendChild(opcion2Periodo);
		selectPeriodo.appendChild(opcion3Periodo);
		
		
		formulario.appendChild(divcontainer);
		formulario.appendChild(divcenter);
		formulario.appendChild(divSelect);
		formulario.appendChild(divSelectPeriodo);
		
		divSelect.appendChild(labelTipo);
		divSelect.appendChild(divSelect2);
		divSelect2.appendChild(selectTipo);
		
		divSelectPeriodo.appendChild(labelPeriodo);
		divSelectPeriodo.appendChild(divSelectPeriodo2);
		divSelectPeriodo2.appendChild(selectPeriodo);
		
		document.getElementById("formulario").appendChild(formulario);
		 */
	} else if (caracteristica == "NCalidadEstudiantes") {
		document.getElementById("caracteristica2").setAttribute('style', " visibility: visible ");
		document.getElementById("caracteristica1").setAttribute('style', " display: none ");
		document.getElementById("caracteristica3").setAttribute('style', " display: none ");
		document.getElementById("caracteristica4").setAttribute('style', " display: none ");

	} else if (caracteristica == "FormacionIntegral") {
		document.getElementById("caracteristica3").setAttribute('style', " visibility: visible ");
		document.getElementById("caracteristica1").setAttribute('style', " display: none ");
		document.getElementById("caracteristica2").setAttribute('style', " display: none ");
		document.getElementById("caracteristica4").setAttribute('style', " display: none ");

	}else if (caracteristica == "ReglamentoEstudiantil") {
		document.getElementById("caracteristica4").setAttribute('style', " visibility: visible ");
		document.getElementById("caracteristica1").setAttribute('style', " display: none ");
		document.getElementById("caracteristica3").setAttribute('style', " display: none ");
		document.getElementById("caracteristica2").setAttribute('style', " display: none ");

	}else if (caracteristica = "Seleccione") {

		document.getElementById("caracteristica1").setAttribute('style', " display: none ");
		document.getElementById("caracteristica2").setAttribute('style', " display: none ");
		document.getElementById("caracteristica3").setAttribute('style', " display: none ");
		document.getElementById("caracteristica4").setAttribute('style', " display: none ");
	}

}