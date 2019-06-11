<div class="workers__container workers__container-{{$staffMember->id}}">
    <div class="workers__container--header">
        <h1>{{ $staffMember->name }} իրականացնում է՝</h1>
    </div>
    <ul class="numbered-list workers__container--info">
        {{ strip_tags($staffMember->text) }}
    </ul>
    <div class="workers__container--name">
        <h1>{{ $staffMember->name }}</h1>
    </div>
</div>