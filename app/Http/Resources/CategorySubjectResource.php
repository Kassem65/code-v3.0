<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CategorySubjectResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $name_parts = explode("_", $this->name);
        return [
            'id' => $this->id ,
            'name' => $name_parts[0] ?? ' ', 
            'class' =>   $name_parts[1] ?? ' '
        ];
    }
}
