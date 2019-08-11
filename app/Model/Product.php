<?php

namespace App\Model;
Use App\Model\Reivew;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

	/*One product may have many reviews*/
    public function reviews(){

    	return $this->hasMany(Review::class);
    	
    }

}
