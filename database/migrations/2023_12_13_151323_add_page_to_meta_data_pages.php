<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('meta_data_pages', function (Blueprint $table) {
           $table->after('description_social',function($table){
                $table->unsignedBigInteger('model_id')->nullable();
                $table->string('model_type')->nullable();
                $table->string('is_page')->default(0);
                $table->string('page_name')->nullable();
           });
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('meta_data_pages', function (Blueprint $table) {
            //
        });
    }
    
};
