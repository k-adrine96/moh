<?php

namespace App\Http\Controllers;

use App\DynamicSection;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    protected $data = [];

    public function __construct()
    {
        $this->data = DynamicSection::with([
            'pages' => function($q){$q->orderBy('created_at', 'desc')->whereDisplay(1);},
            'pages.subpages' => function($q){$q->orderBy('created_at', 'desc')->whereDisplay(1);}
        ])->orderBy('created_at', 'desc')->whereDisplay(1)->get();
    }
}
