<li>
    @isset($page)
        <a href="{{ route('show.page', ['page' => $page->slug]) }}" class="first-lvl">{{ $page->name }}</a>
    @else
        <a href="javascript:;" class="first-lvl">{{ $section->name }}</a>
            <ul class="hided--content">
                @foreach($section->pages as $page)
                    <li>
                        <a href="{{ $page->subpages()->count() ? 'javascript:;' : route('show.section.page', ['section' => $section->slug, 'page' => $page->slug]) }}" class="second-lvl">{{ $page->name }}</a>
                        @if($page->subpages()->count())
                            <ul class="second--hidden--content">
                                @foreach($page->subpages as $sub)
                                    <li><a href="{{ route('show.section.page.sub', ['section' => $section->slug, 'page' => $page->slug, 'subpage' => $sub->slug]) }}">{{ $sub->name }}</a></li>
                                @endforeach
                            </ul>
                        @endif
                    </li>
                @endforeach
            </ul>
    @endisset
</li>