
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
        categories: ['', '', '', '', '', '',
            '', '', '', '', '', '']
    },
    yAxis: {
        title: {
            text: 'Improvement'
        },
        labels: {
            formatter: function () {
                return this.value + ',hjgdcjytrdf °';
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
