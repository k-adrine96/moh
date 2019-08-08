@section('meta')
    <meta property="og:url"           content="{{url()->current()}}" />
    <meta property="og:title"         content="{{$coverPhoto->page_name}}" />
    <meta property="og:description"   content="{{ strip_tags($description) }}" />
    <meta property="og:image"         content="{{ $image }}" />
@endsection
