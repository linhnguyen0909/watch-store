// ************************************************
// Shopping Cart API
// ************************************************

var shoppingCart = (function () {
    // =============================
    // Private methods and propeties
    // =============================
    cart = [];

    // Constructor
    function Item(id, description, name, image, price, quantity) {
        this.id = id
        this.description = description
        this.name = name;
        this.image = image
        this.price = price;
        this.quantity = quantity;
    }

    // Save cart
    function saveCart() {
        sessionStorage.setItem('shoppingCart', JSON.stringify(cart));
    }

    // Load cart
    function loadCart() {
        cart = JSON.parse(sessionStorage.getItem('shoppingCart'));
    }
    if (sessionStorage.getItem("shoppingCart") != null) {
        loadCart();
    }


    // =============================
    // Public methods and propeties
    // =============================
    var obj = {};

    // Add to cart
    obj.addItemToCart = function (id, description, name, image, price, quantity) {
        for (var item in cart) {
            if (cart[item].id === id) {
                cart[item].quantity++;
                saveCart();
                return;
            }
        }
        var item = new Item(id, description, name, image, price, quantity);
        console.log("item", item);
        cart.push(item);
        saveCart();
    }
    // Set count from item
    obj.setCountForItem = function (id, quantity) {
        for (var i in cart) {
            if (cart[i].id === id) {
                cart[i].quantity = quantity;
                break;
            }
        }
    };
    // Remove item from cart
    obj.removeItemFromCart = function (id) {
        for (var item in cart) {
            if (cart[item].id === id) {
                cart[item].quantity--;
                if (cart[item].quantity === 0) {
                    cart.splice(item, 1);
                }
                break;
            }
        }
        saveCart();
    }

    // Remove all items from cart
    obj.removeItemFromCartAll = function (id) {
        for (var item in cart) {
            if (cart[item].id === id) {
                cart.splice(item, 1);
                break;
            }
        }
        saveCart();
    }

    // Clear cart
    obj.clearCart = function () {
        cart = [];
        saveCart();
    }

    // Count cart 
    obj.totalCount = function () {
        var totalCount = 0;
        for (var item in cart) {
            totalCount += cart[item].quantity;
        }
        return totalCount;
    }

    // Total cart
    obj.totalCart = function () {
        var totalCart = 0;
        for (var item in cart) {
            totalCart += cart[item].price * cart[item].quantity;
        }
        return Number(totalCart.toFixed(2));
    }

    // List cart
    obj.listCart = function () {
        var cartCopy = [];
        for (i in cart) {
            item = cart[i];
            itemCopy = {};
            for (p in item) {
                itemCopy[p] = item[p];

            }
            itemCopy.total = Number(item.price * item.quantity).toFixed(2);
            cartCopy.push(itemCopy)
        }
        return cartCopy;
    }

    // cart : Array
    // Item : Object/Class
    // addItemToCart : Function
    // removeItemFromCart : Function
    // removeItemFromCartAll : Function
    // clearCart : Function
    // countCart : Function
    // totalCart : Function
    // listCart : Function
    // saveCart : Function
    // loadCart : Function
    return obj;
})();


// *****************************************
// Triggers / Events
// ***************************************** 
// Add item
$('.addCart').click(function (event) {
   console.log("show");
    event.preventDefault();
    var id = $(this).data('id');
    var description = $(this).data('description');
    var name = $(this).data('name');
    var image = $(this).data('image');
    var price = Number($(this).data('price'));
    shoppingCart.addItemToCart(id, description, name, image, price, 1);
    displayCart();
});

// Clear items
$('.clear-cart').click(function () {
    shoppingCart.clearCart();
    displayCart();
  //  displayCartView();
});


function displayCart() {
    var cartArray = shoppingCart.listCart();
    var output = "";
      var output1 = "";
    for (var i in cartArray) {
        output += `
  	<li class="wrap-row">
				<img src="/resources/photo/${cartArray[i].image}" />
				<span class="item-name">${cartArray[i].name}</span>
				
				<input name="quantity" value="${cartArray[i].quantity}" class="qty">
				 <span class="item-price">$ ${cartArray[i].price}</span>
			
			
				</li>
  `;
          output1 += `
   <tr>
                                        <td class="name">
                                            <a href="#">
                                          <img src="/resources/photo/${cartArray[i].image}" alt="product-1" class="img-fluid">
                                           
                                            </a>
                                        </td>
                                        <td class="tbody-title"><a href="#">${cartArray[i].name}</a></td>
                                        <td class="tbody-price">$${cartArray[i].price}</td>
    <td>
                                            <div class="product-detail-content">
                                                <div class="product-selection">
                                                    <div class="product-count product-single">
                                                        <div class="button qtyminus" data-id="${cartArray[i].id}">-</div>
                                                        <input name="quantity" value="${cartArray[i].quantity}" class="quantity">
                                                        <div class="button qtyplus" data-id="${cartArray[i].id}">+</div>
                                                    </div>

                                                </div>
                                            </div>
                                        </td>
                                       // <td class="tbody-price">$${cartArray[i].price*cartArray[i].quantity}</td>
                                        <td class="tbody-remove"><a class="remove-item" data-id="${cartArray[i].id}" href="#"><i class="far fa-trash-alt"></i></a></td>
                                    </tr>`
    }
    $('.shopping-cart-items').html(output);
    $('#wrap-Cart').html(output1);
    $('.main-color-text').html(shoppingCart.totalCart());
        $('#cart-sub').html(shoppingCart.totalCart());
    $('#length').html(shoppingCart.totalCount());
}

// Delete item button

$('#wrap-Cart').on("click", ".remove-item", function (event) {
    var id = $(this).data('id')
    shoppingCart.removeItemFromCartAll(id);
    displayCart();
})


// -1
$('#wrap-Cart').on("click", ".qtyminus", function (event) {
    var id = $(this).data('id')
    shoppingCart.removeItemFromCart(id);
    displayCart();
})
// +1
$('.show-cart').on("click", ".qtyplus", function (event) {
    var id = $(this).data('id')
    shoppingCart.addItemToCart(id);
    displayCart();
})

// Item count input
$('.show-cart').on("change", ".item-count", function (event) {
    var name = $(this).data('name');
    var count = Number($(this).val());
    shoppingCart.setCountForItem(name, count);
    displayCart();
});

displayCart();

//hàm show cart 
function showCart() {
    $("#cart_button").on("click", function () {
        console.log("click")
        $(".shopping-cart_table").fadeToggle("fast");
    });
};
showCart()
