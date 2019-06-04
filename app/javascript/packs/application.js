import "bootstrap";
import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Congratulations !",
  text: "Your daily exercise is done !",
  confirmButtonColor: '#DD6B55',
  confirmButtonText: 'Yes',
  icon: "success"
}, (value) => {
  if (value) {
    const link = document.querySelector('#submit-button');
    link.click();
  }
});
//


import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
//

// selectionner tous les exercices => mettre ds une const forEach
// créer une const = tableau de string dans class name(en choisir 6)
// => forEach  add class pour ch element exercice
// la string aura pour valeur une des class choisi parmis les 6
const exercises = document.querySelectorAll(".tyt-card");
exercises.forEach((exercise) =>  {
  const animate = ["bounce", "pulse", "wobble", "rubberBand", "rollIn", "rotateIn"];
  const rand = animate[Math.floor(Math.random() * animate.length)];
  exercise.classList.add(rand);
});

console.log(gon.userAchivementsRatings);
console.log(gon.userAchivementsDates);

var Highcharts = require('highcharts');

// Load module after Highcharts is loaded
require('highcharts/modules/exporting')(Highcharts);

// Create the chart
Highcharts.chart('container', {
    chart: {
        type: 'spline'
    },
    title: {
        text: 'Follow your achievement!'
    },
    xAxis: {
        title: {
          text: 'Month'
        },
        categories: gon.userAchivementsDates
    },
    yAxis: {
        title: {
            text: 'Improvement'
        },
        labels: {
            formatter: function () {
                return this.value + '°';
            }
        }
    },
    tooltip: {
        crosshairs: true,
        shared: true
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
        name: 'Tokyo',
        marker: {
            symbol: 'square'
        },
        data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, {
            y: 26.5,
            marker: {
                symbol: 'url(https://www.highcharts.com/samples/graphics/sun.png)'
            }
        }, 23.3, 18.3, 13.9, 9.6]

    }]
});
