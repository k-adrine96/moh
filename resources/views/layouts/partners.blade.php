<section class="partners">
    <div class="partners--cont">
        <div class="partners--cont--slider">
            @foreach($partnersRow1 as $partnerPic)
                <a href="{{$partnerPic->url}}" class="partners--cont--item" style="background-image: url('{{Storage::url($partnerPic->image)}}')"></a>
            @endforeach
        </div>
        <div class="partners-1--cont--slider">
            @foreach($partnersRow2 as $partnerPic)
                <a href="{{$partnerPic->url}}" class="partners--cont--item" style="background-image: url('{{Storage::url($partnerPic->image)}}')"></a>
            @endforeach
    </div>
</section>