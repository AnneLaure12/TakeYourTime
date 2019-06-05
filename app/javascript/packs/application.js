import "bootstrap";
import { initSweetalert } from '../plugins/init_sweetalert';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

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


// console.log(gon.userAchivementsRatings);
// console.log(gon.userAchivementsDates);



initMapbox();


//Exrcises animate
// selectionner tous les exercices => mettre ds une const forEach
// créer une const = tableau de string dans class name(en choisir 6)
// => forEach  add class pour ch element exercice
// la string aura pour valeur une des class choisi parmis les 6
const exercises = document.querySelectorAll(".tyt-card");
exercises.forEach((exercise) =>  {
  const animate = ["fadeInDown", "fadeInDown", "fadeInDown", "fadeInDown", "fadeInDown", "fadeInDown"];
  const rand = animate[Math.floor(Math.random() * animate.length)];
  exercise.classList.add(rand);
});


//Moods animate
const moods = document.querySelectorAll(".moods-card-category");
moods.forEach((mood) => {
  const animate = ["fadeInDown","fadeInDown","fadeInDown","fadeInDown","fadeInDown","fadeInDown",];
  const rand = animate[Math.floor(Math.random() * animate.length)];
  mood.classList.add(rand);
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



