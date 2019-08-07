@section('meta')
    <meta property="og:url"           content="{{url()->current()}}" />
    <meta property="og:title"         content="{{$coverPhoto->page_name}}" />
    <meta property="og:description"   content="{!! $description !!}" />
    <meta property="og:image"         content="{{$_SERVER['APP_URL']."/".Storage::url($coverPhoto->page_cover_photo)}}" />
@endsection
