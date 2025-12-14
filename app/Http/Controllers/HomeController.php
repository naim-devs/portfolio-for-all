<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SiteContent;
use App\Models\Service;
use App\Models\Project;
use App\Models\Feature; 
use App\Models\Faq;     
use App\Models\Pricing;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactMail;
use App\Models\Newsletter;

class HomeController extends Controller
{
    public function index()
    {
        // Load data from database
        $content = SiteContent::pluck('value', 'key');
        $services = Service::all();
        $projects = Project::all();
        $features = Feature::all(); 
        $faqs = Faq::all();
        $pricings = Pricing::all(); 

        return view('home', compact('content', 'services', 'projects', 'features', 'faqs', 'pricings'));
    }


    // Contact Form Submit Function
    public function storeContact(Request $request) 
    {
        // 1. Validation
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'subject' => 'required',
            'message' => 'required'
        ]);

        $data = $request->all();

        // 2. Send Email 
        try {
            
            // ⚠️ গুরত্বপূর্ণ: নিচের ইমেইলটি পরিবর্তন করে আপনার নিজের জিমেইল দিন
            Mail::to('mdfahim5422@gmail.com')->send(new ContactMail($data));

            // সফল হলে
            return back()->with('success', 'Message sent successfully! We will contact you soon.');

        } catch (\Exception $e) {
            // ব্যর্থ হলে এরর দেখাবে
            return back()->with('error', 'Mail could not be sent. Error: ' . $e->getMessage());
        }
    }

    // ক্লাসের ভেতরে নতুন ফাংশন
public function subscribe(Request $request) {
    // ভ্যালিডেশন
    $request->validate([
        'email' => 'required|email|unique:newsletters,email'
    ]);

    Newsletter::create($request->all());

    return back()->with('success', 'Subscribed successfully!');
}
}