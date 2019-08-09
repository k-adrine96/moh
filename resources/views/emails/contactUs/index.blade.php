@component('mail::message')
<h1>{{__tr('name_surname') ." : ". $data['name']}}</h1>
<h2>{{__tr('email')." : ".$data['email']}}</h2>
<h2>{{__tr('subject')." : ". !is_null($data['subject']) ? $data['subject'] : ''}}</h2>
<p>{{__tr('message')." : ".$data['message']}}</p>
@endcomponent
