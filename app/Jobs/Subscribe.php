<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\Mail;
use App\Mail\Subscribe as SubscribeMail;

class Subscribe implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */

    protected $data;
    protected $subscribes;
    public    $tries = 2;

    public function __construct($data, $subscribes)
    {
        $this->data = $data;
        $this->subscribes = $subscribes;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
//        Mail::to($this->subscribes)
//            ->cc($this->subscribes)
//            ->bcc($this->subscribes)
//            ->send(new SubscribeMail($this->data));
    }
}
