<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons (Inter, Poppins, Font Awesome) -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz@14..32&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    :root {
      --bg: #fafcff;
      --primary: #0b2b4a;
      --accent: #2b9eff;
      --accent-light: #e6f2ff;
      --muted: #5f6c80;
      --surface: #ffffff;
      --card-shadow: 0 8px 24px rgba(0, 20, 40, 0.06);
      --radius: 16px;
      --container: 1240px;
      --transition: all 0.2s ease;
    }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }
    /* header – softer, more breathing */
    header {
      background: rgba(255,255,255,0.92);
      backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 50;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 16px 0;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.3px;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand .accent { color: var(--accent); }
    .brand i { font-size: 20px; color: var(--accent); }

    /* Navigation – friendly & clean */
    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      display: flex;
      align-items: center;
      gap: 8px;
      transition: var(--transition);
      color: var(--primary);
    }
    nav.main-nav li a:hover {
      background: var(--accent-light);
      color: var(--accent);
    }

    /* search – friendly & rounded */
    .search {
      background: white;
      border: 1px solid #eef2f6;
      border-radius: 60px;
      padding: 6px 12px 6px 18px;
      display: flex;
      align-items: center;
      gap: 8px;
      min-width: 220px;
      transition: var(--transition);
      box-shadow: 0 2px 6px rgba(0,0,0,0.01);
    }
    .search:focus-within {
      border-color: var(--accent);
      box-shadow: 0 4px 12px rgba(43, 158, 255, 0.12);
    }
    .search input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 0.95rem;
      padding: 6px 0;
    }
    .search input::placeholder { color: #a0b0c4; }
    .icon-btn {
      background: transparent;
      border: 0;
      color: var(--primary);
      font-size: 1.2rem;
      padding: 6px 8px;
      border-radius: 30px;
      cursor: pointer;
      transition: var(--transition);
    }
    .icon-btn:hover { background: var(--accent-light); color: var(--accent); }

    .header-actions { display: flex; align-items: center; gap: 6px; }
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
      box-shadow: 0 4px 8px rgba(43, 158, 255, 0.3);
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.5rem;
      color: var(--primary);
      cursor: pointer;
    }

    /* Hero – friendly & inviting */
    .hero {
      background: linear-gradient(130deg, #0a2742 0%, #1b3b5c 100%);
      color: white;
      border-radius: 0 0 var(--radius) var(--radius);
      padding: 72px 20px 64px;
      text-align: center;
      margin-bottom: 16px;
      box-shadow: inset 0 -2px 0 rgba(255,255,255,0.03);
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      max-width: 800px;
      margin: 0 auto 14px;
    }
    .hero p {
      opacity: 0.85;
      font-size: 1.15rem;
      max-width: 640px;
      margin: 0 auto 28px;
    }
    .btn-group { display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      transition: var(--transition);
      font-size: 0.95rem;
    }
    .btn-primary {
      background: var(--accent);
      color: #0b1f30;
      box-shadow: 0 8px 20px rgba(43, 158, 255, 0.3);
    }
    .btn-primary:hover { background: #1a8df0; transform: scale(1.02); box-shadow: 0 12px 28px rgba(43, 158, 255, 0.35); }
    .btn-ghost {
      background: rgba(255,255,255,0.08);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255,255,255,0.2);
      color: white;
    }
    .btn-ghost:hover { background: rgba(255,255,255,0.15); }

    /* sections */
    .section { padding: 48px 0; }
    .section-title {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
      margin-bottom: 6px;
      font-weight: 600;
    }
    .section-sub { color: var(--muted); margin-bottom: 24px; }

    /* categories – bigger, friendlier */
    .grid { display: grid; gap: 20px; }
    .categories-grid { grid-template-columns: repeat(6, 1fr); }
    .cat-card {
      background: white;
      border-radius: var(--radius);
      padding: 24px 8px;
      text-align: center;
      box-shadow: var(--card-shadow);
      transition: var(--transition);
      border: 1px solid rgba(0,0,0,0.02);
      cursor: pointer;
    }
    .cat-card:hover { transform: translateY(-6px); box-shadow: 0 16px 36px rgba(0,20,40,0.08); border-color: var(--accent-light); }
    .cat-card .icon { font-size: 2rem; color: var(--accent); margin-bottom: 6px; }
    .cat-card h4 { font-weight: 600; font-size: 1rem; margin-top: 4px; }
    .cat-card .muted { font-size: 0.8rem; }

    /* products – clean cards */
    .products-grid { grid-template-columns: repeat(4, 1fr); }
    .product {
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--card-shadow);
      transition: var(--transition);
      border: 1px solid rgba(0,0,0,0.02);
      display: flex;
      flex-direction: column;
    }
    .product:hover { transform: translateY(-4px); box-shadow: 0 18px 40px rgba(0,20,40,0.07); }
    .product img {
      width: 100%;
      height: 210px;
      object-fit: cover;
      background: #f2f6fc;
    }
    .product-body { padding: 14px 16px 8px; flex: 1; }
    .product-body h5 { font-weight: 600; font-size: 1rem; margin-bottom: 4px; }
    .product-category { font-size: 0.8rem; color: var(--muted); text-transform: capitalize; }
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
      transition: var(--transition);
      cursor: pointer;
    }
    .add-btn:hover { background: #1b3f5e; }
    .wish-btn {
      background: transparent;
      border: 1px solid #e9edf2;
      padding: 8px 14px;
      border-radius: 40px;
      transition: var(--transition);
      cursor: pointer;
    }
    .wish-btn:hover { background: #f5f8fe; border-color: var(--accent); color: var(--accent); }

    /* deal card – friendlier */
    .deal-card {
      display: flex;
      gap: 20px;
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--card-shadow);
      align-items: stretch;
    }
    .deal-card img { width: 45%; object-fit: cover; max-height: 340px; background: #eef4fa; }
    .deal-content { padding: 32px 28px; flex: 1; display: flex; flex-direction: column; justify-content: center; }
    .deal-content h3 { font-family: 'Poppins', sans-serif; font-size: 1.6rem; }
    .timer {
      display: flex; gap: 10px; margin: 16px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 12px;
      border-radius: 12px;
      min-width: 70px;
      text-align: center;
    }
    .time-box div:first-child { font-size: 1.5rem; font-weight: 700; line-height: 1.2; }
    .time-box div:last-child { font-size: 0.7rem; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.5px; }
    .deal-price { display: flex; align-items: center; gap: 14px; }
    .deal-price .price { font-size: 1.8rem; }
    .deal-discount { background: #ff4d6a; color: white; padding: 4px 14px; border-radius: 30px; font-weight: 700; }

    /* testimonials – scrollable */
    .testimonials {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 12px 4px 20px;
      scrollbar-width: thin;
    }
    .testimonial {
      min-width: 300px;
      background: white;
      padding: 20px;
      border-radius: var(--radius);
      box-shadow: var(--card-shadow);
      border: 1px solid #f0f4fa;
    }
    .testimonial .rating { color: #f7b731; margin-bottom: 6px; }
    .testimonial .avatar {
      width: 44px; height: 44px; border-radius: 60px;
      object-fit: cover;
      background: #dce3ec;
    }

    /* newsletter – softer */
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

    /* footer */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid #eef2f6;
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
      .search { min-width: 140px; }
      .products-grid { grid-template-columns: repeat(2,1fr); }
      .categories-grid { grid-template-columns: repeat(2,1fr); }
      .deal-card { flex-direction: column; }
      .deal-card img { width: 100%; max-height: 220px; }
      .hero h1 { font-size: 2.2rem; }
    }
    @media (max-width: 550px) {
      .products-grid { grid-template-columns: 1fr; }
      .categories-grid { grid-template-columns: 1fr 1fr; }
      .hero { padding: 48px 16px; }
      .hero h1 { font-size: 1.8rem; }
      .time-box { min-width: 56px; padding: 8px 4px; }
    }
    /* small utilities */
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .flex { display: flex; align-items: center; gap: 12px; }
    .gap-8 { gap: 8px; }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i> Nexus<span class="accent">Shop</span></a>
    </div>
    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#" id="catMenuBtn"><i class="fas fa-th"></i> Categories</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:12px;">
      <div class="search">
        <input type="search" id="searchInput" placeholder="Search items..." aria-label="Search">
        <button class="icon-btn" id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <a class="icon-btn" href="#" title="Account"><i class="far fa-user"></i></a>
        <a class="icon-btn" href="#" title="Wishlist"><i class="far fa-heart"></i></a>
        <a class="cart" href="#" id="cartBtn">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-count" id="cartCount">0</span>
        </a>
      </div>
    </div>
  </div>
  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none; background:white; border-top:1px solid #eee;">
    <div class="container" style="padding:16px 0;">
      <nav style="display:flex;flex-direction:column;gap:10px;">
        <a href="#">Home</a><a href="#">Categories</a><a href="#">Trending</a><a href="#deals">Deals</a>
      </nav>
    </div>
  </div>
</header>

<main>
  <!-- Hero -->
  <section class="hero">
    <div class="container">
      <h1>Discover your <span style="color:var(--accent);">style</span> · new arrivals</h1>
      <p>Curated picks from fashion, tech & lifestyle – free shipping on first order.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow">Shop now <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
      </div>
    </div>
  </section>

  <!-- Categories -->
  <section class="section container">
    <div class="text-center">
      <h2 class="section-title">Shop by category</h2>
      <p class="section-sub">Find what you love, faster.</p>
    </div>
    <div class="grid categories-grid" id="categoriesGrid"></div>
  </section>

  <!-- Products -->
  <section class="section container" id="productsSection">
    <div class="text-center">
      <h2 class="section-title">Trending now</h2>
      <p class="section-sub">Most popular this week</p>
    </div>
    <div class="grid products-grid" id="productsGrid"></div>
  </section>

  <!-- Deal -->
  <section id="deals" class="section container">
    <div class="text-center">
      <h2 class="section-title">Flash sale</h2>
      <p class="section-sub">Limited time, don't miss out</p>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Supercharged by the M2 chip — thin, light, and built for performance.</p>
        <div class="timer" aria-hidden="false">
          <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div>Hours</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="price">$999</span>
          <span class="old-price">$1,199</span>
          <span class="deal-discount">-17%</span>
        </div>
        <p style="margin:10px 0 0;">Only <strong>12</strong> left at this price</p>
        <div style="margin-top:16px;">
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Grab deal</button>
        </div>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="section container">
    <div class="text-center">
      <h2 class="section-title">Real reviews</h2>
      <p class="section-sub">What our customers say</p>
    </div>
    <div class="testimonials" id="testimonials">
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p>"Super fast delivery and amazing quality. The packaging was beautiful."</p>
        <div class="flex">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava" class="avatar">
          <div><div style="font-weight:600;">Ava M.</div><div class="muted" style="font-size:0.8rem;">Verified</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★☆</div>
        <p>"Great selection, easy checkout. Will definitely order again."</p>
        <div class="flex">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael" class="avatar">
          <div><div style="font-weight:600;">Michael L.</div><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p>"The customer support was incredible. They solved my issue in minutes."</p>
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
      <h3>Stay in the loop</h3>
      <p>Subscribe and get 10% off your next order</p>
      <div class="newsletter-input">
        <input type="email" id="newsletterEmail" placeholder="Your email address" aria-label="Email">
        <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
      </div>
      <div id="newsletterMsg" style="margin-top:12px;font-size:0.95rem;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container" style="display:flex;flex-wrap:wrap;gap:24px;justify-content:space-between;">
    <div>
      <div style="font-weight:700;font-size:1.2rem;display:flex;align-items:center;gap:6px;"><i class="fas fa-store-alt" style="color:var(--accent);"></i> NexusShop</div>
      <p class="muted" style="max-width:300px;margin-top:6px;">Modern e‑commerce demo · crafted with care.</p>
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
  <div class="container" style="text-align:center;margin-top:24px;font-size:0.8rem;color:var(--muted);">© <span id="year"></span> NexusShop · all rights reserved</div>
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
        card.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div class="muted">explore</div>`;
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
        const badgeHtml = p.badge ? `<div style="position:absolute;margin:10px;z-index:2;"><span style="background:${p.badge.startsWith('-') ? '#ff4d6a' : '#2b9eff'};color:white;padding:4px 12px;border-radius:30px;font-weight:700;font-size:0.7rem;">${p.badge}</span></div>` : '';
        el.style.position = 'relative';
        el.innerHTML = `
          ${badgeHtml}
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="product-category">${p.category}</div>
            <div class="price-row">
              <div><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? ` <span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
              <div class="rating"><span>${'★'.repeat(Math.round(p.rating))}</span> <span class="muted" style="font-size:0.7rem;">(${p.reviews})</span></div>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(el);
      });
      // attach add listeners
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

    // ---------- UI BINDINGS ----------
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
      alert('Deal added to cart!');
    });

    // Newsletter
    document.getElementById('subscribeBtn').addEventListener('click', () => {
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email address.';
        msg.style.color = '#ffb3b3';
        return;
      }
      msg.style.display = 'block';
      msg.textContent = '✅ You’re subscribed!';
      msg.style.color = '#b3e0b3';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 3000);
    });

    // Year
    document.getElementById('year').textContent = new Date().getFullYear();

    // Category dropdown hint
    document.getElementById('catMenuBtn').addEventListener('click', (e) => {
      e.preventDefault();
      document.querySelector('.categories-grid').scrollIntoView({ behavior: 'smooth' });
    });

    // ---------- INIT ----------
    renderCategories();
    renderProducts(PRODUCTS);
    setupTimer();
  })();
</script>
</body>
</html>
