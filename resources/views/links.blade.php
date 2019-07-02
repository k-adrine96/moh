@extends('layouts.app')

@section('content')
	<main>
        <section class="secondary__cover aks__minister--cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Հղումներ</h1>
            </div>
        </section>
        <section class="links">
            <ul class="background__zebra">
                <li class="multicolor">
                    <div class="multicolor-container links--row">
                        <a href="javascript:;" class="links--row--first--lvl">գործընկերներ</a>
                        <ul class="links--hidden--content">
                            @foreach($LinksCoWorkers ->chunk(2) as $chunk)
                                <li class="links__partner--row">
                                    <div class="container-fluid clearfix">
                                        <div class="row no-gutters">
                                            @foreach($chunk as $coworker)
                                                <div class="col-sm-6">
                                                    <a href="{{!is_null($coworker->url) ? $coworker->url : ''}}">
                                                        <div class="partner__logo" style="background-image: url('{{Storage::url($coworker->icon)}}')"></div>
                                                    </a>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </li>
                <li class="multicolor">
                    <div class="multicolor-container links--row">
                        <a href="javascript:;" class="links--row--first--lvl">Հասարակական կազմակերպություններ</a>
                        <ul class="links--hidden--content">
                            <li class="links__non--governmental--organizations">
                                <div class="container-fluid p-0">
                                    <div class="row no-gutters">
                                        @foreach($LinksNgos as $LinksNgo)
                                            <div class="col-sm-6">
                                                <div class="workers__container">
                                                    <div class="worker__info">
                                                        <div class="worker__info--header">
                                                            <h1>{{!is_null($LinksNgo->ngo_name) ? $LinksNgo->ngo_name : ''}}</h1>
                                                        </div>
                                                        <div class="worker__info--chief">
                                                            <h1>{{!is_null($LinksNgo->head_position) ? $LinksNgo->head_position : ''}}</h1>
                                                        </div>
                                                        <div class="worker__info--name">
                                                            <p>{{!is_null($LinksNgo->head_name) ? $LinksNgo->head_name : ''}}</p>
                                                        </div>
                                                        <ul class="worker__number__email">
                                                            <li>
                                                                @if(!is_null($LinksNgo->address))
                                                                    <i class="location-icon"></i>
                                                                    <span>{{ $LinksNgo->address }}</span>
                                                                @endif
                                                            </li>
                                                            <li>
                                                                @if(!is_null($LinksNgo->phone_number))
                                                                    <i class="call-icon"></i>
                                                                    <span>{{ $LinksNgo->phone_number }}</span>
                                                                @endif
                                                            </li>
                                                            <li>
                                                                @if(!is_null($LinksNgo->email))
                                                                    <i class="message-icon"></i>
                                                                    <span>{{ $LinksNgo->email }}</span>
                                                                @endif
                                                            </li>
                                                            <li>
                                                                @if(!is_null($LinksNgo->website_name))
                                                                    <i class="website-icon"></i>
                                                                    <a href="{{!is_null($LinksNgo->website_url) ? $LinksNgo->website_url : ''}}">
                                                                        <span>{{ $LinksNgo->website_name }}</span>
                                                                    </a>
                                                                @endif
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="multicolor">
                    <div class="multicolor-container links--row">
                        <a href="javascript:;" class="links--row--first--lvl">մանկական բարեգործական
                            կազմակերպություններ</a>
                        <ul class="links--hidden--content">
                            @foreach($LinksCcos as $LinksCco)
                                <li class="charity__row">
                                    <div class="charity__row--content">
                                        <div class="container-fluid m-0 p-0">
                                            <div class="row no-gutters">
                                                <div class="col-lg-4 col-xl-3">
                                                    @if(!is_null($LinksCco->icon))
                                                        <div class="charity-background"
                                                             style="background-image: url('{{Storage::url( $LinksCco->icon ) }}')">
                                                        </div>
                                                    @endif
                                                </div>
                                                <div class="col-lg-8 col-xl-9 link__list text-justify editor-content">
                                                    @if( !is_null($LinksCco->description) )
                                                        {!! $LinksCco->description !!}
                                                    @endif
                                                </div>
                                                <div class="offset-xl-3 offset-lg-4 col-lg-8 col-xl-9">
                                                    <ul class=" worker__number__email">
                                                        <li>
                                                            @if(!is_null($LinksCco->address))
                                                                <i class="location-icon"></i>
                                                                <span>{{ $LinksCco->address }}</span>
                                                            @endif
                                                        </li>
                                                        <li>
                                                            @if(!is_null($LinksCco->phone_number))
                                                                <i class="call-icon"></i>
                                                                <span>{{ $LinksCco->phone_number }}</span>
                                                            @endif
                                                        </li>
                                                        <li>
                                                            @if(!is_null($LinksCco->email))
                                                                <i class="message-icon"></i>
                                                                <span>{{ $LinksCco->email }}</span>
                                                            @endif
                                                        </li>
                                                        <li>
                                                            @if(!is_null($LinksCco->website_name))
                                                                <i class="website-icon"></i>
                                                                <a href="{{!is_null($LinksCco->website_url) ? $LinksCco->website_url : ''}}">
                                                                    <span>{{ $LinksCco->website_name }}</span>
                                                                </a>
                                                            @endif
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </li>
                <li class="multicolor">
                    <div class="multicolor-container links--row">
                        <a href="javascript:;" class="links--row--first--lvl">Հղումներ</a>
                        <ul class="links__websites-container links--hidden--content">
                            <li>
                                <ul class="worker__number__email">
                                    @foreach($LinksLinks as $Link)
                                        @if($Link->type == 'main' )
                                            <li>
                                                <p>{{ !is_null($Link->name) ? $Link->name : '' }}</p>
                                                @if( !is_null($Link->website_name) )
                                                    <i class="website-icon"></i>
                                                    <a href="{{!is_null($LinksCco->website_url) ? $LinksCco->website_url : ''}}">{{$Link->website_name}}</a>
                                                @endif
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li>
                                <a class="links__second--lvl" href="javascript:;">Նախարարությոևններ</a>
                                <ul class="links__websites--row worker__number__email">
                                    @foreach($LinksLinks as $Link)
                                        @if($Link->type == 'ministries' )
                                            <li>
                                                <p>{{ !is_null($Link->name) ? $Link->name : '' }}</p>
                                                @if( !is_null($Link->website_name) )
                                                    <i class="website-icon"></i>
                                                    <a href="{{!is_null($LinksCco->website_url) ? $LinksCco->website_url : ''}}">{{$Link->website_name}}</a>
                                                @endif
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li>
                                <a class="links__second--lvl" href="javascript:;">ՀՀ կառավարության առընթեր մարմիններ</a>
                                <ul class="links__websites--row worker__number__email">
                                    @foreach($LinksLinks as $Link)
                                        @if($Link->type == 'ra_government_bodies' )
                                            <li>
                                                <p>{{ !is_null($Link->name) ? $Link->name : '' }}</p>
                                                @if( !is_null($Link->website_name) )
                                                    <i class="website-icon"></i>
                                                    <a href="{{!is_null($LinksCco->website_url) ? $LinksCco->website_url : ''}}">{{$Link->website_name}}</a>
                                                @endif
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li>
                                <a class="links__second--lvl" href="javascript:;">Այլ հղումներ</a>
                                <ul class="links__websites--row worker__number__email">
                                    @foreach($LinksLinks as $Link)
                                        @if($Link->type == 'other_links' )
                                            <li>
                                                <p>{{ !is_null($Link->name) ? $Link->name : '' }}</p>
                                                @if( !is_null($Link->website_name) )
                                                    <i class="website-icon"></i>
                                                    <a href="{{!is_null($LinksCco->website_url) ? $LinksCco->website_url : ''}}">{{$Link->website_name}}</a>
                                                @endif
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li>
                                <a class="links__second--lvl" href="javascript:;">Մարզեր</a>
                                <ul class="links__websites--row worker__number__email">
                                    @foreach($LinksLinks as $Link)
                                        @if($Link->type == 'regions' )
                                            <li>
                                                <p>{{ !is_null($Link->name) ? $Link->name : '' }}</p>
                                                @if( !is_null($Link->website_name) )
                                                    <i class="website-icon"></i>
                                                    <a href="{{!is_null($LinksCco->website_url) ? $LinksCco->website_url : ''}}">{{$Link->website_name}}</a>
                                                @endif
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </section>
    </main>
@endsection