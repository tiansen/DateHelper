function showuserchart() {
	$('.chart11').highcharts({                   //图表展示容器，与div的id保持一致
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: '男女比例'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    color: '#000000',
                    connectorColor: '#000000',
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },
        series: [{
            type: 'pie',
            name: '男女比例',
            data: [
                ['男',55],
                ['女',45]
            ]
        }]
    });
    $('.chart22').highcharts({                   //图表展示容器，与div的id保持一致
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: '城市分布'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    color: '#000',
                    connectorColor: '#000000',
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                }
            }
        },
        series: [{
            type: 'pie',
            name: '城市分布',
            data: [
                ['广州',15.0],
                ['上海',10.0],
                ['北京',25.0],
                ['深圳',17.0],
                ['武汉',18.0],
                ['厦门',12.0],
                ['others',3.0]
            ]
        }]
    });
    };
    
    function showchartcw() {
        $('.chartcw').highcharts({                   //图表展示容器，与div的id保持一致
            chart: {
                type: 'column'                         //指定图表的类型，默认是折线图（line）
            },
            title: {
                text: '营收'      //指定图表标题
            },
            xAxis: {
                categories: ['1月', '2月', '3月']   //指定x轴分组
            },
            yAxis: {
                title: {
                    text: '财务状况'                  //指定y轴的标题
                }
            },
            series: [{                                 //指定数据列
                name: '服务购买数量',                          //数据列名
                data: [300, 200, 250]                        //数据
            }, {
                name: '营收（单位：万元）',
                data: [70, 90, 60]
            }]
        });
    };
    
   