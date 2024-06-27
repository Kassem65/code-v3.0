<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Tag extends Model
{
    use HasFactory;
    protected $fillable = ['name'] ;
    protected $hidden = [
        'pivot', 'created_at', 'updated_at' , 
    ];
    public function problems(): BelongsToMany
    {
        return $this->belongsToMany(Problem::class);
    }
    
}
