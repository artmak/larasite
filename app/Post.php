<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $primaryKey = 'post_id';
    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at'
    ];
}
