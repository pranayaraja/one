<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes" />
  <title>Nova · modern e‑commerce</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz@14..32&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --bg: #f8faff;
      --primary: #0b1e33;
      --accent: #2d7aff;
      --accent-soft: #e3edff;
      --muted: #5d738e;
      --surface: #ffffff;
      --shadow: 0 12px 30px rgba(0, 20, 40, 0.06);
      --radius: 24px;
      --container: 1280px;
    }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    .container { max-width: var(--container); margin: 0 auto; padding: 0 24px; }

    /* header – refined, softer */
    header {
      background: rgba(255,255,255,0.88);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 60;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 22px;
      display: flex;
      align-items: center;
      gap: 8px;
      letter-spacing: -0.3px;
    }
    .brand i { color: var(--accent); font-size: 24px; }
    .brand span { color: var(--accent); }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    nav.main-nav li a {
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      display: flex;
      align-items: center;
      gap: 8px;
      transition: 0.2s;
      color: var(--primary);
    }
    nav.main-nav li a:hover { background: var(--accent-soft); color: var(--accent); }

    .search-wrap {
      background: white;
      border: 1px solid #e5ecf5;
      border-radius: 60px;
      padding: 4px 12px 4px 20px;
      display: flex;
      align-items: center;
      gap: 8px;
      min-width: 200px;
      transition: 0.2s;
    }
    .search-wrap:focus-within { border-color: var(--accent); box-shadow: 0 4px 16px rgba(45, 122, 255, 0.12); }
    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 8px 0;
      font-size: 0.95rem;
    }
    .search-wrap input::placeholder { color: #a7b9cf; }
    .icon-btn {
      background: transparent;
      border: 0;
      color: var(--primary);
      font-size: 1.2rem;
      padding: 6px 10px;
      border-radius: 30px;
      cursor: pointer;
      transition: 0.15s;
    }
    .icon-btn:hover { background: var(--accent-soft); color: var(--accent); }
    .header-actions { display: flex; align-items: center; gap: 4px; }
    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      padding: 6px 10px;
      border-radius: 40px;
    }
    .cart-count {
      position: absolute;
      top: -6px;
      right: -4px;
      background: var(--accent);
      color: white;
      font-size: 11px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: grid;
      place-items: center;
      box-shadow: 0 4px 10px rgba(45, 122, 255, 0.3);
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.5rem;
      cursor: pointer;
      color: var(--primary);
    }

    /* hero – warm & welcoming */
    .hero {
      background: linear-gradient(145deg, #0b2b4a 0%, #1a3e62 100%);
      color: white;
      border-radius: 0 0 var(--radius) var(--radius);
      padding: 72px 20px 60px;
      text-align: center;
      margin-bottom: 16px;
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.9rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      max-width: 780px;
      margin: 0 auto 14px;
    }
    .hero h1 i { color: var(--accent); }
    .hero p {
      opacity: 0.85;
      font-size: 1.15rem;
      max-width: 600px;
      margin: 0 auto 28px;
    }
    .btn-group { display: flex; gap: 14px; justify-content: center; flex-wrap: wrap; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 32px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      transition: 0.2s;
      font-size: 0.95rem;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 8px 24px rgba(45, 122, 255, 0.3);
    }
    .btn-primary:hover { background: #1a63f0; transform: scale(1.02); }
    .btn-ghost {
      background: rgba(255,255,255,0.07);
      border: 1px solid rgba(255,255,255,0.18);
      color: white;
    }
    .btn-ghost:hover { background: rgba(255,255,255,0.14); }

    /* sections */
    .section { padding: 48px 0; }
    .section-title {
      font-family: 'Poppins', sans-serif;
      font-size: 1.9rem;
      font-weight: 600;
    }
    .section-sub { color: var(--muted); margin-top: 4px; margin-bottom: 24px; }
    .grid { display: grid; gap: 22px; }

    /* categories – fresh cards */
    .categories-grid { grid-template-columns: repeat(6, 1fr); }
    .cat-card {
      background: white;
      border-radius: var(--radius);
      padding: 22px 8px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: 0.25s;
      border: 1px solid rgba(0,0,0,0.02);
      cursor: pointer;
    }
    .cat-card:hover { transform: translateY(-8px); box-shadow: 0 20px 40px rgba(0,20,40,0.07); border-color: var(--accent-soft); background: #fafcff; }
    .cat-card .icon { font-size: 2.1rem; color: var(--accent); margin-bottom: 4px; }
    .cat-card h4 { font-weight: 600; font-size: 1rem; }

    /* products – clean & modern */
    .products-grid { grid-template-columns: repeat(4, 1fr); }
    .product {
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: 0.25s;
      border: 1px solid rgba(0,0,0,0.02);
      display: flex;
      flex-direction: column;
    }
    .product:hover { transform: translateY(-5px); box-shadow: 0 20px 44px rgba(0,20,40,0.07); }
    .product img {
      width: 100%;
      height: 210px;
      object-fit: cover;
      background: #f0f5fd;
    }
    .product-body { padding: 14px 16px 6px; flex: 1; }
    .product-body h5 { font-weight: 600; font-size: 1rem; margin-bottom: 2px; }
    .product-cat { font-size: 0.8rem; color: var(--muted); text-transform: capitalize; }
    .price-row { display: flex; align-items: center; justify-content: space-between; margin-top: 8px; }
    .price { font-weight: 700; font-size: 1.1rem; }
    .old-price { color: var(--muted); text-decoration: line-through; font-size: 0.85rem; margin-left: 6px; }
    .rating { color: #f7b731; font-size: 0.85rem; display: flex; align-items: center; gap: 4px; }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 8px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 10px 6px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.9rem;
      transition: 0.2s;
      cursor: pointer;
    }
    .add-btn:hover { background: #1a3f5e; }
    .wish-btn {
      background: transparent;
      border: 1px solid #e5ecf5;
      padding: 8px 14px;
      border-radius: 40px;
      transition: 0.2s;
      cursor: pointer;
    }
    .wish-btn:hover { background: #f5f9ff; border-color: var(--accent); color: var(--accent); }

    /* deal – fresh layout */
    .deal-card {
      display: flex;
      gap: 24px;
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      align-items: stretch;
    }
    .deal-card img { width: 44%; object-fit: cover; max-height: 320px; background: #eef4fa; }
    .deal-content { padding: 32px 28px; flex: 1; display: flex; flex-direction: column; justify-content: center; }
    .deal-content h3 { font-family: 'Poppins', sans-serif; font-size: 1.7rem; }
    .timer {
      display: flex; gap: 10px; margin: 16px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 8px 12px;
      border-radius: 14px;
      min-width: 68px;
      text-align: center;
    }
    .time-box div:first-child { font-size: 1.6rem; font-weight: 700; line-height: 1.2; }
    .time-box div:last-child { font-size: 0.65rem; opacity: 0.7; letter-spacing: 0.4px; }
    .deal-price { display: flex; align-items: center; gap: 16px; }
    .deal-price .price { font-size: 1.9rem; }
    .deal-discount { background: #ff4d6a; color: white; padding: 4px 14px; border-radius: 40px; font-weight: 700; }

    /* testimonials – scrollable */
    .testimonials {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scrollbar-width: thin;
    }
    .testimonial {
      min-width: 280px;
      background: white;
      padding: 20px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      border: 1px solid #f0f5fc;
    }
    .testimonial .rating { color: #f7b731; margin-bottom: 6px; }
    .avatar {
      width: 44px; height: 44px; border-radius: 60px;
      object-fit: cover; background: #dae3ef;
    }

    /* newsletter – soft & inviting */
    .newsletter {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 48px 32px;
      text-align: center;
    }
    .newsletter h3 { font-family: 'Poppins', sans-serif; font-size: 1.8rem; }
    .newsletter-input {
      display: flex; justify-content: center; gap: 10px; flex-wrap: wrap;
      margin-top: 16px;
    }
    .newsletter-input input {
      padding: 14px 22px;
      border-radius: 60px;
      border: 0;
      width: 320px;
      max-width: 100%;
      font-size: 0.95rem;
    }

    footer {
      padding: 40px 0 24px;
      border-top: 1px solid #e5ecf5;
      color: var(--muted);
    }

    /* responsive */
    @media (max-width: 1100px) {
      .categories-grid { grid-template-columns: repeat(3,1fr); }
      .products-grid { grid-template-columns: repeat(3,1fr); }
    }
    @media (max-width: 820px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .search-wrap { min-width: 140px; }
      .products-grid { grid-template-columns: repeat(2,1fr); }
      .categories-grid { grid-template-columns: repeat(2,1fr); }
      .deal-card { flex-direction: column; }
      .deal-card img { width: 100%; max-height: 210px; }
      .hero h1 { font-size: 2.2rem; }
    }
    @media (max-width: 550px) {
      .products-grid { grid-template-columns: 1fr; }
      .categories-grid { grid-template-columns: 1fr 1fr; }
      .hero { padding: 44px 16px; }
      .hero h1 { font-size: 1.8rem; }
      .time-box { min-width: 54px; padding: 6px 4px; }
    }
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .flex { display: flex; align-items: center; gap: 12px; }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-cube"></i> Nova<span>.</span></a>
    </div>
    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#" id="catMenuBtn"><i class="fas fa-th"></i> Categories</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Popular</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Offers</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:12px;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search products...">
        <button class="icon-btn" id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <a class="icon-btn" href="#"><i class="far fa-user"></i></a>
        <a class="icon-btn" href="#"><i class="far fa-heart"></i></a>
        <a class="cart" href="#">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-count" id="cartCount">0</span>
        </a>
      </div>
    </div>
  </div>
  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none; background:white; border-top:1px solid #eee;">
    <div class="container" style="padding:16px 0; display:flex; flex-direction:column; gap:12px;">
      <a href="#">Home</a><a href="#">Categories</a><a href="#">Popular</a><a href="#deals">Offers</a>
    </div>
  </div>
</header>

<main>
  <!-- Hero -->
  <section class="hero">
    <div class="container">
      <h1>New season, <i>fresh</i> finds</h1>
      <p>Discover curated fashion, gadgets & lifestyle — free shipping on your first order.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow">Shop now <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-ghost" id="exploreDeals">View deals</button>
      </div>
    </div>
  </section>

  <!-- Categories -->
  <section class="section container">
    <div class="text-center">
      <h2 class="section-title">Browse categories</h2>
      <p class="section-sub">Find exactly what you need</p>
    </div>
    <div class="grid categories-grid" id="categoriesGrid"></div>
  </section>

  <!-- Products -->
  <section class="section container" id="productsSection">
    <div class="text-center">
      <h2 class="section-title">Trending now</h2>
      <p class="section-sub">Most loved this week</p>
    </div>
    <div class="grid products-grid" id="productsGrid"></div>
  </section>

  <!-- Deal -->
  <section id="deals" class="section container">
    <div class="text-center">
      <h2 class="section-title">Flash deal</h2>
      <p class="section-sub">Hurry, time is running out</p>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Powerful, portable, and built for the future.</p>
        <div class="timer">
          <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="price">$999</span>
          <span class="old-price">$1,199</span>
          <span class="deal-discount">-17%</span>
        </div>
        <p style="margin:8px 0 0;">Only <strong>12</strong> items left</p>
        <div style="margin-top:16px;">
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Grab now</button>
        </div>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="section container">
    <div class="text-center">
      <h2 class="section-title">Customer stories</h2>
      <p class="section-sub">Real reviews from real people</p>
    </div>
    <div class="testimonials" id="testimonials">
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p>"Absolutely love the quality and fast shipping. Will order again!"</p>
        <div class="flex">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava" class="avatar">
          <div><div style="font-weight:600;">Ava M.</div><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★☆</div>
        <p>"Great selection, smooth checkout. My new go-to store."</p>
        <div class="flex">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael" class="avatar">
          <div><div style="font-weight:600;">Michael L.</div><div class="muted" style="font-size:0.8rem;">Frequent shopper</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p>"Incredible customer support and premium products. Highly recommend."</p>
        <div class="flex">
          <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80" alt="James" class="avatar">
          <div><div style="font-weight:600;">James R.</div><div class="muted" style="font-size:0.8rem;">New customer</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Newsletter -->
  <section class="section container">
    <div class="newsletter">
      <h3>Join the community</h3>
      <p>Subscribe and get 10% off your next purchase</p>
      <div class="newsletter-input">
        <input type="email" id="newsletterEmail" placeholder="Your email address">
        <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
      </div>
      <div id="newsletterMsg" style="margin-top:12px;font-size:0.95rem;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container" style="display:flex;flex-wrap:wrap;gap:24px;justify-content:space-between;">
    <div>
      <div style="font-weight:700;font-size:1.2rem;display:flex;align-items:center;gap:6px;"><i class="fas fa-cube" style="color:var(--accent);"></i> Nova</div>
      <p class="muted" style="max-width:280px;margin-top:6px;">Modern e‑commerce experience · built with care.</p>
      <div style="margin-top:12px;display:flex;gap:12px;">
        <a class="icon-btn" href="#"><i class="fab fa-twitter"></i></a>
        <a class="icon-btn" href="#"><i class="fab fa-instagram"></i></a>
        <a class="icon-btn" href="#"><i class="fab fa-youtube"></i></a>
      </div>
    </div>
    <div style="display:flex;gap:32px;flex-wrap:wrap;">
      <div><div style="font-weight:600;">Company</div><div class="muted" style="line-height:2;">About<br>Careers<br>Press</div></div>
      <div><div style="font-weight:600;">Support</div><div class="muted" style="line-height:2;">Help<br>Returns<br>Contact</div></div>
    </div>
  </div>
  <div class="container" style="text-align:center;margin-top:24px;font-size:0.8rem;color:var(--muted);">© <span id="year"></span> Nova · all rights reserved</div>
</footer>

<script>
  (function() {
    // ---------- DATA ----------
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];
    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
      { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
      { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
      { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
    ];

    // ---------- STATE ----------
    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');

    // ---------- RENDER ----------
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const card = document.createElement('div');
        card.className = 'cat-card';
        card.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4>`;
        card.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(card);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const el = document.createElement('div');
        el.className = 'product';
        el.style.position = 'relative';
        const badgeHtml = p.badge ? `<div style="position:absolute;margin:10px;z-index:2;"><span style="background:${p.badge.startsWith('-') ? '#ff4d6a' : '#3b7dff'};color:white;padding:4px 14px;border-radius:30px;font-weight:700;font-size:0.7rem;">${p.badge}</span></div>` : '';
        el.innerHTML = `
          ${badgeHtml}
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="product-cat">${p.category}</div>
            <div class="price-row">
              <div><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? ` <span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
              <div class="rating"><span>${'★'.repeat(Math.round(p.rating))}</span> <span class="muted" style="font-size:0.7rem;">(${p.reviews})</span></div>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(el);
      });
      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = Number(btn.dataset.id);
          addToCart(id, btn);
        });
      });
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    // ---------- CART ----------
    function addToCart(id, btn) {
      const p = PRODUCTS.find(x => x.id === id);
      if (!p) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '✓ Added';
        btn.disabled = true;
        setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1200);
      }
    }

    // ---------- DEAL TIMER ----------
    function setupTimer() {
      const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
      const tick = () => {
        const diff = target - new Date();
        if (diff <= 0) return;
        const days = Math.floor(diff / (86400*1000));
        const hours = Math.floor((diff % (86400*1000)) / (3600*1000));
        const mins = Math.floor((diff % (3600*1000)) / (60*1000));
        const secs = Math.floor((diff % (60*1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2,'0');
      };
      tick();
      setInterval(tick, 1000);
    }

    // ---------- BINDINGS ----------
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

    document.getElementById('mobileToggle').addEventListener('click', () => {
      const menu = document.getElementById('mobileMenu');
      menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
    });

    document.getElementById('shopNow').addEventListener('click', () => document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('buyDeal').addEventListener('click', () => {
      cartCount++;
      cartCountEl.textContent = cartCount;
      alert('Deal
