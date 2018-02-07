$(function(){
    echartsCloud();//初始化echarts图
    interactive_func();
})

function echartsCloud(){
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    myChart.setOption({
        // title: {
        //     text: 'Interest Profiles Show via Tag Cloud',
        //     x: 'center'
        // },
        tooltip: {},
        series: [{
            type: 'wordCloud',  //类型为字符云
            shape:'smooth',  //平滑
            gridSize: 2, //网格尺寸
            size: ['80%', '80%'],
            autoSize: {
                enable: true,
                minSize: 6
            },
            maskImage: maskImage,
            // textRotation : [0, 45, 90, -45],
            // sizeRange : [ 50, 100 ],
            center: ['10%', '50%'],
            rotationRange: [46, 80], //旋转范围
            textStyle: {
                normal: {
                    fontFamily: 'sans-serif',
                    color: function () {
                        return 'rgb('
                            + [Math.round(Math.random() * 160),
                                Math.round(Math.random() * 160),
                                Math.round(Math.random() * 160)]
                                .join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 5,  //阴影距离
                    shadowColor: '#333'  //阴影颜色
                }
            },
            data: [],
        }]
    });

    maskImage.onload = function () {
        option.series[0].maskImage
        // myChart.setOption(option);

        // 异步加载数据
        //$.get('cloud.json', function(data){
        $.get('data/cloud2.json').done(function (data) {
            // 填入数据
            myChart.setOption({
                series: [{
                    data: data.dataCloud
                }]
            });
        });
    }

    // 异步加载数据
    //$.get('cloud.json', function(data){
    $.get('data/cloud2.json').done(function (data) {
        // 填入数据
        myChart.setOption({
            series: [{
                data: data.dataCloud
            }]
        });
    });
}
//交互函数
function interactive_func(){
    // alert("test");
}
