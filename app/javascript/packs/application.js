import "bootstrap";
import { initSweetalert } from '../plugins/init_sweetalert';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { handleSlider } from '../plugins/handle_slider';

initSweetalert('#sweet-alert-demo', {
  title: "Congratulations",
  text: "Your daily exercise is done !",
  icon: "success"
}, (value) => {
  if (value) {
    const link = document.querySelector('#submit-button');
    link.click();
  }
});


initMapbox();
handleSlider();


//Exrcises animate
// selectionner tous les exercices => mettre ds une const forEach
// créer une const = tableau de string dans class name(en choisir 6)
// => forEach  add class pour ch element exercice
// la string aura pour valeur une des class choisi parmis les 6
const exercises = document.querySelectorAll(".tyt-card");
exercises.forEach((exercise) =>  {
  exercise.classList.add("fadeInDown");
});

//Moods animate
const moods = document.querySelectorAll(".moods-card-category");
moods.forEach((mood) => {
  mood.classList.add("fadeInDown");
});

var Highcharts = require('highcharts');

// Load module after Highcharts is loaded
require('highcharts/modules/exporting')(Highcharts);

// Create the chart
if (typeof gon !== 'undefined') {
  Highcharts.chart('container', {
    chart: {
        width: 880,
        height: 500,
        type: 'spline',
        backgroundColor: '#F7F3ED',
        color: 'red',
        borderRadius: 5,
        style: {
            fontFamily: 'Quicksand',
        }
    },
    title: {
        text: 'Your journey'
    },
    xAxis: {
        title: {
          text: 'Month'
        },
        categories: gon.userAchivementsDates
    },
    yAxis: {
      title: {
          text: 'Improvement',
      },
      labels: {
        formatter: function () {
          console.log(this === array1)
          var array1 = [0, 1, 2, 3, 4, 5]
          if (array1.includes(this.value)) {
           return this.value
          }
        }
      }
    },
    tooltip: {
        crosshairs: true,
        shared: true,
    },
    plotOptions: {
        spline: {
            marker: {
                radius: 4,
                lineColor: '#666666',
                lineWidth: 1
            }
        }
    },
    series: [{
      name: 'Follow your achievement!',
      marker: {
          symbol: 'round'
      },
      color: '#C72C41',
      data: gon.userAchivementsRatings
    }]
  });
}




