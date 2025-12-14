<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use App\Models\SiteContent;
use App\Models\Service;
use App\Models\Project;
use App\Models\Feature;
use App\Models\Faq;
use App\Models\Pricing;
use Illuminate\Support\Facades\Storage;
use App\Models\Newsletter;

class AdminController extends Controller
{
    
    public function dashboard()
    {
        $content = SiteContent::pluck('value', 'key');
        $services = Service::all();
        $projects = Project::all();
        $features = Feature::all();
        $faqs = Faq::all();
        $pricings = Pricing::all();
        $subscribers = Newsletter::orderBy('id', 'desc')->get();

        return view('admin.dashboard', compact('content', 'services', 'projects', 'features', 'faqs', 'pricings', 'subscribers'));
    }

    
    public function updateHero(Request $request)
    {
        SiteContent::updateOrCreate(['key' => 'hero_title'], ['value' => $request->hero_title]);
        SiteContent::updateOrCreate(['key' => 'hero_subtitle'], ['value' => $request->hero_subtitle]);
        return back()->with('success', 'Hero Section Updated!');
    }

    
    public function updateAbout(Request $request)
    {
        SiteContent::updateOrCreate(['key' => 'about_title'], ['value' => $request->about_title]);
        SiteContent::updateOrCreate(['key' => 'about_desc'], ['value' => $request->about_desc]);
        SiteContent::updateOrCreate(['key' => 'about_exp'], ['value' => $request->about_exp]);
        return back()->with('success', 'About Section Updated!');
    }

    
    public function storeService(Request $request)
    {
        Service::create($request->all());
        return back()->with('success', 'Service Added!');
    }
    public function deleteService($id)
    {
        Service::destroy($id);
        return back()->with('success', 'Service Deleted!');
    }

    
    public function storeProject(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'category' => 'required',
            'image' => 'required|image',
            'link' => 'required|url' 
        ]);

        
        $path = $request->file('image')->store('projects', 'public');

        
        Project::create([
            'title' => $request->title,
            'category' => $request->category,
            'image' => $path,
            'link' => $request->link 
        ]);

        return back()->with('success', 'Project Added Successfully!');
    }

    public function deleteProject($id)
    {
        $project = Project::find($id);

        
        if ($project->image) {
            Storage::disk('public')->delete($project->image);
        }

        $project->delete();
        return back()->with('success', 'Project Deleted Successfully!');
    }

    
    public function storeFeature(Request $request)
    {
        $request->validate([
            'icon' => 'required',
            'title' => 'required',
            'description' => 'required'
        ]);

        Feature::create($request->all());
        return back()->with('success', 'Feature Added!');
    }
    public function deleteFeature($id)
    {
        Feature::destroy($id);
        return back()->with('success', 'Feature Deleted!');
    }

    
    public function storeFaq(Request $request)
    {
        Faq::create($request->all());
        return back()->with('success', 'FAQ Added!');
    }
    public function deleteFaq($id)
    {
        Faq::destroy($id);
        return back()->with('success', 'FAQ Deleted!');
    }

    
    public function storePricing(Request $request)
    {
        Pricing::create([
            'name' => $request->name,
            'price' => $request->price,
            'features' => $request->features,
            'is_recommended' => $request->has('is_recommended') ? 1 : 0
        ]);
        return back()->with('success', 'Pricing Plan Added!');
    }
    public function deletePricing($id)
    {
        Pricing::destroy($id);
        return back()->with('success', 'Pricing Plan Deleted!');
    }

        public function updateLogo(Request $request)
    {
        // ১. লোগো টাইপ সেভ (Image or Text)
        SiteContent::updateOrCreate(['key' => 'logo_type'], ['value' => $request->logo_type]);

        // ২. লোগো টেক্সট সেভ
        if ($request->has('logo_text')) {
            SiteContent::updateOrCreate(['key' => 'logo_text'], ['value' => $request->logo_text]);
        }

        // ৩. লোগো ইমেজ আপলোড
        if ($request->hasFile('logo_image')) {
            $request->validate(['logo_image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048']);

            // পুরনো লোগো ডিলিট করা যেতে পারে (অপশনাল)

            $path = $request->file('logo_image')->store('logos', 'public');
            SiteContent::updateOrCreate(['key' => 'logo_image'], ['value' => $path]);
        }

        return back()->with('success', 'Logo Settings Updated!');
    }

    // ডিলিট ফাংশন
    public function deleteSubscriber($id)
    {
        Newsletter::destroy($id);
        return back()->with('success', 'Subscriber Deleted!');
    }
    
    
    // --- Contact Info Update Function ---
    public function updateContactInfo(Request $request) {
        // ১. সাব-হেডিং (Get In Touch)
        SiteContent::updateOrCreate(['key' => 'contact_subtitle'], ['value' => $request->contact_subtitle]);
        
        // ২. মেইন হেডিং (Let's Discuss...)
        SiteContent::updateOrCreate(['key' => 'contact_title'], ['value' => $request->contact_title]);
        
        // ৩. ডেসক্রিপশন
        SiteContent::updateOrCreate(['key' => 'contact_desc'], ['value' => $request->contact_desc]);
        
        // ৪. লোকেশন
        SiteContent::updateOrCreate(['key' => 'contact_location'], ['value' => $request->contact_location]);
        
        // ৫. ইমেইল (যেটা টেক্সট হিসেবে দেখাবে)
        SiteContent::updateOrCreate(['key' => 'contact_email_text'], ['value' => $request->contact_email_text]);

        return back()->with('success', 'Contact Info Updated!');
    }
}
