<section class="subscription">
    <div class="subscription__content">
        <div class="subscription__content--header">
            <h1>{!! __tr('sub_subscribe') !!}</h1>
        </div>
        <div class="subscription__content--form">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="name"><img src="/img/name-icon.png" alt=""></span>
                </div>
                <input type="text" class="form-control subs__input" placeholder="Անուն" aria-label="Username"
                       aria-describedby="name">
            </div>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="email"><img src="/img/email-icon.png" alt=""></span>
                </div>
                <input type="email" class="form-control subs__input" placeholder="Էլ․ հասցե"
                       aria-label="Username" aria-describedby="email">
            </div>
            <a href="javascript:;" class="margin-auto animated__button animated__button--yellow">{!! __tr('sub_subscribe') !!}</a>
        </div>
        <div class="subscription__content--info pt-4">
            <a href="javascript:;">{!! __tr('sub_privacy') !!}</a>
        </div>
    </div>
</section>