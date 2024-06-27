<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class StudentDispalyResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'first_name' => explode(' ', $this->user->name, 2)[0] ?? ' ',
            'last_name' => explode(' ', $this->user->name, 2)[1] ?? ' ',
            'email' => $this->user->email,
            'phone_number' => $this->phone_number,
            'change_class_requests' => $this->requests,
        ];
    }
}
