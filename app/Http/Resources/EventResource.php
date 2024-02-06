<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class EventResource extends JsonResource
{

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
    */
    public function toArray($request)
    {
        return [
            'id'                => $this->id,
            'title'             => $this->title,
            'slug'              => $this->getSlug(),
            'short_description' => $this->shortdescription,
            'description'       => $this->description,
            'shared_links'      => $this->getSharedLinks(),
            'image'             => $this->getImageObject(),
            'meta_tags'         => $this->getMetaTags(), 
            'created_at'        => $this->getCreatedAt(),
        ];
    }

}
