<section class="subscription">
    <div class="subscription__content">
        <div class="subscription__content--header">
            <h1>{!! __tr('sub_subscribe') !!}</h1>
        </div>
        <form action="{{ route('subscribe') }}" method="post" id="form_subscribe">
            {{ csrf_field() }}
            <div class="subscription__content--form">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="name"><img src="/img/name-icon.png" alt=""></span>
                        </div>
                        <input type="text" class="form-control subs__input" placeholder="{!! strip_tags(__tr('name')) !!}" aria-label="Username" aria-describedby="name" name="name" required>
                    </div>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="email"><img src="/img/email-icon.png" alt=""></span>
                        </div>
                        <input type="email" class="form-control subs__input" placeholder="{!! strip_tags(__tr('email')) !!}" aria-label="Username" aria-describedby="email" name="email" required>
                    </div>
                <a href="javascript:;" class="margin-auto animated__button animated__button--yellow" id="_subscribe">{!! __tr('sub_subscribe') !!}</a>
            </div>
        </form>
    </div>
</section>

@push('js')
    <script>
        $('#_subscribe').click(function () {
            $('#form_subscribe').submit();
        });
    </script>
@endpush
