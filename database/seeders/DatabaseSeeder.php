<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\SiteContent;
use App\Models\Service;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        // ১. এডমিন ইউজার তৈরি (লগিন করার জন্য)
        User::create([
            'name' => 'Admin',
            'email' => 'admin@nextech.com',
            'password' => Hash::make('password123'), // এই পাসওয়ার্ড দিয়ে লগিন করবেন
        ]);

        // ২. হিরো সেকশন ডাটা
        SiteContent::create(['key' => 'hero_title', 'value' => 'Innovate Your <br><span>Digital Future</span>']);
        SiteContent::create(['key' => 'hero_subtitle', 'value' => 'We build premium software solutions that scale with your business.']);
        
        // ৩. এবাউট সেকশন ডাটা
        SiteContent::create(['key' => 'about_title', 'value' => 'We Craft Digital Experiences That Matter']);
        SiteContent::create(['key' => 'about_desc', 'value' => 'At NexTech, we don\'t just write code; we solve business problems.']);
        SiteContent::create(['key' => 'about_exp', 'value' => '10+']);

        // ৪. সার্ভিস ডাটা
        Service::create(['icon' => 'fas fa-laptop-code', 'title' => 'Web Development', 'description' => 'Custom websites built with modern technologies.']);
        Service::create(['icon' => 'fas fa-mobile-alt', 'title' => 'Mobile Apps', 'description' => 'Native and cross-platform mobile applications.']);
        Service::create(['icon' => 'fas fa-paint-brush', 'title' => 'UI/UX Design', 'description' => 'Beautiful, intuitive interfaces.']);
    }
}
