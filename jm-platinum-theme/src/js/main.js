AUI().ready(function () {});
Liferay.Portlet.ready(function (_portletId, _node) {});
Liferay.on('allPortletsReady', function () {});

var selectField = document.getElementById("selectField");
var selectText = document.getElementById("selectText");
var options = document.getElementsByClassName("options");
var listItem = document.getElementById("list");
const navToggler = document.querySelector(".nav__toggler");

navToggler.addEventListener("click", navToggle);

function navToggle(){
	navToggler.classList.toggle("active");
	const nav = document.querySelector(".jmheader__navbar");
	nav.classList.toggle("open");
	
	if(nav.classList.contains("open"))
		{
		nav.style.maxHeight = nav.scrollHeight + "px";
		}
	else{
		nav.removeAttribute("style");
	}
	
}



selectField.onclick = function(){
    listItem.classList.toggle("hide");
}
for(option of options) {
    option.onclick = function(){
    	if (selectText) {
            selectText.innerHTML = this.textContent;
            list.classList.toggle("hide");
    	}
    }
}




