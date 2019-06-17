@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background: #0c5460">
            <div class="secondary__cover--content">
                <h1>Տեսադարան</h1>
            </div>
        </section>
        <section class="videos">
            <ul class="background__zebra">
                <li>
                    <div class="videos__row">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="video__content">
                                        <iframe width="80%" height="315" src="https://www.youtube.com/embed/VuY-CnutMAI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                        <div class="video__content--header">
                                            <a href="javascript:;">այսօր իրականում․ Արսեն Թորոսյան</a>
                                        </div>
                                        <div class="video__content--date">
                                            <p>16 հունվարի 2019 թվական</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="video__content">
                                        <iframe width="80%" height="315" src="https://www.youtube.com/embed/VuY-CnutMAI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                        <div class="video__content--header">
                                            <a href="javascript:;">այսօր իրականում․ Արսեն Թորոսյան</a>
                                        </div>
                                        <div class="video__content--date">
                                            <p>16 հունվարի 2019 թվական</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </section>
        <section class="partners">
            <div class="partners--cont">
                <div class="partners--cont--slider">
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/license-application-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/citizen-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/e-draft-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/sun-icon.png')"></a>
                </div>
            </div>
        </section>
    </main>
@endsection