@extends('layouts.master')

@section('content')

<!-- 1. Hero Section -->
<section id="hero" class="hero-section">
    <div class="container hero-content">
        <div class="hero-text reveal-left">
            <h1>{!! $content['hero_title'] ?? 'Innovate Your <br><span>Digital Future</span>' !!}</h1>
            <p>{{ $content['hero_subtitle'] ?? 'We build premium software solutions that scale with your business.' }}
            </p>
            <div class="hero-btns">
                <a href="#contact" class="btn-primary">Start Project</a>
                <a href="#services" class="btn-secondary">Explore Services</a>
            </div>
        </div>
        <div class="hero-visual reveal-right">
            <div class="shape-box">
                <div class="circle"></div>
                <div class="glass-card">
                    <i class="fas fa-code"></i>
                    <span>Clean Architecture</span>
                </div>
                <div class="glass-card card-2">
                    <i class="fas fa-chart-line"></i>
                    <span>High Growth</span>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 2. About Section -->
<section id="about" class="section-padding">
    <div class="container grid-2-col">
        <div class="about-img reveal">
            <img src="https://images.pexels.com/photos/3182773/pexels-photo-3182773.jpeg?auto=compress&cs=tinysrgb&w=800"
                alt="Team">
            <div class="experience-badge">
                <span class="num">{{ $content['about_exp'] ?? '10+' }}</span>
                <span class="text">Years Exp.</span>
            </div>
        </div>
        <div class="about-content reveal">
            <h4 class="sub-heading">About Us</h4>
            <h2>{{ $content['about_title'] ?? 'We Craft Digital Experiences' }}</h2>
            <p>{{ $content['about_desc'] ?? 'Detailed description goes here...' }}</p>
            <ul class="feature-list" style="margin: 20px 0;">
                <li><i class="fas fa-check-circle" style="color:var(--secondary-color)"></i> Enterprise-grade security
                </li>
                <li><i class="fas fa-check-circle" style="color:var(--secondary-color)"></i> Scalable cloud architecture
                </li>
            </ul>
            <a href="#portfolio" class="btn-text">View Our Work <i class="fas fa-arrow-right"></i></a>
        </div>
    </div>
</section>

<!-- 3. Services Section -->
<section id="services" class="section-padding bg-light">
    <div class="container">
        <div class="section-header text-center reveal">
            <h4 class="sub-heading">Our Expertise</h4>
            <h2 class="section-heading">High-End Services</h2>
        </div>
        <div class="grid-3-col">
            @foreach($services as $service)
            <div class="service-card reveal">
                <div class="icon-box"><i class="{{ $service->icon }}"></i></div>
                <h3>{{ $service->title }}</h3>
                <p>{{ $service->description }}</p>
            </div>
            @endforeach
        </div>
    </div>
</section>

<!-- 4. Features Section -->
<section id="features" class="section-padding">
    <div class="container grid-2-col">
        <div class="feature-content reveal">
            <h4 class="sub-heading">Why Choose Us</h4>
            <h2 class="section-heading">Driven by Results</h2>

            @foreach($features as $feature)
            <div class="feature-item">
                <div class="f-icon"><i class="{{ $feature->icon }}"></i></div>
                <div class="f-text">
                    <h3>{{ $feature->title }}</h3>
                    <p>{{ $feature->description }}</p>
                </div>
            </div>
            @endforeach

        </div>
        <div class="feature-img reveal">
            <img src="https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg?auto=compress&cs=tinysrgb&w=800"
                alt="Features">
        </div>
    </div>
</section>

<!-- 5. Portfolio Section -->
<section id="portfolio" class="section-padding bg-light">
    <div class="container">
        <div class="section-header text-center reveal">
            <h4 class="sub-heading">Our Work</h4>
            <h2 class="section-heading">Featured Projects</h2>
        </div>
        <div class="grid-3-col portfolio-grid">
            @foreach($projects as $project)
            <div class="portfolio-item reveal">
                <img src="{{ asset('storage/'.$project->image) }}" alt="{{ $project->title }}">
                <div class="overlay">
                    <h3>{{ $project->title }}</h3>
                    <p>{{ $project->category }}</p>
                    <a href="{{ $project->link }}" target="_blank" class="btn-sm"
                        style="text-decoration:none; display:inline-block; margin-top:10px;">
                        View Project
                    </a>

                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

<!-- 6. Pricing Section -->
<section id="pricing" class="section-padding">
    <div class="container">
        <div class="section-header text-center reveal">
            <h4 class="sub-heading">Pricing Plans</h4>
            <h2 class="section-heading">Choose Your Strategy</h2>
        </div>
        <div class="grid-3-col pricing-grid">

            @foreach($pricings as $plan)
            <!-- Dynamic Pricing Card -->
            <div class="pricing-card {{ $plan->is_recommended ? 'highlighted' : '' }} reveal">

                @if($plan->is_recommended)
                <div class="badge">Most Popular</div>
                @endif

                <h3>{{ $plan->name }}</h3>
                <div class="price">{{ $plan->price }}<span>/mo</span></div>

                <ul class="features">
                    <!-- ফিচারগুলো কমা দিয়ে আলাদা করে লুপ করা হচ্ছে -->
                    @foreach(explode(',', $plan->features) as $feature)
                    <li><i class="fas fa-check"></i> {{ trim($feature) }}</li>
                    @endforeach
                </ul>

                <a href="#contact" class="btn-{{ $plan->is_recommended ? 'primary' : 'outline' }}">Choose {{ $plan->name
                    }}</a>
            </div>
            @endforeach

        </div>
    </div>
</section>

<!-- 7. FAQ Section -->
<section id="faq" class="section-padding bg-light">
    <div class="container">
        <div class="section-header text-center reveal">
            <h2 class="section-heading">Frequently Asked Questions</h2>
        </div>
        <div class="faq-container">
            @foreach($faqs as $faq)
            <div class="faq-item reveal">
                <button class="faq-question">{{ $faq->question }} <i class="fas fa-chevron-down"></i></button>
                <div class="faq-answer">
                    <p>{{ $faq->answer }}</p>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

<!-- 8. Contact Section -->
<section id="contact" class="section-padding bg-dark">
    <div class="container grid-2-col">
        <!-- বাম পাশের অংশ (Contact Info) -->
        <div class="contact-info reveal">
            <h4 class="sub-heading">{{ $content['contact_subtitle'] ?? 'Get In Touch' }}</h4>

            <h2 class="section-heading text-white">{{ $content['contact_title'] ?? "Let's Discuss Your Project" }}</h2>

            <p class="text-gray">{{ $content['contact_desc'] ?? 'Ready to start? Fill out the form and we will get back
                to you within 24 hours.' }}</p>

            <div class="info-item" style="display:flex; gap:15px; margin-top:30px; color:white;">
                <i class="fas fa-map-marker-alt" style="font-size:1.5rem; color:#06b6d4;"></i>
                <div>
                    <h5>Location</h5>
                    <p class="text-gray">{{ $content['contact_location'] ?? '123 Tech Avenue, Silicon Valley, CA' }}</p>
                </div>
            </div>

            <div class="info-item" style="display:flex; gap:15px; margin-top:20px; color:white;">
                <i class="fas fa-envelope" style="font-size:1.5rem; color:#06b6d4;"></i>
                <div>
                    <h5>Email</h5>
                    <p class="text-gray">{{ $content['contact_email_text'] ?? 'hello@nextech.com' }}</p>
                </div>
            </div>
        </div>

        <div class="contact-form-wrapper reveal">

            <!-- Success/Error Message Display -->
            @if(session('success'))
            <div style="background: #10b981; color: white; padding: 10px; border-radius: 5px; margin-bottom: 15px;">
                {{ session('success') }}
            </div>
            @endif
            @if(session('error'))
            <div style="background: #ef4444; color: white; padding: 10px; border-radius: 5px; margin-bottom: 15px;">
                {{ session('error') }}
            </div>
            @endif

            <form action="{{ route('contact.submit') }}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" name="name" id="name" placeholder="John Doe" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" name="email" id="email" placeholder="john@example.com" required>
                </div>
                <div class="form-group">
                    <label for="subject">Subject</label>
                    <input type="text" name="subject" id="subject" placeholder="Project Inquiry" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea name="message" id="message" rows="5" placeholder="Tell us about your project..."
                        required></textarea>
                </div>
                <button type="submit" class="btn-primary w-100">Send Message</button>
            </form>
        </div>
    </div>
</section>
@endsection