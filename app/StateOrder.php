<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class StateOrder extends Model
{
    use Translatable;

    protected $fillable = [
        'file_name',
        'file_upload',
        'file_url',
        'file_date',
        'parent_id',
        'order'
    ];

    public $page_url = 'state-order';

    protected $dates = ['file_date'];

    protected $translatable = [ 'file_name' ];

    public function getFileLinkAttribute()
    {
        if($this->file_upload && $this->file_upload !== '[]') {
            return \Storage::url(json_decode($this->file_upload)[0]->download_link);
        }

        return $this->attributes['file_url'];
    }

    public function children() {
        return $this->hasMany( StateOrder::class , 'parent_id' , 'id');
    }
}
