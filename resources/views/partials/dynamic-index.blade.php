@if($data['row']->count())
<div class="col-md-3">
    <p>{{ $data['table_title'] . ':'}}</p>
    <table class="table table-bordered">
        <thead>
        <tr>
            @foreach($data['items'] as $i)
                <th>{{ $i }}</th>
            @endforeach
            @if($data['action'])
                <th>Action</th>
            @endif
        </tr>
        </thead>
        <tbody>
        @foreach($data['row'] as $r)
            <tr>
                <td>{{ $r->name }}</td>
                @if($data['action'])
                    <td>
                        <a href="{{ $data['route'] }}/{{ $r->id }}/edit" title="Edit" class="btn btn-sm btn-primary pull-right edit">
                            <i class="voyager-edit"></i> <span class="hidden-xs hidden-sm">Edit</span>
                        </a>
                        <a href="{{ $data['route'] }}/{{ $r->id }}" title="View" class="btn btn-sm btn-warning pull-right view">
                            <i class="voyager-eye"></i> <span class="hidden-xs hidden-sm">View</span>
                        </a>
                    </td>
                @endif
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
@endif