const cartItems = document.querySelector(".cart-items");
const subtotal = document.querySelector(".subtotal");
const itemNum = document.querySelector(".item-num");
const cartBag = document.querySelector(".cart-bag");
const cartCon = document.querySelector(".cartItem-container");


function validateShop() { // check whether user purchased any items
    console.log(cart.length);
    if (cart.length === 0) { // if user didn't purchase any items
        window.alert("Please select at least an item to proceed to the checkout session.")
        window.location.reload();

    } else { // if user purchases at least one item
        window.location.href = "checkout.aspx"; //bring user to checkout.aspx
    }

}

function showHideCart() { //show and hide cart while clicking on the shopping bag
    if (cartCon.classList.contains("showing")) {
        cartCon.classList.remove("showing");
        cartCon.classList.add("hiding");
    } else {
        cartCon.classList.remove("hiding");
        cartCon.classList.add("showing");
    }
}

