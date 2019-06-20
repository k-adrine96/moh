@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Նախարարի աշխատակազմ</h1>
            </div>
        </section>
        <section class="minister__staff">
            @foreach($content->chunk(2) as $chunk)
                <div class="minister__staff--container minister__staff--desktop">
                    <div class="minister__staff--container--width">
                        @foreach($chunk as $staffMember)
                            <div class="workers__info">
                                <div class="workers__info--image"
                                     style="background-image: url('{{Storage::url($staffMember->image)}}')"></div>
                                <div class="workers__info--content">
                                    <div class="workers__info--content--names">
                                        <h1>{{$staffMember->position}}</h1>
                                        <a class="kuku" href="javascript:;"
                                           data-for="workers__container-{{$staffMember->id}}">{{$staffMember->name}}</a>
                                    </div>
                                    <ul class="worker__number__email">
                                        <li>
                                            <i class="call-icon"></i>
                                            <span>{{$staffMember->phone_number}}</span>
                                        </li>
                                        <li>
                                            <i class="message-icon"></i>
                                            <span>{{$staffMember->email}}</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                @foreach($chunk as $staffMember)
                    @include('partials.minister-staff-member-info')
                @endforeach
            @endforeach


            <ul class="minister__structure--mobile">
                <li>
                    <div class="minister__staff--container minister__staff--mobile">
                        <div class="minister__staff--container--width">
                            <div class="workers__info">
                                <div class="workers__info--image"
                                     style="background-image: url('{{Storage::url($staffMember->image)}}')"></div>
                                <div class="workers__info--content">
                                    <div class="workers__info--content--names">
                                        <h1>dafgadfgdfgadg</h1>
                                        <a class="mobile-name" href="javascript:;" data-for="mobile-workers-container-1">Name</a>
                                    </div>
                                    <ul class="worker__number__email">
                                        <li>
                                            <i class="call-icon"></i>
                                            <span>dafggdfagadfgdg</span>
                                        </li>
                                        <li>
                                            <i class="message-icon"></i>
                                            <span>dfhgdfgdfg</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="workers__container mobile-workers-container-1">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet aspernatur consequatur ea eius illo
                        illum in, iure laudantium modi nisi nostrum quasi quisquam ratione repellat suscipit tempora
                        voluptatum. Debitis dolores eum exercitationem illo modi optio sunt. Aliquam aspernatur autem
                        cupiditate, deserunt ducimus est eum eveniet fuga in minima nisi non possimus quo! Alias delectus
                        eius inventore, modi officia placeat recusandae reprehenderit sit temporibus vel voluptas voluptate
                        voluptatibus! Ab animi aspernatur assumenda blanditiis commodi consequuntur corporis culpa delectus
                        dignissimos eaque eos, error, facilis illo inventore magnam nisi officiis omnis placeat praesentium
                        quas quasi quibusdam repudiandae rerum similique sint tempora temporibus velit vitae voluptates
                        voluptatibus. At dolorum ducimus maiores modi porro! Blanditiis deserunt dicta ipsum libero nam
                        perferendis qui quisquam soluta voluptates!
                        <div class="workers__container--name">
                            <h1>Header</h1>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="minister__staff--container minister__staff--mobile">
                        <div class="minister__staff--container--width">
                            <div class="workers__info">
                                <div class="workers__info--image"
                                     style="background-image: url('{{Storage::url($staffMember->image)}}')"></div>
                                <div class="workers__info--content">
                                    <div class="workers__info--content--names">
                                        <h1>dafgadfgdfgadg</h1>
                                        <a class="mobile-name" href="javascript:;" data-for="mobile-workers-container-2">Name</a>
                                    </div>
                                    <ul class="worker__number__email">
                                        <li>
                                            <i class="call-icon"></i>
                                            <span>dafggdfagadfgdg</span>
                                        </li>
                                        <li>
                                            <i class="message-icon"></i>
                                            <span>dfhgdfgdfg</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="workers__container mobile-workers-container-2">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet aspernatur consequatur ea eius illo
                        illum in, iure laudantium modi nisi nostrum quasi quisquam ratione repellat suscipit tempora
                        voluptatum. Debitis dolores eum exercitationem illo modi optio sunt. Aliquam aspernatur autem
                        cupiditate, deserunt ducimus est eum eveniet fuga in minima nisi non possimus quo! Alias delectus
                        eius inventore, modi officia placeat recusandae reprehenderit sit temporibus vel voluptas voluptate
                        voluptatibus! Ab animi aspernatur assumenda blanditiis commodi consequuntur corporis culpa delectus
                        dignissimos eaque eos, error, facilis illo inventore magnam nisi officiis omnis placeat praesentium
                        quas quasi quibusdam repudiandae rerum similique sint tempora temporibus velit vitae voluptates
                        voluptatibus. At dolorum ducimus maiores modi porro! Blanditiis deserunt dicta ipsum libero nam
                        perferendis qui quisquam soluta voluptates!
                        <div class="workers__container--name">
                            <h1>Header</h1>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="minister__staff--container minister__staff--mobile">
                        <div class="minister__staff--container--width">
                            <div class="workers__info">
                                <div class="workers__info--image"
                                     style="background-image: url('{{Storage::url($staffMember->image)}}')"></div>
                                <div class="workers__info--content">
                                    <div class="workers__info--content--names">
                                        <h1>dafgadfgdfgadg</h1>
                                        <a class="mobile-name" href="javascript:;" data-for="mobile-workers-container-3">Name</a>
                                    </div>
                                    <ul class="worker__number__email">
                                        <li>
                                            <i class="call-icon"></i>
                                            <span>dafggdfagadfgdg</span>
                                        </li>
                                        <li>
                                            <i class="message-icon"></i>
                                            <span>dfhgdfgdfg</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="workers__container mobile-workers-container-3">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet aspernatur consequatur ea eius illo
                        illum in, iure laudantium modi nisi nostrum quasi quisquam ratione repellat suscipit tempora
                        voluptatum. Debitis dolores eum exercitationem illo modi optio sunt. Aliquam aspernatur autem
                        cupiditate, deserunt ducimus est eum eveniet fuga in minima nisi non possimus quo! Alias delectus
                        eius inventore, modi officia placeat recusandae reprehenderit sit temporibus vel voluptas voluptate
                        voluptatibus! Ab animi aspernatur assumenda blanditiis commodi consequuntur corporis culpa delectus
                        dignissimos eaque eos, error, facilis illo inventore magnam nisi officiis omnis placeat praesentium
                        quas quasi quibusdam repudiandae rerum similique sint tempora temporibus velit vitae voluptates
                        voluptatibus. At dolorum ducimus maiores modi porro! Blanditiis deserunt dicta ipsum libero nam
                        perferendis qui quisquam soluta voluptates!
                        <div class="workers__container--name">
                            <h1>Header</h1>
                        </div>
                    </div>
                </li>
            </ul>

        </section>
        <section class="partners">
            <div class="partners--cont">
                <div class="partners--cont--slider">
                    @foreach($partners as $partner)
                        <a href="{{$partner->url}}" class="partners--cont--item"
                           style="background-image: url('{{Storage::url($partner->image)}}')"></a>
                    @endforeach
                </div>
            </div>
        </section>
    </main>
@endsection