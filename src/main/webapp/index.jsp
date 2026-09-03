<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>🌿 ColorShop · vibrant e‑com</title>
  <!-- Font Awesome 6 (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Roboto, system-ui, -apple-system, sans-serif;
    }

    body {
      background: linear-gradient(145deg, #f9f3e8 0%, #ffe9d6 100%);
      min-height: 100vh;
      padding: 1.5rem 2rem 3rem;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* main container – playful, colourful card */
    .shop-wrapper {
      max-width: 1400px;
      width: 100%;
      background: rgba(255, 247, 235, 0.7);
      backdrop-filter: blur(2px);
      border-radius: 60px 60px 40px 40px;
      padding: 2rem 2.5rem 3rem;
      box-shadow: 0 20px 50px rgba(233, 150, 87, 0.25),
                  0 8px 20px rgba(0,0,0,0.05);
      border: 2px solid #ffffff88;
    }

    /* ===== HEADER ===== */
    .header {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 1.5rem 1rem;
      margin-bottom: 2.8rem;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 0.6rem;
      font-size: 2.1rem;
      font-weight: 700;
      background: linear-gradient(135deg, #ff7b89, #ffb07c);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      letter-spacing: -0.5px;
    }
    .logo i {
      background: #ffb07c;
      padding: 10px 12px;
      border-radius: 40px;
      color: #2d1b0f;
      font-size: 1.8rem;
      -webkit-text-fill-color: #2d1b0f;
      background: #ffdbb5;
      box-shadow: 0 6px 0 #d48d5e;
    }

    .search-bar {
      display: flex;
      align-items: center;
      background: white;
      padding: 0.1rem 0.1rem 0.1rem 1.5rem;
      border-radius: 60px;
      box-shadow: 0 8px 16px #eacab188;
      border: 2px solid #fcd5b0;
      flex: 1 1 280px;
      max-width: 450px;
      transition: 0.2s;
    }
    .search-bar:focus-within {
      border-color: #ff8a6c;
      box-shadow: 0 8px 20px #f7b28b70;
    }
    .search-bar input {
      border: none;
      padding: 0.9rem 0.5rem;
      font-size: 1rem;
      background: transparent;
      width: 100%;
      outline: none;
      color: #2d1b0f;
      font-weight: 500;
    }
    .search-bar button {
      background: #ff8a6c;
      border: none;
      padding: 0.8rem 1.8rem;
      border-radius: 50px;
      color: white;
      font-weight: 700;
      font-size: 1rem;
      cursor: pointer;
      display: flex;
      gap: 0.4rem;
      align-items: center;
      transition: 0.2s;
      box-shadow: 0 4px 0 #b85f42;
    }
    .search-bar button:hover {
      background: #f5734f;
      transform: scale(0.96);
      box-shadow: 0 2px 0 #b85f42;
    }

    .header-icons {
      display: flex;
      gap: 1.2rem;
      font-size: 1.8rem;
      color: #4a2c1a;
    }
    .header-icons i {
      background: white;
      padding: 12px 14px;
      border-radius: 50%;
      box-shadow: 0 6px 0 #dba87b;
      transition: 0.15s;
      cursor: default;
      border: 2px solid #fad2b0;
      color: #3f2516;
    }
    .header-icons i:hover {
      transform: translateY(-3px);
      box-shadow: 0 8px 0 #c48562;
      background: #fff5ea;
    }
    .badge {
      position: relative;
    }
    .badge::after {
      content: "3";
      position: absolute;
      top: -6px;
      right: -6px;
      background: #ff5e4a;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      padding: 0.2rem 0.6rem;
      border-radius: 40px;
      border: 2px solid white;
    }

    /* ===== CATEGORY PILLS ===== */
    .categories {
      display: flex;
      flex-wrap: wrap;
      gap: 0.8rem 1.2rem;
      justify-content: center;
      margin-bottom: 2.8rem;
    }
    .categories span {
      background: #fffaef;
      padding: 0.6rem 2rem;
      border-radius: 60px;
      font-weight: 600;
      color: #321f12;
      box-shadow: 0 4px 0 #dba072;
      border: 2px solid #fde2ca;
      transition: 0.1s ease;
      cursor: default;
      font-size: 0.9rem;
      letter-spacing: 0.5px;
    }
    .categories span i {
      margin-right: 8px;
      color: #df7a4b;
    }
    .categories span.active {
      background: #ffb185;
      border-color: #a8603a;
      box-shadow: 0 4px 0 #8b4f2e;
      color: #221308;
    }

    /* ===== PRODUCT GRID ===== */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
      gap: 2.5rem 1.8rem;
      margin: 2rem 0 3rem;
    }

    .product-card {
      background: #ffffffdd;
      backdrop-filter: blur(4px);
      border-radius: 48px 48px 32px 32px;
      padding: 1.4rem 1rem 1.8rem;
      box-shadow: 0 12px 28px #dba07240,
                  0 6px 0 #dfb28b;
      border: 2px solid #fffbf5;
      transition: 0.2s;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      position: relative;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 30px #c4835b60, 0 6px 0 #c9885e;
      border-color: #ffd9bc;
    }

    .product-img {
      background: linear-gradient(145deg, #fde1cd, #fccdae);
      width: 100%;
      aspect-ratio: 1/1;
      border-radius: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 4.5rem;
      color: #542f19;
      box-shadow: inset 0 -8px 0 #bf8d6b;
      margin-bottom: 1rem;
      border: 2px solid #ffdec6;
    }

    .product-card h3 {
      font-size: 1.3rem;
      font-weight: 700;
      color: #281a0f;
      margin: 0.3rem 0 0.1rem;
    }
    .product-card .desc {
      font-size: 0.85rem;
      color: #5d3d27;
      margin-bottom: 0.3rem;
      opacity: 0.9;
    }
    .product-card .price {
      font-size: 1.8rem;
      font-weight: 700;
      background: linear-gradient(135deg, #bf6f3f, #dc7e4a);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      margin: 0.2rem 0 0.8rem;
    }
    .product-card .price small {
      font-size: 1rem;
      font-weight: 500;
      -webkit-text-fill-color: #8f623f;
      color: #8f623f;
    }

    .btn-add {
      background: #fed1b0;
      border: none;
      border-radius: 60px;
      padding: 0.8rem 1.8rem;
      font-weight: 700;
      font-size: 1rem;
      color: #221307;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      box-shadow: 0 6px 0 #b87a58;
      transition: 0.1s ease;
      cursor: pointer;
      border: 2px solid #ffe2ca;
      margin-top: 0.2rem;
    }
    .btn-add i {
      font-size: 1rem;
    }
    .btn-add:hover {
      background: #ffb992;
      transform: scale(0.96);
      box-shadow: 0 3px 0 #a06847;
    }

    .badge-sale {
      position: absolute;
      top: 18px;
      right: 20px;
      background: #ff4f3a;
      color: white;
      font-weight: 700;
      padding: 0.3rem 1rem;
      border-radius: 60px;
      font-size: 0.8rem;
      border: 2px solid white;
      box-shadow: 0 4px 0 #932f1e;
      transform: rotate(6deg);
    }

    /* ===== FOOTER / BANNER ===== */
    .footer-banner {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      background: #ffe3ce;
      border-radius: 100px 60px 60px 100px;
      padding: 1.2rem 2.5rem;
      border: 3px solid white;
      box-shadow: 0 10px 0 #c18f6b;
      margin-top: 1rem;
    }
    .footer-banner p {
      font-size: 1.2rem;
      font-weight: 600;
      color: #2d1b0f;
    }
    .footer-banner p i {
      color: #ff684b;
      margin-right: 10px;
    }
    .footer-banner .highlight {
      background: #fa7f5a;
      padding: 0.5rem 2rem;
      border-radius: 60px;
      color: white;
      font-weight: 700;
      border: 2px solid #ffffffc0;
      box-shadow: 0 6px 0 #9a583b;
      transition: 0.1s;
    }
    .footer-banner .highlight:hover {
      background: #ec6a42;
      transform: scale(0.97);
      box-shadow: 0 3px 0 #9a583b;
    }

    /* responsive */
    @media (max-width: 700px) {
      body { padding: 1rem; }
      .shop-wrapper { padding: 1.5rem 1rem; }
      .header { flex-direction: column; align-items: stretch; }
      .search-bar { max-width: 100%; }
      .logo { font-size: 1.8rem; justify-content: center; }
      .header-icons { justify-content: center; }
      .footer-banner { flex-direction: column; gap: 1rem; text-align: center; border-radius: 40px; }
    }
  </style>
</head>
<body>
<div class="shop-wrapper">

  <!-- header -->
  <header class="header">
    <div class="logo">
      <i class="fas fa-palette"></i> Color<span style="background: linear-gradient(145deg,#ff9f6e,#e0643a); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Shop</span>
    </div>

    <div class="search-bar">
      <input type="text" placeholder="Find your vibe…" />
      <button><i class="fas fa-magnifying-glass"></i> Search</button>
    </div>

    <div class="header-icons">
      <i class="fas fa-heart" style="color:#d45c3a;"></i>
      <i class="fas fa-user" style="color:#3f2b1b;"></i>
      <span class="badge"><i class="fas fa-bag-shopping" style="color:#3f2b1b;"></i></span>
    </div>
  </header>

  <!-- categories -->
  <div class="categories">
    <span class="active"><i class="fas fa-fire"></i> Trending</span>
    <span><i class="fas fa-leaf"></i> Nature</span>
    <span><i class="fas fa-bolt"></i> Electric</span>
    <span><i class="fas fa-candy-cane"></i> Sweet</span>
    <span><i class="fas fa-cloud-sun"></i> Pastel</span>
  </div>

  <!-- product grid -->
  <div class="product-grid">

    <!-- card 1 -->
    <div class="product-card">
      <span class="badge-sale">-30%</span>
      <div class="product-img"><i class="fas fa-headphones-simple"></i></div>
      <h3>Pulse Beats</h3>
      <div class="desc">wireless · vivid orange</div>
      <div class="price">$69 <small>99</small></div>
      <button class="btn-add"><i class="fas fa-cart-plus"></i> Add</button>
    </div>

    <!-- card 2 -->
    <div class="product-card">
      <div class="product-img" style="background: #d7f0d0;"><i class="fas fa-mug-saucer" style="color:#4d6b3a;"></i></div>
      <h3>Moss Mug</h3>
      <div class="desc">ceramic · sage green</div>
      <div class="price">$24 <small>50</small></div>
      <button class="btn-add"><i class="fas fa-cart-plus"></i> Add</button>
    </div>

    <!-- card 3 -->
    <div class="product-card">
      <div class="badge-sale" style="background: #d47bff;">new</div>
      <div class="product-img" style="background: #fce3b6;"><i class="fas fa-sun" style="color:#d9922b;"></i></div>
      <h3>Solar Lamp</h3>
      <div class="desc">warm glow · portable</div>
      <div class="price">$44 <small>00</small></div>
      <button class="btn-add"><i class="fas fa-cart-plus"></i> Add</button>
    </div>

    <!-- card 4 -->
    <div class="product-card">
      <div class="product-img" style="background: #ffd6e0;"><i class="fas fa-tshirt" style="color:#b94f6b;"></i></div>
      <h3>Retro Tee</h3>
      <div class="desc">cotton · neon splash</div>
      <div class="price">$34 <small>90</small></div>
      <button class="btn-add"><i class="fas fa-cart-plus"></i> Add</button>
    </div>

    <!-- card 5 -->
    <div class="product-card">
      <div class="product-img" style="background: #b9def0;"><i class="fas fa-camera" style="color:#22556b;"></i></div>
      <h3>Lomo Snap</h3>
      <div class="desc">film camera · cyan</div>
      <div class="price">$129 <small>00</small></div>
      <button class="btn-add"><i class="fas fa-cart-plus"></i> Add</button>
    </div>

    <!-- card 6 -->
    <div class="product-card">
      <span class="badge-sale" style="background: #32b87a;">eco</span>
      <div class="product-img" style="background: #dcd3b0;"><i class="fas fa-bottle-water" style="color:#2b6b45;"></i></div>
      <h3>Bamboo Bottle</h3>
      <div class="desc">reusable · earth tone</div>
      <div class="price">$19 <small>99</small></div>
      <button class="btn-add"><i class="fas fa-cart-plus"></i> Add</button>
    </div>
  </div>

  <!-- footer banner -->
  <div class="footer-banner">
    <p><i class="fas fa-gift"></i> Free shipping on orders over $50</p>
    <div class="highlight"><i class="fas fa-percent"></i> 10% off first order</div>
    <p><i class="fas fa-credit-card"></i> Secure & colourful checkout</p>
  </div>

  <!-- tiny note: playful & user friendly -->
  <div style="margin-top: 2rem; text-align: center; color: #815d45; font-weight: 500; letter-spacing: 0.4px; background: #ffecdbb0; padding: 0.5rem 1.5rem; border-radius: 60px; display: inline-block; backdrop-filter: blur(4px); border: 2px solid #ffdcc0;">
    <i class="fas fa-face-smile-wink" style="color: #cc6f41;"></i>  made with  ·  colourful joy  <i class="fas fa-face-smile-wink" style="color: #cc6f41;"></i>
  </div>
</div>
</body>
</html>
