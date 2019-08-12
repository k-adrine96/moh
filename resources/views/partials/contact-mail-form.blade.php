<div class="contact__us--info">
    <div class="contact__us--info--form">
        <form method="POST" action="{{ route('mail') }}" class="contact__us--form" id="form_subscribe">
            {{ csrf_field() }}
            <div class="input-group mb-4">
                <div class="input-group-prepend">
                    <span class="input-group-text"><img src="/img/username-icon.png" alt=""></span>
                </div>
                <input name="name" type="text" class="form-control" placeholder="{!! strip_tags(__tr('name_surname')) !!}" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-4">
                <div class="input-group-prepend">
                    <span class="input-group-text"><img src="/img/email-1-icon.png" alt=""></span>
                </div>
                <input name="email" type="email" class="form-control" placeholder="{!! strip_tags(__tr('email')) !!}" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-4">
                <div class="input-group-prepend">
                    <span class="input-group-text"><img src="img/theme-icon.png" alt=""></span>
                </div>
                <input name="subject" type="text" class="form-control" placeholder="{!! strip_tags(__tr('theme')) !!}" aria-label="Username" aria-describedby="">
            </div>
            <div class="form-group">
                <textarea name="message" class="form-control lh-04" placeholder="{!! strip_tags(__tr('placeholder_message')) !!}"></textarea>
            </div>
            <div class="contact__us--btns d-flex justify-content-center">
{{--                <a href="javascript:;" class="animated__button animated__button--yellow">{!! __tr('delete') !!}</a>--}}
                <a href="javascript:;" class="animated__button animated__button--blue-1" id="_subscribe">{!! __tr('send') !!}</a>
            </div>
        </form>
    </div>
    <div class="contact__us--info--map">
        <div id="map"></div>
    </div>
</div>
