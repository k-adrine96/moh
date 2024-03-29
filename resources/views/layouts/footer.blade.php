<footer class="footer">
    <div class="footer__container--social">
        <ul class="footer--social d-flex align-items-center justify-content-center">
            @foreach($socials as $social)
                @if(!is_null($social->slug))
                    <li class="rounded-circle">
                        <a href="{{$social->url}}" target="_blank">
                            <i class="{{$social->slug}}--icon"></i>
                        </a>
                    </li>
                @endif
            @endforeach
        </ul>
    </div>
    <div class="footer-main-content">
        <div class="footer__container">
            <div class="footer__container--info">
                <ul class="footer__container--info--contact d-flex justify-content-center">
                    <li>
                        <h1>{!! __tr('address') !!}</h1>
                        <p>{!! __tr('location') !!}</p>
                    </li>
                    <li>
                        <h1>{!! __tr('email') !!}</h1>
                        <a href="javascript:;">info@moh.am</a>
                    </li>
                    <li>
                        <h1>{!! __tr('phone-number') !!}</h1>
                        <p> (+374 60) 80 80 03 /2303</p>
                    </li>
                    <li>
                        <h1>{!! __tr('info-responsible') !!}</h1>
                        <p>(+374 60) 80-80-03 /2301 {!! __tr('or') !!} <br>
                            2302, {!! __tr('email') !!} <a href="javascript:;">pr@moh.am</a></p>
                    </li>
                    <li>
                        <h1>{!! __tr('last-update') !!}</h1>
                        <p>{{ setting('admin.last_update') }}</p>
                    </li>
                </ul>
            </div>
            <div class="footer__container--copyright">
                 {!! '©'.date('Y').', '. __tr('rights-reserved') !!}
                <!--<h1>Պատրաստված է` <a href="http://mgplab.com/" target="_blank">-->
                    <!--MEGAPOLIS[LAB]-->
                <!--</a>-->
                <!--</h1>-->
            </div>
        </div>
    </div>
</footer>