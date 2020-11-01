"use strict";

function loadMap(address, geolocation) {
  debugger

    const lat_lng = geolocation.split(',')
    const point = {
        lat: parseFloat(lat_lng[0]),
        lng: parseFloat(lat_lng[1])
    }
    initMapOnModal(point, address)
}

function loadMapMobile(address, geolocation) {
    const lat_lng = geolocation.split(',')
    const point = {
        lat: parseFloat(lat_lng[0]),
        lng: parseFloat(lat_lng[1])
    }
    initMapOnModal(point, address)
}

function initMapOnModal(point, address) {
  debugger
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 15,
        minZoom: 10,
        maxZoom: 18,
        center: point,
      });
      new google.maps.Marker({
        position: point,
        map,
        title: address,
      });
}

function initMap() {
  const address = document.getElementById("addressP").innerHTML
  const geolocation = document.getElementById("geolocationP").innerHTML
  const lat_lng = geolocation.split(",")
  const point = {
    lat: parseFloat(lat_lng[0]),
    lng: parseFloat(lat_lng[1])
  }
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 15,
        minZoom: 10,
        maxZoom: 18,
        center: point,
      });
      new google.maps.Marker({
        position: point,
        map,
        title: address,
      });
}

// function initMap() {
//     const lat_lng = {
//         lat: -25.363,
//         lng: 131.044,
//       }
//     const map = new google.maps.Map(document.getElementById("map"), {
//         zoom: 4,
//         center: lat_lng,
//     });
//     new google.maps.Marker({
//         position: lat_lng,
//         map,
//         title: "map test"
//     })
// }


//onclick="loadMap('{{location.address}}', '{{location.geolocation}}')"