import mapboxgl from 'mapbox-gl';

// const initMapbox = () => {
// 	const mapElement = document.getElementById('map');
// 	const fitMapToMarkers = (map, markers) => {
// 	  const bounds = new mapboxgl.LngLatBounds();
// 	  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
// 	  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
// 	};

//   if (mapElement) { // only build a map if there's a div#map to inject into
//     mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//     const map = new mapboxgl.Map({
//       container: 'map',
//       style: 'mapbox://styles/mapbox/streets-v10'
//     });
//     const markers = JSON.parse(mapElement.dataset.markers);
// 	  markers.forEach((marker) => {
// 	  	const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

// 	    new mapboxgl.Marker()
// 	      .setLngLat([ marker.lng, marker.lat ])
// 	      .setPopup(popup) // add this
// 	      .addTo(map);
// 	  });
// 	  fitMapToMarkers(map, markers);
//   }
// };

// const openInfoWindow = (markers) => {
//   // Select all cards
//   const cards = document.querySelectorAll('.card');
//   cards.forEach((card, index) => {
//     // Put a microphone on each card listening for a mouseenter event
//     card.addEventListener('mouseenter', () => {
//       // Here we trigger the display of the corresponding marker infoWindow with the "togglePopup" function provided by mapbox-gl
//       markers[index].togglePopup();
//     });
//     // We also put a microphone listening for a mouseleave event to close the modal when user doesn't hover the card anymore
//     card.addEventListener('mouseleave', () => {
//       markers[index].togglePopup();
//     });
//   });
// }

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/javier1990/cklay3nkl1n2517qumkfxxn6s'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    // Here we store map markers in an array
    const mapMarkers = []
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      const newMarker = new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
      mapMarkers.push(newMarker)
  		newMarker.getElement().dataset.markerId = marker.id;
      newMarker.getElement().addEventListener('mouseenter', (e) => toggleCardHighlighting(e) );
      newMarker.getElement().addEventListener('mouseleave', (e) => toggleCardHighlighting(e) );
      });
      // newMarker.getElement().dataset.markerId = marker.id;
      // newMarker.getElement().addEventListener('mouseenter', (e) => toggleCardHighlighting(e) );
      // newMarker.getElement().addEventListener('mouseleave', (e) => toggleCardHighlighting(e) );

    fitMapToMarkers(map, markers);
    // We give the array of marker to a new function called "openInfoWindow"
    openInfoWindow(mapMarkers);
  }
};
const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const openInfoWindow = (markers) => {
  // Select all cards
  const cards = document.querySelectorAll('.card-index');
  cards.forEach((card, index) => {
    // Put a microphone on each card listening for a mouseenter event
    card.addEventListener('mouseenter', () => {
      // Here we trigger the display of the corresponding marker infoWindow with the "togglePopup" function provided by mapbox-gl
      markers[index].togglePopup();
    });
    // We also put a microphone listening for a mouseleave event to close the modal when user doesn't hover the card anymore
    card.addEventListener('mouseleave', () => {
      markers[index].togglePopup();
    });
  });
};

const toggleCardHighlighting = (event) => {
  // We select the card corresponding to the marker's id
  const card = document.querySelector(`[data-boardgame-id="${event.currentTarget.dataset.markerId}"]`);
  // Then we toggle the class "highlight github" to the card
  card.classList.toggle('highlight');
}

export { initMapbox };