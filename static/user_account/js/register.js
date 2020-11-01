$("#dealer-extra-options").ready(() => {
    seller_type = document.getElementById("id_seller_type_id");
    extra_options =  document.getElementById("dealer-extra-options")
    //Static code here
    if (seller_type.options.selectedIndex == 1) {
        extra_options.style.display = "block"
    }
    else {
        extra_options.style.display = "none"
    }
})

function change_seller_type(type) {
    debugger
    //Can be used to get innerText from HTML
    //change_seller_type(this.options[this.selectedIndex].text)

    //Static code here
    extra_options = document.getElementById("dealer-extra-options")
    extra_options_mobile = document.getElementById("dealer-extra-options-mobile")
    if (type.options.selectedIndex == 1) {
        extra_options.style.display = "block"
        extra_options_mobile.style.display = "block"
    }
    else {
        extra_options.style.display = "none"
        extra_options_mobile.style.display = "none"
    }
}