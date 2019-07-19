<?php

namespace App\Http\Controllers;

use App\DynamicPage;
use App\DynamicSection;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\View;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function __construct()
    {
        $sections = DynamicSection::with([
            'pages' => function($q){$q->orderBy('created_at', 'desc')->whereDisplay(1);},
            'pages.subpages' => function($q){$q->orderBy('created_at', 'desc')->whereDisplay(1);}
        ])->orderBy('created_at', 'desc')->whereDisplay(1)->get();
        $pages = DynamicPage::whereNull('dynamic_section_id')->whereDisplay(1)->get();

        View::share('sections', $sections);
        View::share('pages', $pages);
    }
}
