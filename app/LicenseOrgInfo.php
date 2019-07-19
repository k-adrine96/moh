<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class LicenseOrgInfo extends Model
{
    use Translatable;

    protected $fillable = [
        'organisation_name',
        'head_position',
        'head_name',
        'address',
        'phone_number',
        'email',
        'website_name',
        'website_url',
        'order'
    ];

    protected $translatable = [
        'organisation_name',
        'head_position',
        'head_name',
        'address'
    ];
}
