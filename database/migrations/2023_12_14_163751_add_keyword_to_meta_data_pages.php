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
            $table->after('page_name',function($table){
                $table->text('focus_keyword')->nullable();
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
