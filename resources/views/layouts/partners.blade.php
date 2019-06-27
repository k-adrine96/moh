<section class="partners">
    <div class="partners--cont">
        <div class="partners--cont--slider">
            @if(isset($partnersRow1))
                @foreach($partnersRow1 as $partnerPic)
                    <a href="{{$partnerPic->url}}" class="partners--cont--item" style="background-image: url('{{Storage::url($partnerPic->image)}}')"></a>
                @endforeach
            @endif
        </div>
        <div class="partners-1--cont--slider">
            @if(isset($partnersRow2))
                @foreach($partnersRow2 as $partnerPic)
                    <a href="{{$partnerPic->url}}" class="partners--cont--item" style="background-image: url('{{Storage::url($partnerPic->image)}}')"></a>
                @endforeach
            @endif
        </div>
    </div>
</section>