<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexTech | Modern Digital Solutions</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>
<body>

    <!-- Header Section -->
    <header id="header">
        <div class="container nav-container">
            <!-- Dynamic Header Logo -->
            <a href="{{ route('home') }}" class="logo">
                @if(($content['logo_type'] ?? 'text') == 'image' && !empty($content['logo_image']))
                    <!-- ইমেজ লোগো -->
                    <img src="{{ asset('storage/'.$content['logo_image']) }}" alt="Logo" style="height: 60px;">
                @else
                    <!-- টেক্সট লোগো  -->
                    {{ $content['logo_text'] ?? 'NexTech.' }}
                @endif
            </a>

            <nav class="nav-menu" id="nav-menu">
                <ul>
                    <li><a href="#hero" class="nav-link">Home</a></li>
                    <li><a href="#about" class="nav-link">About</a></li>
                    <li><a href="#services" class="nav-link">Services</a></li>
                    <li><a href="#portfolio" class="nav-link">Work</a></li>
                    <li><a href="#pricing" class="nav-link">Pricing</a></li>
                    <li><a href="#contact" class="nav-link">Contact</a></li>
                    
                    
                    <!-- CTA Button -->
                    <li><a href="#contact" class="btn-primary nav-btn">Get Started</a></li>
                </ul>
            </nav>

            <div class="hamburger" id="hamburger">
                <i class="fas fa-bars"></i>
            </div>
        </div>
    </header>

    <main>
        @yield('content')
    </main>

    <!-- Footer Section -->
    <footer class="footer">
        <div class="container grid-4-col">
            <!-- Column 1: About & Dynamic Logo -->
            <div class="footer-col">
                <a href="{{ route('home') }}" class="logo text-white">
                    @if(($content['logo_type'] ?? 'text') == 'image' && !empty($content['logo_image']))
                        <!-- ইমেজ লোগো -->
                        <img src="{{ asset('storage/'.$content['logo_image']) }}" alt="Logo" style="height: 40px;">
                    @else
                        <!-- টেক্সট লোগো -->
                        {{ $content['logo_text'] ?? 'NexTech.' }}
                    @endif
                </a>
                <p>Building the future of the web with precision, passion, and performance.</p>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>

            <!-- Column 2: Quick Links -->
            <div class="footer-col">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#portfolio">Portfolio</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div>

            <!-- Column 3: Services -->
            <div class="footer-col">
                <h4>Services</h4>
                <ul>
                    <li><a href="#">Web Development</a></li>
                    <li><a href="#">App Design</a></li>
                    <li><a href="#">Cloud Hosting</a></li>
                    <li><a href="#">Consultancy</a></li>
                </ul>
            </div>

            <!-- Column 4: Newsletter -->
            <!-- Column 4: Newsletter -->
            <div class="footer-col">
                <h4>Newsletter</h4>
                <p>Subscribe to get the latest tech news.</p>

                <!-- সাকসেস মেসেজ দেখানোর জন্য -->
                @if(session('success'))
                    <small style="color: #4ade80; display:block; margin-bottom:5px;">
                        {{ session('success') }}
                    </small>
                @endif
                
                <!-- এরর মেসেজ (যদি কেউ একই ইমেইল ২ বার দেয়) -->
                @error('email')
                    <small style="color: #f87171; display:block; margin-bottom:5px;">
                        {{ $message }}
                    </small>
                @enderror

                <form action="{{ route('subscribe') }}" method="POST" class="newsletter-form">
                    @csrf
                    <input type="email" name="email" placeholder="Enter email" required>
                    <button type="submit"><i class="fas fa-paper-plane"></i></button>
                </form>
            </div>

        <div class="footer-bottom">
            <p>&copy; {{ date('Y') }} NexTech Agency. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Custom JS -->
    <script src="{{ asset('js/script.js') }}"></script>
</body>
</html>