<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class booking_gym extends Model
{
    use HasFactory;
    protected $table = 'booking_gym';
    protected $primaryKey = 'no_booking';
    protected $guarded = [];
}
