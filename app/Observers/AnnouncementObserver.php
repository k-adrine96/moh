<?php


namespace App\Observers;

use App\Announcements;
use App\Jobs\Subscribe as SubscribeJob;
use App\Subscribe as SubscribeModel;

class AnnouncementObserver
{
    /**
     * Handle the Announcements "created" event.
     *
     * @param  \App\Announcements  $Announcements
     * @return void
     */
    public function created(Announcements $announcement)
    {
        $subscribes = SubscribeModel::get()->pluck('email')->toarray();
        dispatch(new SubscribeJob($announcement, $subscribes));
    }

    /**
     * Handle the Announcements "updated" event.
     *
     * @param  \App\Announcements  $Announcements
     * @return void
     */
    public function updated(Announcements $announcement)
    {
        //
    }

    /**
     * Handle the Announcements "deleted" event.
     *
     * @param  \App\Announcements  $Announcements
     * @return void
     */
    public function deleted(Announcements $announcement)
    {
        //
    }
}