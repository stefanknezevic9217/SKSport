<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('shoes', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->decimal('price');
            $table->foreignId('brand_id')->constrained('brands');
            $table->foreignId('gender_id')->constrained('genders');
            $table->foreignId('sale_id')->constrained('sales',"salesId");
            $table->string("image");
            $table->boolean("recommended");
            $table->boolean("delete")->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('shoes');
    }
};
