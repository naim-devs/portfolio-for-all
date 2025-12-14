<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Auth\LoginController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
| এখানে অ্যাপ্লিকেশনের সব web based route ডিফাইন করা হয়েছে
| Public, Auth এবং Admin route গুলো আলাদা করে সাজানো
*/

/*
|--------------------------------------------------------------------------
| Public Routes
|--------------------------------------------------------------------------
| যেকোনো ইউজার লগইন ছাড়াই যেসব পেজ/অ্যাকশন এক্সেস করতে পারবে
*/

// Home page
Route::get('/', [HomeController::class, 'index'])->name('home');

// Newsletter / Subscription ফর্ম সাবমিট
Route::post('/subscribe', [HomeController::class, 'subscribe'])->name('subscribe');

// Contact form (frontend থেকে সাবমিট)
Route::post('/contact-submit', [HomeController::class, 'storeContact'])->name('contact.submit');


/*
|--------------------------------------------------------------------------
| Authentication Routes
|--------------------------------------------------------------------------
| Laravel default auth routes ব্যবহার করা হয়েছে
| এখানে Register অপশন বন্ধ রাখা হয়েছে
*/

// Login, Forgot Password ইত্যাদি route গুলো
Auth::routes([
    'register' => false // নতুন ইউজার রেজিস্ট্রেশন নিষ্ক্রিয়
]);

// Logout আলাদাভাবে ডিফাইন করা
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');


/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
| সব Admin route auth middleware দিয়ে প্রোটেক্ট করা
| URL গুলো /admin prefix দিয়ে শুরু হবে
*/

Route::middleware(['auth'])->prefix('admin')->group(function () {

    // Admin Dashboard
    Route::get('/dashboard', [AdminController::class, 'dashboard'])
        ->name('admin.dashboard');

    /*
    |--------------------------------------------------------------------------
    | Basic Site Information
    |--------------------------------------------------------------------------
    */

    // Contact information আপডেট
    Route::post('/contact-info-update', [AdminController::class, 'updateContactInfo'])
        ->name('admin.contact.update');

    // Site logo আপডেট
    Route::post('/logo-update', [AdminController::class, 'updateLogo'])
        ->name('admin.logo.update');


    /*
    |--------------------------------------------------------------------------
    | Home Page Sections
    |--------------------------------------------------------------------------
    */

    // Hero section কন্টেন্ট আপডেট
    Route::post('/hero-update', [AdminController::class, 'updateHero'])
        ->name('admin.hero.update');

    // About section কন্টেন্ট আপডেট
    Route::post('/about-update', [AdminController::class, 'updateAbout'])
        ->name('admin.about.update');


    /*
    |--------------------------------------------------------------------------
    | Services Management
    |--------------------------------------------------------------------------
    */

    // নতুন সার্ভিস যোগ
    Route::post('/service-store', [AdminController::class, 'storeService'])
        ->name('admin.service.store');

    // সার্ভিস ডিলিট
    Route::get('/service-delete/{id}', [AdminController::class, 'deleteService'])
        ->name('admin.service.delete');


    /*
    |--------------------------------------------------------------------------
    | Projects Management
    |--------------------------------------------------------------------------
    */

    // নতুন প্রজেক্ট যোগ
    Route::post('/project-store', [AdminController::class, 'storeProject'])
        ->name('admin.project.store');

    // প্রজেক্ট ডিলিট
    Route::get('/project-delete/{id}', [AdminController::class, 'deleteProject'])
        ->name('admin.project.delete');


    /*
    |--------------------------------------------------------------------------
    | Features Management
    |--------------------------------------------------------------------------
    */

    // নতুন ফিচার যোগ
    Route::post('/feature-store', [AdminController::class, 'storeFeature'])
        ->name('admin.feature.store');

    // ফিচার ডিলিট
    Route::get('/feature-delete/{id}', [AdminController::class, 'deleteFeature'])
        ->name('admin.feature.delete');


    /*
    |--------------------------------------------------------------------------
    | FAQ Management
    |--------------------------------------------------------------------------
    */

    // FAQ যোগ
    Route::post('/faq-store', [AdminController::class, 'storeFaq'])
        ->name('admin.faq.store');

    // FAQ ডিলিট
    Route::get('/faq-delete/{id}', [AdminController::class, 'deleteFaq'])
        ->name('admin.faq.delete');


    /*
    |--------------------------------------------------------------------------
    | Pricing Management
    |--------------------------------------------------------------------------
    */

    // Pricing প্ল্যান যোগ
    Route::post('/pricing-store', [AdminController::class, 'storePricing'])
        ->name('admin.pricing.store');

    // Pricing প্ল্যান ডিলিট
    Route::get('/pricing-delete/{id}', [AdminController::class, 'deletePricing'])
        ->name('admin.pricing.delete');


    /*
    |--------------------------------------------------------------------------
    | Subscribers
    |--------------------------------------------------------------------------
    */

    // Newsletter subscriber ডিলিট
    Route::get('/subscriber-delete/{id}', [AdminController::class, 'deleteSubscriber'])
        ->name('admin.subscriber.delete');

});
