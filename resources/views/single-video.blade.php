<div class="video__items">
    <div class="mobile-video-card">
        <div class="video__items--video">
            <?php $videoKey = explode('/', $videoIndividual->video_url)[3]; ?>
            <iframe class="video" width="90%" height="320px"
                    src="https://www.youtube.com/embed/{{$videoKey}}">
            </iframe>
        </div>
        <div class="video__items--text">
            <span><?php echo date('d F Y l' , strtotime($videoIndividual->date)); ?></span>
            <h1>{{$videoIndividual->title}}</h1>
        </div>
    </div>
</div>