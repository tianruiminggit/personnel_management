$(function() {
	var salary_year = echarts.init(document.getElementById("salary_year"));
	var sy = {
		tooltip: {
			trigger: 'axis',
			axisPointer: {
				type: 'cross'
			}
		},
		xAxis: {
			type: 'category',
			data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
		},
		yAxis: {
			type: 'value'
		},
		series: [{
			data: [820, 932, 901, 934, 1290, 1330, 1320],
			type: 'line'
		}]
	};
		salary_year.setOption(sy);
	
	var salary_circle = echarts.init(document.getElementById("salary_circle"));
	var sc = {
		tooltip: {
			trigger: 'item',
			formatter: "{a} <br/>{b} : {c} ({d}%)"
		},
		legend: {
			type: 'scroll',
			orient: 'vertical',
			right: 10,
			top: 20,
			bottom: 20,
			data: ["z1", "z2", "z3", "z4"],
			//					selected: data.selected
		},
		series: [{
			name: '姓名',
			type: 'pie',
			center: ['40%', '50%'],
			data: [{
				name: "z1",
				value: 70
			}, {
				name: "z2",
				value: 60
			}, {
				name: "z3",
				value: "50"
			}, {
				name: "z4",
				value: 40
			}],
			itemStyle: {
				emphasis: {
					shadowBlur: 10,
					shadowOffsetX: 0,
					shadowColor: 'rgba(0, 0, 0, 0.5)'
				}
			}
		}]
	};
	salary_circle.setOption(sc);
});