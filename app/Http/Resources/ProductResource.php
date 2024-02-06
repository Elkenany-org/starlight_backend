<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
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
            'images'            => $this->getImagesObjects(),
            'category'          => $this->getCategoryObject(),
            'meta_tags'         => $this->getMetaTags(),
        ];
    }

}
