@extends('layout')

@section('title')
    {{ __('db.F_CONTACT_US') }}
@endsection

@section('seo_keywords')
    @lang('db.SEO_KEYWORD_CONTACT_US')
@endsection

@section('seo_description')
    @lang('db.SEO_DESCRIPTION_CONTACT_US')
@endsection

@section('og_desc')

@endsection

@section('og_image')

@endsection

@section('head_links')

@endsection

@section('body_class')
    contactus
@endsection

@section('content')

    <div class="contact-container">
        <div class="path">
            <div class="contact-path">
                <a href="{{ lurl('/') }}">
                    <div>
                        <h1>{{ __('db.F_PAGE_HOME') }}</h1>
                    </div>
                </a>
                <a href="{{ lurl('/contact-us') }}">
                    <div>
                        <h2>{{ __('db.F_PAGE_CONTACT_US') }}</h2>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="contact-content clearfix">
        <div class="col-sm-7 padding-0">
            @foreach($contacts as $i => $contact)
                <div class="contact-info">
                    <div class="contact-header">
                        <h1>{!! $contact->title !!}</h1>
                    </div>
                    <ul class="contact-icon-text">
                        @if(!empty($contact->person))
                            <li>
                                <span> {!! $contact->person !!}</span>
                            </li>
                        @endif
                        @if(!empty($contact->address))
                            <li>
                                <span><img src="{{ asset('img/location-icon.png') }}" alt=""></span>
                                <span><strong>{!! __('db.F_ADDRESS') !!}</strong> {!! $contact->address !!}</span>
                            </li>
                        @endif
                        @if(!empty($contact->tel))
                            <li>
                                <span><img src="{{ asset('img/contact-call-icon.png') }}" alt=""></span>
                                <span><strong>{!! __('db.F_PHONE') !!}</strong> {!! $contact->tel !!}</span>
                            </li>
                        @endif
                        @if(!empty($contact->fax))
                            <li class="fax_row">
                                <span><img src="{{ asset('img/contact-fax-icon.png') }}" alt=""></span>
                                <span><strong>{!! __('db.F_FAX') !!}</strong> {!! $contact->fax !!}</span>
                            </li>
                        @endif
                        @if(!empty($contact->email))
                            <li>
                                <span><img src="{{ asset('img/contact-message-icon.png') }}" alt=""></span>
                                <span><strong>{!! __('db.F_EMAIL') !!}</strong> {!! $contact->email !!}</span>
                            </li>
                        @endif
                    </ul>
                    <div class="contact-icons">
                        @if(!empty($contact->facebook_link))
                            <a href="{{ $contact->facebook_link }}" target="_blank">
                                <div class="contact-facebook-icon"></div>
                            </a>
                        @endif
                        @if(!empty($contact->website_link))
                            <a href="{{ $contact->website_link}}" target="_blank">
                                <div class="contact-website-icon"></div>
                            </a>
                        @endif
                    </div>
                </div>
            @endforeach
        </div>
        <div class="col-sm-5 padding-0">
            <div class="contact-group">
                <div class="contact-blue-cube">
                    <div class="contact-blue-cube-content">
                    </div>
                </div>
                <div class="contact-us-header">
                    {!! __('db.F_PAGE_CONTACT_US_FORM') !!}
                </div>
                <form method="post" action="{{ route('contact-us.send-mail') }}" enctype="multipart/form-data" class="form-contact">
                    {{ csrf_field() }}
                    <div class="form-group {{ $errors->has('name') ? 'has-error' : ''}}">
                        <input type="text" class="form-control" name="name" placeholder="@lang('db.F_PAGE_CONTACT_US_FORM_NAME')" value="{{ old('name') }}">
                        <span style="color: #c34747;">{{ $errors->has('name') ? $errors->first('name') : ''}}</span>
                    </div>
                    <div class="form-group {{ $errors->has('email') ? 'has-error' : ''}}">
                        <input type="email" class="form-control" name="email" placeholder="@lang('db.F_PAGE_CONTACT_US_FORM_EMAIL')" value="{{ old('email') }}">
                        <span style="color: #c34747;">{{ $errors->has('email') ? $errors->first('email') : ''}}</span>
                    </div>
                    <div class="form-group {{ $errors->has('message') ? 'has-error' : ''}}">
                        <textarea class="form-control" rows="8" name="message" placeholder="@lang('db.F_PAGE_CONTACT_US_FORM_FEEDBACK')">{{ old('message') }}</textarea>
                        <span style="color: #c34747;">{{ $errors->has('message') ? $errors->first('message') : ''}}</span>
                    </div>
                    <div class="form-group form-group-hide">
                        <input type="file" class="form-control-file" name="attachment" id="FormControlFile1">
                    </div>
                    <div class="choose-file-div">
                        <div class="choosefile">
                            <h1>@lang('db.F_PAGE_CONTACT_US_FORM_ATTACH')</h1>
                        </div>
                        <span class="choose-file-value"></span>
                    </div>
                    <div class="send send-js" style="cursor: pointer">
                        <h1>@lang('db.F_SEND_CONTACT')</h1>
                    </div>
                </form>
                <div id="map"></div>
                <script>
                    function initMap() {
                        var location = {lat: @lang('db.F_PAGE_CONTACT_US_LAT'), lng: @lang('db.F_PAGE_CONTACT_US_LNG')};
                        var map = new google.maps.Map(document.getElementById('map'), {
                            zoom: 17,
                            center: location
                        });
                        var marker = new google.maps.Marker({
                            position: location,
                            map: map
                        });
                    }
                </script>
                <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7nSpucMaZeeBRk9JbmLZkVWQx4L8fLgs&callback=initMap" type="text/javascript"></script>
            </div>
        </div>
    </div>


@endsection
