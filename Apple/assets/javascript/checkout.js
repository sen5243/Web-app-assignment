let itemCon = document.querySelector(".cart-container");
let items = JSON.parse(localStorage.getItem("CARTINFO"));
let form = document.querySelector(".form-container");
var currentPage = 0; // set surrent page number


function showPage(pageNum) { //show correct page and button

    var page = document.getElementsByClassName("page");
    page[pageNum].style.display = "block";
    //display correct button and change button text
    if (pageNum == 0) {
        document.getElementById("prev").style.display = "none";  

    } else {
        document.getElementById("prev").style.display = "inline";
    }
    if (pageNum == (page.length - 1)) { //last page
        document.getElementById("next").style.display = "none";
        document.getElementById("ContentPlaceHolder1_submitbutton").style.display = "inline";

    } else {
        
        document.getElementById("next").value = "Next";
        document.getElementById("ContentPlaceHolder1_submitbutton").style.display = "none";
        document.getElementById("next").style.display = "inline";
    }
    // show correct step
    showStep(pageNum)

}

function nextPrev(pageNum) {

    var page = document.getElementsByClassName("page");

    if (pageNum == 1 && !validateForm(currentPage)) { //if the current page is invalid
        return false;
    }
    // Hide the current page
    page[currentPage].style.display = "none";
    // Increase or decrease the current page by 1:
    currentPage += pageNum;

    if (pageNum == -1) { //first page
        if (form.classList.contains("flip-left")) {
            form.classList.remove("flip-left");
        }
        form.classList.add("flip-right");
    }
    if (pageNum == 1) { //last page (second page)
        if (form.classList.contains("flip-right")) {
            form.classList.remove("flip-right");
        }
        form.classList.add("flip-left");
    }

    showPage(currentPage);
}

function validateForm(currentPage) {

    var valid = true;
    var empty = 0; //to check whether the fields is empty 
    let page = document.getElementsByClassName("page");
    /*validation variables*/
    let input = page[currentPage].getElementsByTagName("input");
    let email = page[currentPage].querySelector("#ContentPlaceHolder1_email");
    let emailPat = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/
    let postal = page[currentPage].querySelector("#ContentPlaceHolder1_pos");
    let posPat = /^\d{5}$/ // matches exactly 5 digits

    // A loop that checks every input field in the current page
    for (var i = 0; i < input.length; i++) {
        if (input[i].value == "") {
            input[i].className += " invalid";
            valid = false;
            empty += 1;

        } else {
            if (input[i].classList.contains("invalid")) {
                input[i].classList.remove("invalid")
            }
        }
    }

    if (currentPage == 0) { // first page validation
        if (!emailPat.test(email.value) && email.value != "") {
            valid = false;
            email.className += " invalid";
            window.alert("Please enter a valid email address");
        }
        if (!posPat.test(postal.value) && postal.value != "") {
            valid = false;
            postal.className += " invalid";
            window.alert("Please enter a valid postal code with exactly 5 digits");
        }
    }
    

    if (valid) { //if valid
        document.getElementsByClassName("step")[currentPage].className += " finish";
    }

    if (!valid && empty != 0) { // if one of the field is empty
        window.alert("Please fill in your infomation into all of the fields");
    }
    return valid; // return the valid status
}

showPage(currentPage);

function showStep(pageNum) {
    //remove "active" class to all step
    var step = document.getElementsByClassName("step");
    for (var i = 0; i < step.length; i++) {
        step[i].className = step[i].className.replace(" active", "");
    }
    //add class to the current step
    step[pageNum].className += " active";
}

function getCookie(userinfo) {
    let id = userinfo + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for (let i = 0; i < ca.length; i++) {
        let c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(id) == 0) {

            return c.substring(id.length, c.length);
        }
    }
    return "";
}

function checkCookie() {

    let usertoken = getCookie("usertoken").split("=")[1];
    if (usertoken != "") {
        return usertoken;
    } else {
        alert("Cookies not set")
    }
    return "";
}
//braintree assignment
var button = document.getElementById("ContentPlaceHolder1_submitbutton");
var checkoutform = document.querySelector('#checkoutform');

//create dropinui
braintree.dropin.create({
    authorization: checkCookie(),
    container: '#dropin-container',

    paypal: {
        flow: 'checkout',
        amount: document.querySelector('#ContentPlaceHolder1_total_amount').value,
        currency: 'MYR',


    }

}, function (err, instance) {
    button.addEventListener('click', function (event) {
        event.preventDefault();

        instance.requestPaymentMethod(function (err, payload) {
            if (err) {
                console.log('Error', err);
                return;
            }
            else {
                //get payment nonce
                document.querySelector('#ContentPlaceHolder1_payment_method_nonce').value = payload.nonce;
                console.log(payload.nonce);
                checkoutform.submit();

            }

        })
    });

});
