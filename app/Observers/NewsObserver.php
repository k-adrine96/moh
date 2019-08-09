<?php


namespace App\Observers;

use App\News;
use App\Jobs\Subscribe as SubscribeJob;
use App\Subscribe as SubscribeModel;
use Illuminate\Support\Facades\Mail;

class NewsObserver
{
    /**
     * Handle the News "created" event.
     *
     * @param  \App\News  $News
     * @return void
     */
    public function created(News $news)
    {
        $subscribes = SubscribeModel::get()->pluck('email')->toarray();
        dispatch(new SubscribeJob($news, $subscribes));
    }

    /**
     * Handle the News "updated" event.
     *
     * @param  \App\News  $News
     * @return void
     */
    public function updated(News $news)
    {
        //
    }

    /**
     * Handle the News "deleted" event.
     *
     * @param  \App\News  $News
     * @return void
     */
    public function deleted(News $news)
    {
        //
    }
}