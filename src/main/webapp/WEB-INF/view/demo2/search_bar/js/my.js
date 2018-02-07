$(function(){
    var myChart = echarts.init(document.getElementById('main'));

    // 异步加载数据
    $.get('data/cloud.json').done(function (data1) {
        var keywords = data1
        // 填入数据
        var data = [];
        for (var name in keywords) {
            data.push({
                name: name,
                value: Math.sqrt(keywords[name])
            })
        }
    // });

    var maskImage = new Image();

    var option = {

        tooltip: {
            padding: 10,
            // backgroundColor: '#222',
            backgroundColor: 'rgba(0,0,0,0.6)',
            borderColor: '#777',
            showDelay: 200,
            borderWidth: 1,
            // formatter: function (obj) {
            //     var value = obj.value;
            //     return value
            // }
            // formatter: function (obj) {
            //     // var value = obj.value;
            //     return '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
            //         + "LLL" + ' ' + "VVV" + 'O:'
            //         + "XXXX"
            //         + '</div>'
            //         + "XXXXXX" + '：' + "xxxxx" + '<br>'
            //         + "XXXXXX" + '：' + "xxxxx" + '<br>'
            //         + "XXXXXX" + '：' + "xxxxx" + '<br>'
            //         + "XXXXXX" + '：' + "xxxxx" + '<br>'
            //         + "XXXXXX" + '：' + "xxxxx" + '<br>'
            //         + "XXXXXX" + '：' + "xxxxx" + '<br>'
            //         + "XXXXXX" + '：' + "xxxxx" + '<br>';
            // }
        },

        // tooltip: {
        //     show: true
        // },
        series: [ {
            name: 'Interested Movie test',
            type: 'wordCloud',
            sizeRange: [10, 75],
            rotationRange: [-90, 90],
            rotationStep: 45,
            gridSize: 2,
            shape: 'pentagon',
            maskImage: maskImage,
            drawOutOfBound: false,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    // fontSize : '38',
                    fontWeight : 'bold',
                    color: '#FFFF00',
                    shadowBlur: 10,  //阴影距离
                    shadowColor: '#333'  //阴影颜色
                    // shadowColor: '#FFFF00'  //阴影颜色
                }
            },
            data: data.sort(function (a, b) {
                return b.value  - a.value;
            })
        } ]
    };

    maskImage.onload = function () {
        option.series[0].maskImage
        myChart.setOption(option);
    }

    // maskImage.src = 'logo.png';
    maskImage.src = 'img/black_circle.jpg';

    window.onresize = function () {
        myChart.resize();
    }
    });
});