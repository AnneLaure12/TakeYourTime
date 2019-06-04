import "bootstrap";
//
// console.log(gon.userAchivementsRatings);
// console.log(gon.userAchivementsDates);

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



