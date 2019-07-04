@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Հայտարարություններ</h1>
            </div>
        </section>
        <section class="all__announcement-container">
            <ul class="background__zebra">
                @foreach($content->chunk(2) as $chunk)
                    <li>
                        <div class="all__announcement--row">
                            <div class="container-fluid">
                                <div class="row">
                                    @foreach($chunk as $announcement)
                                        <div class="col-sm-6">
                                            <div class="all__announcement">
                                                <div class="all__announcement--header">
                                                    <a href="{{route('show.announcement.individual' , $announcement->id)}}">{{$announcement->title}}</a>
                                                </div>
                                                <div class="all__announcement--date">
                                                    <p><?php echo date('d F Y l', strtotime($announcement->date)); ?></p>
                                                </div>
                                                <div class="all__announcement--body text-justify editor-content">
                                                    {!! getDescription($announcement->description) !!}
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </li>
                @endforeach
            </ul>
        </section>
    </main>
@endsection