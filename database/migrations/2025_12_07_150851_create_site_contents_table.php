<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('site_contents', function (Blueprint $table) {
            $table->id();
            $table->string('key')->unique(); // যেমন: 'hero_title', 'about_desc'
            $table->longText('value')->nullable(); // কন্টেন্ট
            $table->timestamps();
        });
    }
};
