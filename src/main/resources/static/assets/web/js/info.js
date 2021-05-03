    // Save cart
    var cart=[]
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
    loadCart()
function loadInfo() {
console.log(cart);
     let output = '';
     cart.map((item, i) => {
          output += `
          <div class="product__item">
          <div class="item__img"><img src="/img/item10.jpg" alt="item">
              <div class="img__overlay"></div>
          </div>
          <div class="item__info">
              <h5>${item.name}</h5>
              <h6>${item.description}</h6>
              <div class="rating"><i class="fas fa-star" aria-hidden="true"></i><i
                      class="fas fa-star" aria-hidden="true"></i><i class="fas fa-star"
                      aria-hidden="true"></i><i class="fas fa-star-half-alt"
                      aria-hidden="true"></i><i class="far fa-star"
                      aria-hidden="true"></i>3.5 <span>số lượng(${item.quantity})</span></div>
              <h4> $${item.price}</h4>
          </div>
      </div>
          `
     })
     $('.product__items').html(output);
}
loadInfo();
