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

// ERROR 500:

$(".full-screen").mousemove(function(event) {
  var eye = $(".eye");
  var x = (eye.offset().left) + (eye.width() / 2);
  var y = (eye.offset().top) + (eye.height() / 2);
  var rad = Math.atan2(event.pageX - x, event.pageY - y);
  var rot = (rad * (180 / Math.PI) * -1) + 180;
  eye.css({
    '-webkit-transform': 'rotate(' + rot + 'deg)',
    '-moz-transform': 'rotate(' + rot + 'deg)',
    '-ms-transform': 'rotate(' + rot + 'deg)',
    'transform': 'rotate(' + rot + 'deg)'
  });
});



// console.log(gon.userAchivementsRatings);
// console.log(gon.userAchivementsDates);


import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();


//Exrcises animate
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
//Moods animate
const moods = document.querySelectorAll(".tyt-cards");
moods.forEach((mood) => {
  const animate = ["fadeInDown"];
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
        type: 'spline',
        backgroundColor: '#F7F3ED',
        borderRadius: 5,
        style: {
            fontFamily: 'serif'
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
        data: gon.userAchivementsRatings
        // data: [2, 2, 5, 1, 3, 5, 2, {
        //     y: 5,
        //     marker: {
        //         symbol: 'url(https://www.highcharts.com/samples/graphics/sun.png)'
        //    }
        // }, 3, 3, 3, 5]

    }]
});



