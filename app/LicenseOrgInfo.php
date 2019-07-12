<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LicenseOrgInfo extends Model
{
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
}
