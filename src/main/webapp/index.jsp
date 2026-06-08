<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
  <title>AJIO Showroom | Virtual Clothing Store</title>
  <!-- Google Fonts & simple CSS reset -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <!-- Font Awesome 6 (free icons) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #f8f9fc;
      color: #1e1e2a;
      scroll-behavior: smooth;
    }

    /* custom scrollbar */
    ::-webkit-scrollbar {
      width: 6px;
    }
    ::-webkit-scrollbar-track {
      background: #e9ecef;
    }
    ::-webkit-scrollbar-thumb {
      background: #cbd5e1;
      border-radius: 8px;
    }

    /* header / navigation */
    .top-bar {
      background: white;
      backdrop-filter: blur(0px);
      box-shadow: 0 2px 12px rgba(0,0,0,0.04);
      position: sticky;
      top: 0;
      z-index: 100;
    }
    .nav-container {
      max-width: 1400px;
      margin: 0 auto;
      padding: 1rem 2rem;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 1rem;
    }
    .logo-area {
      display: flex;
      align-items: baseline;
      gap: 6px;
    }
    .logo {
      font-size: 1.9rem;
      font-weight: 800;
      letter-spacing: -0.5px;
      background: linear-gradient(135deg, #1e2a3e, #2c3e50);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }
    .badge {
      background: #f3a683;
      color: #2d2f36;
      font-size: 0.7rem;
      font-weight: 600;
      padding: 2px 8px;
      border-radius: 40px;
      letter-spacing: 0.3px;
    }
    .search-bar {
      flex: 1;
      max-width: 480px;
      display: flex;
      background: #f1f3f5;
      border-radius: 48px;
      padding: 0.5rem 1rem;
      align-items: center;
      gap: 10px;
      transition: all 0.2s;
    }
    .search-bar i {
      color: #8b9eb0;
      font-size: 1.1rem;
    }
    .search-bar input {
      border: none;
      background: transparent;
      width: 100%;
      font-size: 0.95rem;
      outline: none;
      font-weight: 400;
    }
    .icons-group {
      display: flex;
      gap: 1.6rem;
      align-items: center;
    }
    .icon-btn {
      background: none;
      border: none;
      font-size: 1.25rem;
      cursor: pointer;
      color: #2c3e50;
      transition: 0.2s;
      position: relative;
    }
    .icon-btn:hover {
      color: #e67e22;
    }

    /* category pills */
    .category-strip {
      max-width: 1400px;
      margin: 1.2rem auto 0.5rem;
      padding: 0 2rem;
      display: flex;
      gap: 0.8rem;
      flex-wrap: wrap;
      overflow-x: auto;
      scrollbar-width: thin;
    }
    .cat-pill {
      background: white;
      padding: 0.5rem 1.2rem;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.85rem;
      cursor: pointer;
      transition: all 0.2s;
      border: 1px solid #e2e8f0;
      color: #334155;
      white-space: nowrap;
    }
    .cat-pill.active, .cat-pill:hover {
      background: #1e2a3e;
      color: white;
      border-color: #1e2a3e;
    }

    /* hero / showroom banner */
    .hero-showroom {
      background: linear-gradient(105deg, #f4f0eb 0%, #eae6df 100%);
      margin: 1rem 2rem 2rem;
      border-radius: 32px;
      padding: 2rem 2rem;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
    }
    .hero-text h1 {
      font-size: 2.5rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      background: linear-gradient(130deg, #2c3e50, #a55c2c);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }
    .hero-text p {
      margin-top: 0.75rem;
      color: #4b5563;
      max-width: 450px;
    }
    .shop-now-btn {
      background: #1e2a3e;
      border: none;
      padding: 0.8rem 2rem;
      border-radius: 40px;
      color: white;
      font-weight: 600;
      margin-top: 1.5rem;
      cursor: pointer;
      transition: 0.2s;
      box-shadow: 0 4px 10px rgba(0,0,0,0.05);
    }
    .shop-now-btn:hover {
      background: #e67e22;
      transform: scale(0.98);
    }
    .hero-img img {
      max-width: 200px;
      filter: drop-shadow(8px 12px 18px rgba(0,0,0,0.1));
    }

    /* product grid section */
    .section-title {
      max-width: 1400px;
      margin: 2rem auto 0.5rem;
      padding: 0 2rem;
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      flex-wrap: wrap;
    }
    .section-title h2 {
      font-size: 1.7rem;
      font-weight: 700;
    }
    .section-title span {
      color: #e67e22;
      font-weight: 500;
      cursor: pointer;
    }

    .product-grid {
      max-width: 1400px;
      margin: 1.5rem auto;
      padding: 0 2rem;
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 2rem;
    }

    .product-card {
      background: white;
      border-radius: 24px;
      overflow: hidden;
      transition: all 0.25s ease;
      box-shadow: 0 6px 14px rgba(0, 0, 0, 0.02), 0 2px 4px rgba(0, 0, 0, 0.03);
      border: 1px solid #edeff2;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 30px -12px rgba(0, 0, 0, 0.12);
      border-color: #e2e8f0;
    }
    .product-img {
      position: relative;
      background: #f9f7f4;
      height: 280px;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
    }
    .product-img img {
      width: 80%;
      height: auto;
      object-fit: contain;
      transition: transform 0.3s;
    }
    .product-card:hover .product-img img {
      transform: scale(1.02);
    }
    .fav-icon {
      position: absolute;
      top: 12px;
      right: 16px;
      background: rgba(255,255,240,0.85);
      border-radius: 50%;
      width: 32px;
      height: 32px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      color: #aeaeae;
      transition: 0.2s;
      backdrop-filter: blur(2px);
    }
    .fav-icon:hover, .fav-icon.active {
      color: #e63946;
    }
    .product-info {
      padding: 1rem 1rem 1.2rem;
    }
    .brand {
      font-size: 0.7rem;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 1px;
      color: #e67e22;
    }
    .title {
      font-weight: 600;
      font-size: 1rem;
      margin: 0.3rem 0 0.5rem;
      color: #1f2937;
    }
    .price-row {
      display: flex;
      align-items: baseline;
      gap: 0.7rem;
      margin: 0.5rem 0;
    }
    .current-price {
      font-weight: 800;
      font-size: 1.2rem;
    }
    .old-price {
      font-size: 0.8rem;
      text-decoration: line-through;
      color: #8a8f99;
    }
    .discount {
      color: #2b9348;
      font-weight: 600;
      font-size: 0.75rem;
    }
    .add-cart {
      margin-top: 0.9rem;
      background: #f1f5f9;
      border: none;
      width: 100%;
      padding: 0.65rem;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      cursor: pointer;
      transition: 0.2s;
      color: #2c3e50;
    }
    .add-cart:hover {
      background: #1e2a3e;
      color: white;
    }

    /* footer */
    footer {
      background: #0f1722;
      color: #cbd5e6;
      margin-top: 3rem;
      padding: 2.5rem 2rem 1.5rem;
    }
    .footer-content {
      max-width: 1400px;
      margin: auto;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 2rem;
    }
    .footer-col h4 {
      color: white;
      margin-bottom: 1rem;
    }
    .footer-col p, .footer-col ul {
      font-size: 0.85rem;
      line-height: 1.6;
    }
    .social i {
      font-size: 1.4rem;
      margin-right: 1rem;
      color: #a0abb9;
    }
    .copyright {
      text-align: center;
      padding-top: 2rem;
      font-size: 0.7rem;
      border-top: 1px solid #2d3748;
      margin-top: 2rem;
    }

    /* cart side panel (simple) */
    .cart-sidebar {
      position: fixed;
      top: 0;
      right: -380px;
      width: 360px;
      height: 100vh;
      background: white;
      box-shadow: -8px 0 30px rgba(0,0,0,0.1);
      z-index: 1000;
      transition: 0.3s ease;
      display: flex;
      flex-direction: column;
      padding: 1.5rem;
      gap: 1rem;
    }
    .cart-sidebar.open {
      right: 0;
    }
    .cart-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      font-weight: 700;
      border-bottom: 1px solid #edf2f7;
      padding-bottom: 1rem;
    }
    .cart-items-list {
      flex: 1;
      overflow-y: auto;
      display: flex;
      flex-direction: column;
      gap: 0.8rem;
    }
    .cart-item {
      display: flex;
      gap: 0.8rem;
      border-bottom: 1px solid #f1f5f9;
      padding-bottom: 0.8rem;
    }
    .cart-item img {
      width: 55px;
      height: 55px;
      object-fit: cover;
      border-radius: 12px;
    }
    .cart-item-details {
      flex: 1;
      font-size: 0.8rem;
    }
    .cart-total {
      border-top: 2px solid #eef2f6;
      padding-top: 1rem;
      font-weight: 800;
      display: flex;
      justify-content: space-between;
    }
    .checkout-btn {
      background: #e67e22;
      border: none;
      padding: 0.8rem;
      border-radius: 40px;
      color: white;
      font-weight: bold;
      width: 100%;
    }
    .overlay {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      background: rgba(0,0,0,0.3);
      height: 100%;
      z-index: 999;
      display: none;
    }
    .overlay.active {
      display: block;
    }

    @media (max-width: 680px) {
      .nav-container {
        flex-direction: column;
        align-items: stretch;
      }
      .hero-showroom {
        flex-direction: column;
        text-align: center;
      }
      .product-grid {
        gap: 1.2rem;
      }
    }
  </style>
</head>
<body>

<div class="top-bar">
  <div class="nav-container">
    <div class="logo-area">
      <span class="logo">AJIO SHOWROOM</span>
      <span class="badge">★ virtual studio</span>
    </div>
    <div class="search-bar">
      <i class="fas fa-search"></i>
      <input type="text" id="searchInput" placeholder="Search premium wear, linen, streetwear...">
    </div>
    <div class="icons-group">
      <button class="icon-btn" id="cartIconBtn"><i class="fas fa-shopping-bag"></i></button>
      <button class="icon-btn"><i class="far fa-heart"></i></button>
      <button class="icon-btn"><i class="far fa-user"></i></button>
    </div>
  </div>
</div>

<div class="category-strip" id="categoryContainer">
  <div class="cat-pill active" data-cat="all">All Arrivals</div>
  <div class="cat-pill" data-cat="men">Men's Edit</div>
  <div class="cat-pill" data-cat="women">Women's Luxe</div>
  <div class="cat-pill" data-cat="kurta">Kurtas & Sets</div>
  <div class="cat-pill" data-cat="western">Western Dresses</div>
  <div class="cat-pill" data-cat="footwear">Footwear</div>
</div>

<div class="hero-showroom">
  <div class="hero-text">
    <h1>Walk into the <br>AJIO Showroom ✨</h1>
    <p>Curated style, endless edits — discover the freshest drops from top Indian & international labels.</p>
    <button class="shop-now-btn" id="heroShopBtn">Shop Now →</button>
  </div>
  <div class="hero-img">
    <img src="https://cdn-icons-png.flaticon.com/512/924/924543.png" alt="fashion showroom">
  </div>
</div>

<div class="section-title">
  <h2>Trending This Week 🔥</h2>
  <span id="viewAllLink">View all →</span>
</div>

<div class="product-grid" id="productGridContainer"></div>

<footer>
  <div class="footer-content">
    <div class="footer-col">
      <h4>AJIO SHOWROOM</h4>
      <p>Experience the finest curation of apparel, accessories & lifestyle.</p>
      <div class="social"><i class="fab fa-instagram"></i><i class="fab fa-twitter"></i><i class="fab fa-facebook"></i></div>
    </div>
    <div class="footer-col"><h4>Support</h4><ul style="list-style:none"><li>Returns</li><li>Order Tracking</li><li>Size Guide</li></ul></div>
    <div class="footer-col"><h4>Policy</h4><ul style="list-style:none"><li>Privacy</li><li>Terms</li><li>Secure Payment</li></ul></div>
  </div>
  <div class="copyright">© 2025 AJIO Showroom — virtual fashion destination</div>
</footer>

<!-- cart sidebar -->
<div class="overlay" id="cartOverlay"></div>
<div class="cart-sidebar" id="cartSidebar">
  <div class="cart-header">
    <span><i class="fas fa-bag-shopping"></i> My Cart</span>
    <button id="closeCartBtn" style="background: none; border:none; font-size:1.3rem; cursor:pointer;">✕</button>
  </div>
  <div class="cart-items-list" id="cartItemsList">
    <div style="text-align:center; padding:2rem 0; color:#7f8c8d;">Your cart is empty</div>
  </div>
  <div class="cart-total">
    <span>Total</span>
    <span id="cartTotalPrice">₹0</span>
  </div>
  <button class="checkout-btn" id="checkoutBtn">Checkout →</button>
</div>

<script>
  // ---------- PRODUCT DATABASE ----------
  const products = [
    { id: 1, name: "Oversized Cotton Shirt", brand: "ANDamen", price: 2499, oldPrice: 3999, discount: "37% off", category: "men", image: "https://cdn-icons-png.flaticon.com/512/3345/3345394.png", type: "shirt" },
    { id: 2, name: "Linen Blend Trouser", brand: "IndoStitch", price: 3299, oldPrice: 5499, discount: "40% off", category: "men", image: "https://cdn-icons-png.flaticon.com/512/3059/3059425.png", type: "trouser" },
    { id: 3, name: "Floral A-Line Dress", brand: "W for Woman", price: 3899, oldPrice: 5999, discount: "35% off", category: "women", image: "https://cdn-icons-png.flaticon.com/512/1042/1042336.png", type: "dress" },
    { id: 4, name: "Embroidered Kurta Set", brand: "Ritu Kumar", price: 5499, oldPrice: 8999, discount: "38% off", category: "kurta", image: "https://cdn-icons-png.flaticon.com/512/1972/1972211.png", type: "ethnic" },
    { id: 5, name: "Sneaker High-Tops", brand: "SoleVerse", price: 3999, oldPrice: 5999, discount: "33% off", category: "footwear", image: "https://cdn-icons-png.flaticon.com/512/3081/3081558.png", type: "shoes" },
    { id: 6, name: "Silk Blazer", brand: "Z Studio", price: 4799, oldPrice: 7999, discount: "40% off", category: "women", image: "https://cdn-icons-png.flaticon.com/512/2490/2490853.png", type: "blazer" },
    { id: 7, name: "Straight Kurta Palazzo", brand: "Anouk", price: 2999, oldPrice: 4999, discount: "40% off", category: "kurta", image: "https://cdn-icons-png.flaticon.com/512/7886/7886941.png", type: "ethnic" },
    { id: 8, name: "Denim Jacket", brand: "Levi's Red", price: 3999, oldPrice: 6499, discount: "38% off", category: "men", image: "https://cdn-icons-png.flaticon.com/512/5394/5394967.png", type: "jacket" },
    { id: 9, name: "Bodycon Midi Dress", brand: "Mango", price: 4599, oldPrice: 6999, discount: "34% off", category: "western", image: "https://cdn-icons-png.flaticon.com/512/995/995825.png", type: "dress" },
    { id: 10, name: "Leather Loafers", brand: "Hush Puppies", price: 2799, oldPrice: 4499, discount: "37% off", category: "footwear", image: "https://cdn-icons-png.flaticon.com/512/3965/3965522.png", type: "shoes" }
  ];

  let cart = []; // store product objects with quantity
  let currentFilter = "all";
  let searchQuery = "";

  // Helper render products (filtered + search)
  function filterProducts() {
    let filtered = products;
    if (currentFilter !== "all") {
      filtered = filtered.filter(p => p.category === currentFilter);
    }
    if (searchQuery.trim() !== "") {
      const q = searchQuery.trim().toLowerCase();
      filtered = filtered.filter(p => p.name.toLowerCase().includes(q) || p.brand.toLowerCase().includes(q));
    }
    return filtered;
  }

  function renderProductGrid() {
    const container = document.getElementById("productGridContainer");
    const filtered = filterProducts();
    if (filtered.length === 0) {
      container.innerHTML = `<div style="grid-column:1/-1; text-align:center; padding: 3rem;">✨ No items found. Try another style! ✨</div>`;
      return;
    }
    container.innerHTML = filtered.map(product => `
      <div class="product-card" data-id="${product.id}">
        <div class="product-img">
          <img src="${product.image}" alt="${product.name}" loading="lazy">
          <div class="fav-icon" data-fav="${product.id}"><i class="far fa-heart"></i></div>
        </div>
        <div class="product-info">
          <div class="brand">${product.brand}</div>
          <div class="title">${product.name}</div>
          <div class="price-row">
            <span class="current-price">₹${product.price.toLocaleString('en-IN')}</span>
            <span class="old-price">₹${product.oldPrice.toLocaleString('en-IN')}</span>
            <span class="discount">${product.discount}</span>
          </div>
          <button class="add-cart" data-id="${product.id}"><i class="fas fa-shopping-cart"></i> Add to Bag</button>
        </div>
      </div>
    `).join('');

    // Attach add to cart events
    document.querySelectorAll('.add-cart').forEach(btn => {
      btn.addEventListener('click', (e) => {
        e.stopPropagation();
        const id = parseInt(btn.dataset.id);
        addToCart(id);
      });
    });
    // heart favourites (visual)
    document.querySelectorAll('.fav-icon').forEach(heart => {
      heart.addEventListener('click', (e) => {
        e.stopPropagation();
        heart.classList.toggle('active');
        heart.innerHTML = heart.classList.contains('active') ? '<i class="fas fa-heart"></i>' : '<i class="far fa-heart"></i>';
      });
    });
  }

  // CART MANAGEMENT
  function addToCart(productId) {
    const product = products.find(p => p.id === productId);
    if (!product) return;
    const existing = cart.find(item => item.id === productId);
    if (existing) {
      existing.quantity += 1;
    } else {
      cart.push({ ...product, quantity: 1 });
    }
    updateCartUI();
    openCartSidebar();
    showToast("Added to cart ✨");
  }

  function removeCartItem(id) {
    cart = cart.filter(item => item.id !== id);
    updateCartUI();
  }

  function updateCartUI() {
    const cartListEl = document.getElementById("cartItemsList");
    const totalEl = document.getElementById("cartTotalPrice");
    if (cart.length === 0) {
      cartListEl.innerHTML = `<div style="text-align:center; padding:2rem 0; color:#7f8c8d;">Your cart is empty</div>`;
      totalEl.innerText = "₹0";
      return;
    }
    let total = 0;
    cartListEl.innerHTML = cart.map(item => {
      const itemTotal = item.price * item.quantity;
      total += itemTotal;
      return `
        <div class="cart-item">
          <img src="${item.image}" alt="${item.name}">
          <div class="cart-item-details">
            <strong>${item.name}</strong><br>
            ₹${item.price.toLocaleString('en-IN')} x ${item.quantity}
            <div style="display:flex; gap:10px; margin-top:5px;">
              <button class="cart-qty-inc" data-id="${item.id}" style="background:#f1f3f5; border:none; width:28px; border-radius:30px;">+</button>
              <button class="cart-qty-dec" data-id="${item.id}" style="background:#f1f3f5; border:none; width:28px; border-radius:30px;">-</button>
              <button class="cart-remove" data-id="${item.id}" style="background:transparent; border:none; color:#e63946;">Remove</button>
            </div>
          </div>
        </div>
      `;
    }).join('');
    totalEl.innerText = `₹${total.toLocaleString('en-IN')}`;

    document.querySelectorAll('.cart-qty-inc').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = parseInt(btn.dataset.id);
        const item = cart.find(i => i.id === id);
        if(item) item.quantity++;
        updateCartUI();
      });
    });
    document.querySelectorAll('.cart-qty-dec').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = parseInt(btn.dataset.id);
        const item = cart.find(i => i.id === id);
        if(item && item.quantity > 1) { item.quantity--; updateCartUI(); }
        else if(item && item.quantity === 1) { removeCartItem(id); }
      });
    });
    document.querySelectorAll('.cart-remove').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = parseInt(btn.dataset.id);
        removeCartItem(id);
      });
    });
  }

  function openCartSidebar() {
    document.getElementById("cartSidebar").classList.add("open");
    document.getElementById("cartOverlay").classList.add("active");
  }
  function closeCartSidebar() {
    document.getElementById("cartSidebar").classList.remove("open");
    document.getElementById("cartOverlay").classList.remove("active");
  }

  function showToast(msg) {
    let toast = document.createElement('div');
    toast.innerText = msg;
    toast.style.position = 'fixed';
    toast.style.bottom = '20px';
    toast.style.left = '50%';
    toast.style.transform = 'translateX(-50%)';
    toast.style.backgroundColor = '#1e2a3e';
    toast.style.color = 'white';
    toast.style.padding = '10px 24px';
    toast.style.borderRadius = '40px';
    toast.style.fontSize = '0.8rem';
    toast.style.zIndex = '1100';
    toast.style.boxShadow = '0 4px 12px rgba(0,0,0,0.2)';
    document.body.appendChild(toast);
    setTimeout(() => { toast.remove(); }, 2000);
  }

  // event listeners
  function init() {
    renderProductGrid();

    // category pills
    document.querySelectorAll('.cat-pill').forEach(pill => {
      pill.addEventListener('click', () => {
        document.querySelectorAll('.cat-pill').forEach(p => p.classList.remove('active'));
        pill.classList.add('active');
        currentFilter = pill.dataset.cat;
        renderProductGrid();
      });
    });

    // search input
    const searchInput = document.getElementById('searchInput');
    searchInput.addEventListener('input', (e) => {
      searchQuery = e.target.value;
      renderProductGrid();
    });

    // cart icon
    document.getElementById('cartIconBtn').addEventListener('click', openCartSidebar);
    document.getElementById('closeCartBtn').addEventListener('click', closeCartSidebar);
    document.getElementById('cartOverlay').addEventListener('click', closeCartSidebar);
    document.getElementById('heroShopBtn').addEventListener('click', () => {
      currentFilter = 'all';
      document.querySelectorAll('.cat-pill').forEach(p => p.classList.remove('active'));
      document.querySelector('.cat-pill[data-cat="all"]').classList.add('active');
      renderProductGrid();
      window.scrollTo({ top: 400, behavior: 'smooth' });
    });
    document.getElementById('viewAllLink').addEventListener('click', () => {
      currentFilter = 'all';
      document.querySelectorAll('.cat-pill').forEach(p => p.classList.remove('active'));
      document.querySelector('.cat-pill[data-cat="all"]').classList.add('active');
      renderProductGrid();
    });
    document.getElementById('checkoutBtn').addEventListener('click', () => {
      if(cart.length === 0) showToast("Your cart is empty. Add some style first!");
      else {
        showToast("✨ Proceeding to secure checkout ✨");
        setTimeout(() => { closeCartSidebar(); }, 600);
      }
    });
  }

  init();
</script>
</body>
</html>
