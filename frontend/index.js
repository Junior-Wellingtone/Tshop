document.addEventListener("DOMContentLoaded", () => {
    fetchCategories();
    displayProducts();
    
});

function fetchCategories() {
    fetch("../backend/categories.php") 
        .then(response => response.json())
        .then(categories => {
            const asideList = document.querySelector("aside ul");
            asideList.innerHTML = ""; 

            console.log('categories: ',categories)

            categories.forEach(category => {
                let listItem = document.createElement("li");
                listItem.textContent = category;
                listItem.addEventListener("click", () => {
                    let cards = document.querySelectorAll(".card");
                    cards.forEach(card => {
                        card.style.display = card.dataset.category === category.toLowerCase() ? "flex" : "none";
                    });
                });
                
                asideList.appendChild(listItem);
            });
        })
        .catch(error => console.error("Error fetching categories:", error));
}


function displayProducts() {

    let productDiv = document.getElementById("products");
    productDiv.classList.add('products-grid');

    fetch("../backend/rest/read.php")
        .then(response => response.json())
        .then(data => {
            productDiv.innerHTML = "";
            data.forEach(product => {
                let productImage = document.createElement('img');
                productImage.src = product.imageUrl;

                let productName = document.createElement('h3');
                productName.innerText = product.productName;

                let productPrice = document.createElement('p');
                productPrice.innerText = `Ksh${product.price}`;

                let productCategory = document.createElement('p');
                productCategory.innerText = product.category;

                let productDescription = document.createElement('p');
                productDescription.innerText = product.description;

                let addToCartButton = document.createElement('button');
                addToCartButton.textContent = 'Add To Cart';
                addToCartButton.addEventListener('click', () => {
                    addProductToCart(product);
                });

                let productDetails = document.createElement('div');
                productDetails.classList.add('product-details');
                productDetails.appendChild(productName);
                productDetails.appendChild(productCategory);
                productDetails.appendChild(productPrice);
                productDetails.appendChild(productDescription);
                productDetails.appendChild(addToCartButton);

                let productCard = document.createElement('div');
                productCard.classList.add('card');
                productCard.dataset.category = product.category.toLowerCase();
                productCard.dataset.name = product.productName.toLowerCase(); 
                productCard.appendChild(productImage);
                productCard.appendChild(productDetails);

                productDiv.appendChild(productCard);
            });
        })
        .catch(error => console.error("Error fetching products:", error));
}

const searchInput = document.querySelector("input[placeholder='i want a...']");
searchInput.addEventListener("input", filterProducts);

function filterProducts(event) {
    let searchValue = event.target.value.toLowerCase();
    let cards = document.querySelectorAll(".card");

    cards.forEach(card => {
        let productName = card.dataset.name;
        card.style.display = productName.includes(searchValue) ? "flex" : "none";
    });
}

function addProductToCart(product) {
    let cart = JSON.parse(localStorage.getItem("cart")) || [];
    let existingProduct = cart.find(item => item.id === product.productId);

    if (existingProduct) {
        existingProduct.quantity += 1;
    } else {
        cart.push({ id: product.productId, imageUrl: product.imageUrl, name: product.productName, price: product.price, quantity: 1 });
    }

    localStorage.setItem("cart", JSON.stringify(cart));
    alert(`${product.productName} added to cart!`);
}
document.getElementById("checkoutBtn").onclick = function() {
    document.getElementById("paymentOptions").style.display = "block";
  };
  function showPayment() {
    document.getElementById("paymentSection").style.display = "block";
  }
  
  function submitPayment() {
    const options = document.getElementsByName("payment");
    let selected = null;
  
    for (let option of options) {
      if (option.checked) {
        selected = option.value;
        break;
      }
    }
  
    if (selected) {
      alert("You selected: " + selected);
      // Proceed with payment logic here
    } else {
      alert("Please select a payment method.");
    }
  }