function initMap() {
  var location = {lat:40.2037041, lng:44.52500};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 14,
    center: location
  });
  var marker = new google.maps.Marker({
    position: location,
    map: map,
    icon: 'img/google-map-loc-icon.png'
  });
}