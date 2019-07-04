<li>
    <a href="javascript:;" class="first-lvl">{{ $section->name }}</a>
    @foreach($section->pages as $page)
        <ul class="hided--content">
            <li>
                <a href="javascript:;" class="second-lvl">{{ $page->name }}</a>
                <ul class="second--hidden--content">
                    @foreach($page->subpages as $sub)
                        <li><a href="javascript:;">{{ $sub->name }}</a></li>
                    @endforeach
                </ul>
            </li>
        </ul>
    @endforeach
</li>