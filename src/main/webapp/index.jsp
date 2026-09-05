<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>✨ ShopVerse — Your Happy Place</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet"/>
    <!-- Font Awesome 6 (free) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <style>
        /* ===== RESET & BASE ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary: #6C3CE1;
            --primary-light: #8B5CF6;
            --primary-dark: #5B21B6;
            --secondary: #F43F5E;
            --accent: #F59E0B;
            --bg: #F8FAFC;
            --card-bg: #FFFFFF;
            --text: #0F172A;
            --text-muted: #64748B;
            --shadow: 0 8px 30px rgba(108, 60, 225, 0.15);
            --shadow-hover: 0 20px 50px rgba(108, 60, 225, 0.25);
            --radius: 20px;
            --transition: 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.6;
            overflow-x: hidden;
        }

        /* ===== SCROLLBAR ===== */
        ::-webkit-scrollbar {
            width: 8px;
        }
        ::-webkit-scrollbar-track {
            background: var(--bg);
        }
        ::-webkit-scrollbar-thumb {
            background: var(--primary-light);
            border-radius: 10px;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: var(--primary);
        }

        /* ===== REUSABLE ===== */
        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 32px;
            border: none;
            border-radius: 60px;
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: var(--transition);
            text-decoration: none;
            background: var(--primary);
            color: #fff;
            box-shadow: 0 4px 15px rgba(108, 60, 225, 0.3);
        }
        .btn:hover {
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 12px 30px rgba(108, 60, 225, 0.4);
        }
        .btn-outline {
            background: transparent;
            color: var(--primary);
            border: 2px solid var(--primary);
            box-shadow: none;
        }
        .btn-outline:hover {
            background: var(--primary);
            color: #fff;
            box-shadow: 0 8px 25px rgba(108, 60, 225, 0.3);
        }
        .btn-secondary {
            background: var(--secondary);
            box-shadow: 0 4px 15px rgba(244, 63, 94, 0.3);
        }
        .btn-secondary:hover {
            box-shadow: 0 12px 30px rgba(244, 63, 94, 0.4);
        }

        .section-title {
            font-size: 2.2rem;
            font-weight: 800;
            letter-spacing: -0.02em;
            margin-bottom: 12px;
        }
        .section-sub {
            color: var(--text-muted);
            font-size: 1.1rem;
            max-width: 500px;
        }

        /* ===== HEADER / NAV ===== */
        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255, 255, 255, 0.72);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
            border-bottom: 1px solid rgba(108, 60, 225, 0.08);
            padding: 16px 0;
            transition: var(--transition);
        }
        header.scrolled {
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.06);
        }

        .nav {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            display: flex;
            align-items: center;
            gap: 8px;
            color: var(--text);
            text-decoration: none;
        }
        .logo span {
            color: var(--primary);
        }
        .logo i {
            color: var(--accent);
            font-size: 1.6rem;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 32px;
            list-style: none;
        }
        .nav-links a {
            text-decoration: none;
            color: var(--text-muted);
            font-weight: 500;
            transition: var(--transition);
            font-size: 0.95rem;
            position: relative;
        }
        .nav-links a::after {
            content: '';
            position: absolute;
            bottom: -4px;
            left: 0;
            width: 0;
            height: 2.5px;
            background: var(--primary);
            border-radius: 4px;
            transition: var(--transition);
        }
        .nav-links a:hover {
            color: var(--text);
        }
        .nav-links a:hover::after {
            width: 100%;
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 18px;
        }
        .nav-actions button {
            background: none;
            border: none;
            font-size: 1.3rem;
            cursor: pointer;
            color: var(--text-muted);
            transition: var(--transition);
            position: relative;
            padding: 6px;
            border-radius: 50%;
        }
        .nav-actions button:hover {
            color: var(--primary);
            background: rgba(108, 60, 225, 0.08);
            transform: scale(1.1);
        }
        .badge {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--secondary);
            color: #fff;
            font-size: 0.65rem;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .hamburger {
            display: none;
            flex-direction: column;
            gap: 5px;
            cursor: pointer;
            background: none;
            border: none;
            padding: 6px;
        }
        .hamburger span {
            width: 26px;
            height: 3px;
            background: var(--text);
            border-radius: 4px;
            transition: var(--transition);
        }

        /* ===== HERO ===== */
        .hero {
            padding: 60px 0 80px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            position: relative;
        }
        .hero::before {
            content: '';
            position: absolute;
            top: -30%;
            right: -10%;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(108, 60, 225, 0.08) 0%, transparent 70%);
            border-radius: 50%;
            pointer-events: none;
        }

        .hero-content h1 {
            font-size: 3.5rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            line-height: 1.1;
            margin-bottom: 20px;
        }
        .hero-content h1 .highlight {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .hero-content p {
            font-size: 1.2rem;
            color: var(--text-muted);
            max-width: 480px;
            margin-bottom: 32px;
        }
        .hero-buttons {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        .hero-visual {
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }
        .hero-card {
            background: var(--card-bg);
            border-radius: var(--radius);
            padding: 30px 30px 40px;
            box-shadow: var(--shadow-hover);
            width: 100%;
            max-width: 400px;
            text-align: center;
            transform: rotate(2deg) scale(1);
            transition: var(--transition);
            animation: float 6s ease-in-out infinite;
        }
        .hero-card:hover {
            transform: rotate(0deg) scale(1.02);
        }
        .hero-card .emoji-big {
            font-size: 4rem;
            display: block;
            margin-bottom: 8px;
        }
        .hero-card h3 {
            font-size: 1.4rem;
            margin-bottom: 4px;
        }
        .hero-card .price {
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--primary);
        }
        .hero-card .rating {
            color: var(--accent);
            margin-top: 8px;
            font-size: 1.1rem;
        }
        .hero-card .rating span {
            color: var(--text-muted);
            font-weight: 500;
            margin-left: 6px;
        }
        .hero-card .tag {
            display: inline-block;
            background: var(--secondary);
            color: #fff;
            padding: 4px 16px;
            border-radius: 40px;
            font-size: 0.8rem;
            font-weight: 600;
            margin-top: 12px;
        }

        @keyframes float {
            0%,
            100% {
                transform: translateY(0px) rotate(2deg);
            }
            50% {
                transform: translateY(-16px) rotate(1deg);
            }
        }

        /* ===== CATEGORIES ===== */
        .categories {
            padding: 40px 0 60px;
        }
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
            gap: 20px;
            margin-top: 32px;
        }
        .category-card {
            background: var(--card-bg);
            border-radius: var(--radius);
            padding: 24px 16px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.04);
            transition: var(--transition);
            cursor: pointer;
            border: 2px solid transparent;
        }
        .category-card:hover {
            transform: translateY(-8px);
            border-color: var(--primary-light);
            box-shadow: var(--shadow);
        }
        .category-card i {
            font-size: 2.4rem;
            color: var(--primary);
            margin-bottom: 8px;
        }
        .category-card span {
            font-weight: 600;
            display: block;
            font-size: 0.95rem;
        }

        /* ===== PRODUCTS ===== */
        .products {
            padding: 20px 0 80px;
        }
        .products-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            flex-wrap: wrap;
            gap: 16px;
            margin-bottom: 32px;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 28px;
        }

        .product-card {
            background: var(--card-bg);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.04);
            transition: var(--transition);
            position: relative;
            border: 1px solid rgba(108, 60, 225, 0.06);
        }
        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-hover);
            border-color: transparent;
        }

        .product-image {
            height: 220px;
            background: linear-gradient(135deg, #f0eef9, #e8e4f5);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 4rem;
            position: relative;
            overflow: hidden;
        }
        .product-image .wishlist-btn {
            position: absolute;
            top: 14px;
            right: 14px;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(6px);
            border: none;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            font-size: 1.1rem;
            cursor: pointer;
            transition: var(--transition);
            color: var(--text-muted);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .product-image .wishlist-btn:hover {
            background: #fff;
            transform: scale(1.15);
        }
        .product-image .wishlist-btn.liked {
            color: var(--secondary);
        }

        .product-image .sale-badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--secondary);
            color: #fff;
            padding: 4px 14px;
            border-radius: 40px;
            font-size: 0.75rem;
            font-weight: 700;
        }

        .product-info {
            padding: 20px 20px 24px;
        }
        .product-info h3 {
            font-size: 1.05rem;
            font-weight: 600;
            margin-bottom: 4px;
        }
        .product-info .product-category {
            font-size: 0.8rem;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.04em;
            margin-bottom: 8px;
        }
        .product-info .price-row {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 14px;
        }
        .product-info .price-row .current {
            font-size: 1.4rem;
            font-weight: 700;
            color: var(--text);
        }
        .product-info .price-row .old {
            font-size: 1rem;
            color: var(--text-muted);
            text-decoration: line-through;
        }
        .product-info .add-to-cart {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 50px;
            background: var(--primary);
            color: #fff;
            font-weight: 600;
            font-size: 0.95rem;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .product-info .add-to-cart:hover {
            background: var(--primary-dark);
            transform: scale(1.02);
        }
        .product-info .add-to-cart.added {
            background: #10B981;
        }

        /* ===== CART SIDEBAR ===== */
        .cart-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(15, 23, 42, 0.4);
            backdrop-filter: blur(8px);
            z-index: 2000;
            opacity: 0;
            visibility: hidden;
            transition: var(--transition);
        }
        .cart-overlay.open {
            opacity: 1;
            visibility: visible;
        }

        .cart-sidebar {
            position: fixed;
            top: 0;
            right: -480px;
            width: 460px;
            max-width: 92vw;
            height: 100%;
            background: var(--card-bg);
            z-index: 2001;
            padding: 32px 28px;
            transition: var(--transition);
            box-shadow: -10px 0 40px rgba(0, 0, 0, 0.08);
            display: flex;
            flex-direction: column;
            overflow-y: auto;
        }
        .cart-sidebar.open {
            right: 0;
        }

        .cart-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 24px;
            padding-bottom: 16px;
            border-bottom: 2px solid #f1f5f9;
        }
        .cart-header h2 {
            font-size: 1.6rem;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .cart-header h2 i {
            color: var(--primary);
        }
        .cart-close {
            background: none;
            border: none;
            font-size: 1.6rem;
            cursor: pointer;
            color: var(--text-muted);
            transition: var(--transition);
            padding: 4px;
        }
        .cart-close:hover {
            color: var(--text);
            transform: rotate(90deg);
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding-right: 4px;
        }
        .cart-item {
            display: flex;
            align-items: center;
            gap: 16px;
            padding: 16px 0;
            border-bottom: 1px solid #f1f5f9;
            animation: slideIn 0.3s ease;
        }
        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateX(20px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }
        .cart-item .item-emoji {
            font-size: 2.4rem;
            width: 56px;
            height: 56px;
            background: #f1f5f9;
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }
        .cart-item .item-details {
            flex: 1;
        }
        .cart-item .item-details h4 {
            font-weight: 600;
            font-size: 1rem;
        }
        .cart-item .item-details .item-price {
            color: var(--primary);
            font-weight: 600;
        }
        .cart-item .item-qty {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 4px;
        }
        .cart-item .item-qty button {
            width: 28px;
            height: 28px;
            border-radius: 50%;
            border: 1px solid #e2e8f0;
            background: #fff;
            cursor: pointer;
            font-weight: 600;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .cart-item .item-qty button:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }
        .cart-item .item-qty span {
            font-weight: 600;
            min-width: 24px;
            text-align: center;
        }
        .cart-item .item-remove {
            background: none;
            border: none;
            color: var(--text-muted);
            cursor: pointer;
            font-size: 1.1rem;
            transition: var(--transition);
            padding: 6px;
        }
        .cart-item .item-remove:hover {
            color: var(--secondary);
            transform: scale(1.2);
        }

        .cart-footer {
            padding-top: 20px;
            border-top: 2px solid #f1f5f9;
            margin-top: 8px;
        }
        .cart-footer .total {
            display: flex;
            justify-content: space-between;
            font-size: 1.3rem;
            font-weight: 700;
            margin-bottom: 16px;
        }
        .cart-footer .total span:last-child {
            color: var(--primary);
        }
        .cart-footer .checkout-btn {
            width: 100%;
            padding: 16px;
            border: none;
            border-radius: 60px;
            background: linear-gradient(135deg, var(--primary), var(--primary-dark));
            color: #fff;
            font-weight: 700;
            font-size: 1.1rem;
            cursor: pointer;
            transition: var(--transition);
            box-shadow: 0 6px 24px rgba(108, 60, 225, 0.3);
        }
        .cart-footer .checkout-btn:hover {
            transform: scale(1.02);
            box-shadow: 0 12px 36px rgba(108, 60, 225, 0.4);
        }
        .empty-cart {
            text-align: center;
            padding: 60px 0;
            color: var(--text-muted);
        }
        .empty-cart i {
            font-size: 4rem;
            margin-bottom: 16px;
            color: #e2e8f0;
        }

        /* ===== TOAST ===== */
        .toast-container {
            position: fixed;
            bottom: 30px;
            right: 30px;
            z-index: 3000;
            display: flex;
            flex-direction: column;
            gap: 12px;
        }
        .toast {
            background: var(--text);
            color: #fff;
            padding: 16px 24px;
            border-radius: 16px;
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.2);
            display: flex;
            align-items: center;
            gap: 14px;
            font-weight: 500;
            animation: toastIn 0.4s ease;
            min-width: 280px;
            backdrop-filter: blur(10px);
            background: rgba(15, 23, 42, 0.92);
        }
        .toast.success {
            border-left: 4px solid #10B981;
        }
        .toast.wishlist {
            border-left: 4px solid var(--secondary);
        }
        @keyframes toastIn {
            from {
                opacity: 0;
                transform: translateX(60px) scale(0.9);
            }
            to {
                opacity: 1;
                transform: translateX(0) scale(1);
            }
        }
        .toast i {
            font-size: 1.4rem;
        }
        .toast .toast-close {
            margin-left: auto;
            background: none;
            border: none;
            color: rgba(255, 255, 255, 0.5);
            cursor: pointer;
            font-size: 1.2rem;
            transition: var(--transition);
        }
        .toast .toast-close:hover {
            color: #fff;
        }

        /* ===== FOOTER ===== */
        footer {
            background: var(--text);
            color: rgba(255, 255, 255, 0.7);
            padding: 48px 0 32px;
            margin-top: 40px;
        }
        footer .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }
        footer h4 {
            color: #fff;
            font-weight: 600;
            margin-bottom: 16px;
        }
        footer a {
            color: rgba(255, 255, 255, 0.6);
            text-decoration: none;
            display: block;
            margin-bottom: 8px;
            transition: var(--transition);
        }
        footer a:hover {
            color: #fff;
        }
        footer .socials {
            display: flex;
            gap: 16px;
            margin-top: 12px;
        }
        footer .socials a {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.06);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2rem;
            transition: var(--transition);
        }
        footer .socials a:hover {
            background: var(--primary);
            color: #fff;
            transform: translateY(-4px);
        }
        footer .copyright {
            border-top: 1px solid rgba(255, 255, 255, 0.06);
            padding-top: 24px;
            margin-top: 32px;
            text-align: center;
            font-size: 0.9rem;
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 992px) {
            .hero {
                grid-template-columns: 1fr;
                text-align: center;
                padding: 40px 0 60px;
            }
            .hero-content p {
                margin-left: auto;
                margin-right: auto;
            }
            .hero-buttons {
                justify-content: center;
            }
            .hero-card {
                max-width: 320px;
                margin: 0 auto;
            }
            footer .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 768px) {
            .nav-links {
                display: none;
                flex-direction: column;
                background: var(--card-bg);
                position: absolute;
                top: 72px;
                left: 0;
                width: 100%;
                padding: 24px;
                box-shadow: var(--shadow);
                border-radius: 0 0 var(--radius) var(--radius);
                gap: 16px;
                align-items: center;
            }
            .nav-links.open {
                display: flex;
            }
            .hamburger {
                display: flex;
            }
            .hero-content h1 {
                font-size: 2.6rem;
            }
            .section-title {
                font-size: 1.8rem;
            }
            .product-grid {
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
                gap: 20px;
            }
            .cart-sidebar {
                width: 100%;
                max-width: 100%;
                right: -110%;
            }
            footer .footer-grid {
                grid-template-columns: 1fr;
                gap: 24px;
            }
        }

        @media (max-width: 480px) {
            .hero-content h1 {
                font-size: 2rem;
            }
            .product-grid {
                grid-template-columns: 1fr 1fr;
                gap: 14px;
            }
            .product-info {
                padding: 14px;
            }
            .product-image {
                height: 160px;
                font-size: 3rem;
            }
            .product-info h3 {
                font-size: 0.9rem;
            }
            .product-info .price-row .current {
                font-size: 1.1rem;
            }
            .btn {
                padding: 12px 24px;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

    <!-- ===== HEADER ===== -->
    <header id="header">
        <div class="container nav">
            <a href="#" class="logo">
                <i class="fas fa-sparkles"></i> Shop<span>Verse</span>
            </a>

            <ul class="nav-links" id="navLinks">
                <li><a href="#products">Shop</a></li>
                <li><a href="#categories">Categories</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#about">About</a></li>
            </ul>

            <div class="nav-actions">
                <button id="wishlistBtn" aria-label="Wishlist">
                    <i class="far fa-heart"></i>
                    <span class="badge" id="wishlistBadge" style="display:none;">0</span>
                </button>
                <button id="cartBtn" aria-label="Cart">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="badge" id="cartBadge">0</span>
                </button>
                <button class="hamburger" id="hamburger" aria-label="Menu">
                    <span></span><span></span><span></span>
                </button>
            </div>
        </div>
    </header>

    <!-- ===== HERO ===== -->
    <section class="hero container" id="about">
        <div class="hero-content">
            <h1>
                Discover <br/>
                <span class="highlight">Your Style</span> <br/>
                Everyday.
            </h1>
            <p>
                Curated collections, joyful shopping — every item brings a smile.
                Start exploring the most loved products today.
            </p>
            <div class="hero-buttons">
                <a href="#products" class="btn">
                    <i class="fas fa-store"></i> Start Shopping
                </a>
                <a href="#deals" class="btn btn-outline">
                    <i class="fas fa-tag"></i> View Deals
                </a>
            </div>
        </div>
        <div class="hero-visual">
            <div class="hero-card">
                <span class="emoji-big">🛍️</span>
                <h3>Cozy Hoodie</h3>
                <div class="price">$49.99</div>
                <div class="rating">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i>
                    <i class="fas fa-star"></i><i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    <span>4.8 (2.1k)</span>
                </div>
                <span class="tag">🔥 Best Seller</span>
            </div>
        </div>
    </section>

    <!-- ===== CATEGORIES ===== -->
    <section class="categories" id="categories">
        <div class="container">
            <h2 class="section-title">🎯 Shop by Category</h2>
            <p class="section-sub">Find exactly what you love, fast &amp; fun.</p>
            <div class="categories-grid" id="categoriesGrid">
                <!-- filled by JS -->
            </div>
        </div>
    </section>

    <!-- ===== PRODUCTS ===== -->
    <section class="products" id="products">
        <div class="container">
            <div class="products-header">
                <div>
                    <h2 class="section-title">✨ Featured Picks</h2>
                    <p class="section-sub">Handpicked just for you.</p>
                </div>
                <button class="btn btn-outline" style="padding:10px 24px; font-size:0.9rem;">
                    <i class="fas fa-arrow-right"></i> View All
                </button>
            </div>
            <div class="product-grid" id="productGrid">
                <!-- filled by JS -->
            </div>
        </div>
    </section>

    <!-- ===== DEALS ===== -->
    <section class="products" id="deals" style="padding-top:0;">
        <div class="container">
            <div class="products-header">
                <div>
                    <h2 class="section-title">⚡ Flash Deals</h2>
                    <p class="section-sub">Grab them before they're gone.</p>
                </div>
            </div>
            <div class="product-grid" id="dealGrid">
                <!-- filled by JS -->
            </div>
        </div>
    </section>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div>
                    <h4 style="font-size:1.4rem; display:flex; align-items:center; gap:8px;">
                        <i class="fas fa-sparkles" style="color:var(--accent);"></i> ShopVerse
                    </h4>
                    <p style="max-width:280px; margin-top:8px;">
                        Your happy place for curated style. Every purchase plants a tree.
                    </p>
                    <div class="socials">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                        <a href="#"><i class="fab fa-tiktok"></i></a>
                    </div>
                </div>
                <div>
                    <h4>Shop</h4>
                    <a href="#">New Arrivals</a>
                    <a href="#">Best Sellers</a>
                    <a href="#">Sale</a>
                    <a href="#">Gift Cards</a>
                </div>
                <div>
                    <h4>Support</h4>
                    <a href="#">Help Center</a>
                    <a href="#">Returns</a>
                    <a href="#">Shipping</a>
                    <a href="#">Contact</a>
                </div>
                <div>
                    <h4>Company</h4>
                    <a href="#">About</a>
                    <a href="#">Careers</a>
                    <a href="#">Sustainability</a>
                    <a href="#">Blog</a>
                </div>
            </div>
            <div class="copyright">
                © 2026 ShopVerse — Made with <i class="fas fa-heart" style="color:var(--secondary);"></i> for joyful shopping.
            </div>
        </div>
    </footer>

    <!-- ===== CART SIDEBAR ===== -->
    <div class="cart-overlay" id="cartOverlay"></div>
    <div class="cart-sidebar" id="cartSidebar">
        <div class="cart-header">
            <h2><i class="fas fa-shopping-bag"></i> Your Cart</h2>
            <button class="cart-close" id="cartClose"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-items" id="cartItems">
            <div class="empty-cart">
                <i class="fas fa-shopping-bag"></i>
                <p>Your cart is empty.<br/>Start adding some goodies!</p>
            </div>
        </div>
        <div class="cart-footer" id="cartFooter" style="display:none;">
            <div class="total">
                <span>Total</span>
                <span id="cartTotal">$0.00</span>
            </div>
            <button class="checkout-btn" id="checkoutBtn">
                <i class="fas fa-lock"></i> Proceed to Checkout
            </button>
        </div>
    </div>

    <!-- ===== TOAST CONTAINER ===== -->
    <div class="toast-container" id="toastContainer"></div>

    <script>
        // ============================================================
        //  DATA
        // ============================================================
        const categories = [
            { icon: 'fas fa-tshirt', name: 'Fashion' },
            { icon: 'fas fa-laptop', name: 'Electronics' },
            { icon: 'fas fa-home', name: 'Home' },
            { icon: 'fas fa-book', name: 'Books' },
            { icon: 'fas fa-dumbbell', name: 'Fitness' },
            { icon: 'fas fa-paint-brush', name: 'Art' },
            { icon: 'fas fa-crown', name: 'Luxury' },
            { icon: 'fas fa-gem', name: 'Accessories' },
        ];

        const products = [{
            id: 1,
            name: 'Cozy Cloud Hoodie',
            category: 'Fashion',
            emoji: '🧥',
            price: 49.99,
            oldPrice: 69.99,
            rating: 4.8,
            reviews: 2100,
            sale: true,
        }, {
            id: 2,
            name: 'Wireless Studio Buds',
            category: 'Electronics',
            emoji: '🎧',
            price: 89.99,
            oldPrice: 129.99,
            rating: 4.9,
            reviews: 3400,
            sale: true,
        }, {
            id: 3,
            name: 'Minimalist Desk Lamp',
            category: 'Home',
            emoji: '💡',
            price: 34.99,
            oldPrice: null,
            rating: 4.6,
            reviews: 870,
            sale: false,
        }, {
            id: 4,
            name: 'The Art of Joy (Book)',
            category: 'Books',
            emoji: '📖',
            price: 19.99,
            oldPrice: 27.99,
            rating: 4.7,
            reviews: 1500,
            sale: true,
        }, {
            id: 5,
            name: 'Smart Fitness Band',
            category: 'Fitness',
            emoji: '⌚',
            price: 59.99,
            oldPrice: null,
            rating: 4.5,
            reviews: 620,
            sale: false,
        }, {
            id: 6,
            name: 'Watercolor Set',
            category: 'Art',
            emoji: '🎨',
            price: 28.99,
            oldPrice: 39.99,
            rating: 4.8,
            reviews: 430,
            sale: true,
        }, {
            id: 7,
            name: 'Leather Backpack',
            category: 'Accessories',
            emoji: '🎒',
            price: 74.99,
            oldPrice: 99.99,
            rating: 4.7,
            reviews: 980,
            sale: true,
        }, {
            id: 8,
            name: 'Aromatherapy Diffuser',
            category: 'Home',
            emoji: '🕯️',
            price: 39.99,
            oldPrice: null,
            rating: 4.4,
            reviews: 310,
            sale: false,
        }, {
            id: 9,
            name: 'Classic White Sneakers',
            category: 'Fashion',
            emoji: '👟',
            price: 64.99,
            oldPrice: 89.99,
            rating: 4.6,
            reviews: 2700,
            sale: true,
        }, {
            id: 10,
            name: 'Portable Power Bank',
            category: 'Electronics',
            emoji: '🔋',
            price: 44.99,
            oldPrice: null,
            rating: 4.3,
            reviews: 540,
            sale: false,
        }, {
            id: 11,
            name: 'Ceramic Plant Pot',
            category: 'Home',
            emoji: '🪴',
            price: 22.99,
            oldPrice: 29.99,
            rating: 4.5,
            reviews: 280,
            sale: true,
        }, {
            id: 12,
            name: 'Yoga Mat Premium',
            category: 'Fitness',
            emoji: '🧘',
            price: 49.99,
            oldPrice: null,
            rating: 4.9,
            reviews: 1120,
            sale: false,
        }, ];

        // Deals = first 4 products with sale true
        const deals = products.filter(p => p.sale).slice(0, 4);

        // ============================================================
        //  STATE
        // ============================================================
        let cart = [];
        let wishlist = [];

        // ============================================================
        //  DOM REFS
        // ============================================================
        const productGrid = document.getElementById('productGrid');
        const dealGrid = document.getElementById('dealGrid');
        const categoriesGrid = document.getElementById('categoriesGrid');
        const cartSidebar = document.getElementById('cartSidebar');
        const cartOverlay = document.getElementById('cartOverlay');
        const cartItems = document.getElementById('cartItems');
        const cartFooter = document.getElementById('cartFooter');
        const cartTotal = document.getElementById('cartTotal');
        const cartBadge = document.getElementById('cartBadge');
        const wishlistBadge = document.getElementById('wishlistBadge');
        const toastContainer = document.getElementById('toastContainer');
        const hamburger = document.getElementById('hamburger');
        const navLinks = document.getElementById('navLinks');

        // ============================================================
        //  RENDER FUNCTIONS
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = categories.map(c => `
            <div class="category-card">
              <i class="${c.icon}"></i>
              <span>${c.name}</span>
            </div>
          `).join('');
        }

        function renderProducts() {
            productGrid.innerHTML = products.map(p => productCard(p)).join('');
            dealGrid.innerHTML = deals.map(p => productCard(p)).join('');
        }

        function productCard(p) {
            const inWishlist = wishlist.includes(p.id);
            const stars = renderStars(p.rating);
            return `
            <div class="product-card" data-id="${p.id}">
              <div class="product-image">
                ${p.sale ? '<span class="sale-badge">SALE</span>' : ''}
                <span style="font-size:3.8rem;">${p.emoji}</span>
                <button class="wishlist-btn ${inWishlist ? 'liked' : ''}" data-id="${p.id}" aria-label="Wishlist">
                  <i class="${inWishlist ? 'fas' : 'far'} fa-heart"></i>
                </button>
              </div>
              <div class="product-info">
                <div class="product-category">${p.category}</div>
                <h3>${p.name}</h3>
                <div class="price-row">
                  <span class="current">$${p.price.toFixed(2)}</span>
                  ${p.oldPrice ? `<span class="old">$${p.oldPrice.toFixed(2)}</span>` : ''}
                </div>
                <div style="display:flex; align-items:center; gap:6px; margin-bottom:12px; font-size:0.85rem; color:var(--text-muted);">
                  <span style="color:var(--accent);">${stars}</span>
                  <span>(${p.reviews})</span>
                </div>
                <button class="add-to-cart" data-id="${p.id}">
                  <i class="fas fa-plus"></i> Add to Cart
                </button>
              </div>
            </div>
          `;
        }

        function renderStars(rating) {
            const full = Math.floor(rating);
            const half = rating % 1 >= 0.5 ? 1 : 0;
            const empty = 5 - full - half;
            return '★'.repeat(full) + (half ? '★' : '') + '☆'.repeat(empty);
        }

        // ============================================================
        //  CART
        // ============================================================
        function renderCart() {
            const items = cartItems;
            const footer = cartFooter;
            const totalEl = cartTotal;

            if (cart.length === 0) {
                items.innerHTML = `
              <div class="empty-cart">
                <i class="fas fa-shopping-bag"></i>
                <p>Your cart is empty.<br/>Start adding some goodies!</p>
              </div>
            `;
                footer.style.display = 'none';
                cartBadge.textContent = '0';
                return;
            }

            let html = '';
            let total = 0;
            cart.forEach((item, index) => {
                const product = products.find(p => p.id === item.id);
                if (!product) return;
                const subtotal = product.price * item.qty;
                total += subtotal;
                html += `
              <div class="cart-item">
                <div class="item-emoji">${product.emoji}</div>
                <div class="item-details">
                  <h4>${product.name}</h4>
                  <div class="item-price">$${product.price.toFixed(2)}</div>
                  <div class="item-qty">
                    <button data-index="${index}" data-action="dec">−</button>
                    <span>${item.qty}</span>
                    <button data-index="${index}" data-action="inc">+</button>
                  </div>
                </div>
                <button class="item-remove" data-index="${index}"><i class="fas fa-trash-alt"></i></button>
              </div>
            `;
            });

            items.innerHTML = html;
            footer.style.display = 'block';
            totalEl.textContent = `$${total.toFixed(2)}`;
            cartBadge.textContent = cart.reduce((sum, i) => sum + i.qty, 0);

            // event listeners for qty & remove
            document.querySelectorAll('.cart-item .item-qty button').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    const index = parseInt(btn.dataset.index);
                    const action = btn.dataset.action;
                    if (action === 'inc') {
                        cart[index].qty += 1;
                    } else if (action === 'dec') {
                        if (cart[index].qty > 1) {
                            cart[index].qty -= 1;
                        } else {
                            cart.splice(index, 1);
                        }
                    }
                    renderCart();
                    saveState();
                });
            });

            document.querySelectorAll('.cart-item .item-remove').forEach(btn => {
                btn.addEventListener('click', () => {
                    const index = parseInt(btn.dataset.index);
                    cart.splice(index, 1);
                    renderCart();
                    saveState();
                    showToast('Removed from cart', 'success');
                });
            });
        }

        function addToCart(productId) {
            const existing = cart.find(item => item.id === productId);
            if (existing) {
                existing.qty += 1;
            } else {
                cart.push({ id: productId, qty: 1 });
            }
            renderCart();
            saveState();
            const product = products.find(p => p.id === productId);
            showToast(`${product.emoji} ${product.name} added to cart!`, 'success');
        }

        // ============================================================
        //  WISHLIST
        // ============================================================
        function toggleWishlist(productId) {
            const idx = wishlist.indexOf(productId);
            if (idx > -1) {
                wishlist.splice(idx, 1);
                showToast('Removed from wishlist ❤️', 'wishlist');
            } else {
                wishlist.push(productId);
                showToast('Added to wishlist ❤️', 'wishlist');
            }
            updateWishlistBadge();
            renderProducts(); // re-render to update heart icons
            saveState();
        }

        function updateWishlistBadge() {
            if (wishlist.length > 0) {
                wishlistBadge.style.display = 'flex';
                wishlistBadge.textContent = wishlist.length;
            } else {
                wishlistBadge.style.display = 'none';
            }
        }

        // ============================================================
        //  TOAST
        // ============================================================
        function showToast(message, type = 'success') {
            const icon = type === 'success' ? 'fa-check-circle' : 'fa-heart';
            const container = toastContainer;
            const toast = document.createElement('div');
            toast.className = `toast ${type}`;
            toast.innerHTML = `
            <i class="fas ${icon}"></i>
            <span>${message}</span>
            <button class="toast-close"><i class="fas fa-times"></i></button>
          `;
            container.appendChild(toast);
            toast.querySelector('.toast-close').addEventListener('click', () => {
                toast.remove();
            });
            setTimeout(() => {
                if (toast.parentNode) toast.remove();
            }, 3500);
        }

        // ============================================================
        //  LOCAL STORAGE
        // ============================================================
        function saveState() {
            localStorage.setItem('shopverse_cart', JSON.stringify(cart));
            localStorage.setItem('shopverse_wishlist', JSON.stringify(wishlist));
        }

        function loadState() {
            const savedCart = localStorage.getItem('shopverse_cart');
            const savedWish = localStorage.getItem('shopverse_wishlist');
            if (savedCart) {
                try { cart = JSON.parse(savedCart); } catch (e) { cart = []; }
            }
            if (savedWish) {
                try { wishlist = JSON.parse(savedWish); } catch (e) { wishlist = []; }
            }
            renderCart();
            updateWishlistBadge();
            renderProducts();
        }

        // ============================================================
        //  EVENT DELEGATION (product grid)
        // ============================================================
        document.addEventListener('click', (e) => {
            // Add to cart
            const addBtn = e.target.closest('.add-to-cart');
            if (addBtn) {
                const id = parseInt(addBtn.dataset.id);
                addToCart(id);
                const btn = addBtn;
                btn.classList.add('added');
                btn.innerHTML = '<i class="fas fa-check"></i> Added!';
                setTimeout(() => {
                    btn.classList.remove('added');
                    btn.innerHTML = '<i class="fas fa-plus"></i> Add to Cart';
                }, 1500);
                return;
            }

            // Wishlist toggle
            const wishBtn = e.target.closest('.wishlist-btn');
            if (wishBtn) {
                const id = parseInt(wishBtn.dataset.id);
                toggleWishlist(id);
                return;
            }
        });

        // ============================================================
        //  CART SIDEBAR TOGGLE
        // ============================================================
        function openCart() {
            cartSidebar.classList.add('open');
            cartOverlay.classList.add('open');
            document.body.style.overflow = 'hidden';
        }

        function closeCart() {
            cartSidebar.classList.remove('open');
            cartOverlay.classList.remove('open');
            document.body.style.overflow = '';
        }

        document.getElementById('cartBtn').addEventListener('click', openCart);
        document.getElementById('cartClose').addEventListener('click', closeCart);
        cartOverlay.addEventListener('click', closeCart);

        // ============================================================
        //  HAMBURGER
        // ============================================================
        hamburger.addEventListener('click', () => {
            navLinks.classList.toggle('open');
        });

        // close nav on link click (mobile)
        document.querySelectorAll('.nav-links a').forEach(link => {
            link.addEventListener('click', () => {
                navLinks.classList.remove('open');
            });
        });

        // ============================================================
        //  HEADER SCROLL SHADOW
        // ============================================================
        window.addEventListener('scroll', () => {
            const header = document.getElementById('header');
            if (window.scrollY > 20) {
                header.classList.add('scrolled');
            } else {
                header.classList.remove('scrolled');
            }
        });

        // ============================================================
        //  CHECKOUT
        // ============================================================
        document.getElementById('checkoutBtn').addEventListener('click', () => {
            if (cart.length === 0) return;
            const total = cart.reduce((sum, item) => {
                const p = products.find(pr => pr.id === item.id);
                return sum + (p ? p.price * item.qty : 0);
            }, 0);
            showToast(`🎉 Order placed! Total: $${total.toFixed(2)}. Thank you!`, 'success');
            cart = [];
            renderCart();
            saveState();
            closeCart();
        });

        // ============================================================
        //  WISHLIST BUTTON (header)
        // ============================================================
        document.getElementById('wishlistBtn').addEventListener('click', () => {
            if (wishlist.length === 0) {
                showToast('Your wishlist is empty 💔', 'wishlist');
                return;
            }
            const names = wishlist.map(id => {
                const p = products.find(pr => pr.id === id);
                return p ? p.name : '';
            }).filter(Boolean);
            showToast(`❤️ Wishlist: ${names.join(', ')}`, 'wishlist');
        });

        // ============================================================
        //  INIT
        // ============================================================
        renderCategories();
        renderProducts();
        loadState();

        // ============================================================
        //  KEYBOARD: ESC to close cart
        // ============================================================
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape') {
                if (cartSidebar.classList.contains('open')) closeCart();
                if (navLinks.classList.contains('open')) navLinks.classList.remove('open');
            }
        });
    </script>
</body>
</html>
