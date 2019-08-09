@component('mail::message')
<h2 style="text-align: center">ՀԱՅԱՍՏԱՆԻ ՀԱՆՐԱՊԵՏՈՒԹՅԱՆ ԱՌՈՂՋԱՊԱՀՈՒԹՅԱՆ ՆԱԽԱՐԱՐՈՒԹՅՈՒՆ	</h2>
@component('mail::button', ['url' => route($data->route, $data['id'])])
    {{ $data['title'] }}
@endcomponent
@endcomponent
