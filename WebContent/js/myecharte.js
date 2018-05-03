function echarts_line() {
	// var salary_year = echarts.init(document.getElementById("salary_year"));
	var echarts_line = {
		tooltip : {
			trigger : 'axis',
			axisPointer : {
				type : 'cross'
			}
		},
		xAxis : {
			type : 'category',
			data : []//[ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' ]
		},
		yAxis : {
			type : 'value'
		},
		series : [ {
			data : [],//[ 820, 932, 901, 934, 1290, 1330, 1320 ],
			type : 'line'
		} ]
	};
	return echarts_line;
	// salary_year.setOption(sy);
}
function echarts_cir() {
	// var salary_circle =
	// echarts.init(document.getElementById("salary_circle"));
	var echarts_cir = {
		tooltip : {
			trigger : 'item',
			formatter : "{a} <br/>{b} : {c} ({d}%)"
		},
		legend : {
			type : 'scroll',
			orient : 'vertical',
			right : 10,
			top : 20,
			bottom : 20,
			data : []
		// ["z1", "z2", "z3", "z4"]
		// selected: data.selected
		},
		series : [ {
			name : '姓名',
			type : 'pie',
			center : [ '40%', '50%' ],
			data : [/*
					 * { name: "z1", value: 70 }, { name: "z2", value: 60 }, {
					 * name: "z3", value: "50" }, { name: "z4", value: 40 }
					 */],
			itemStyle : {
				emphasis : {
					shadowBlur : 10,
					shadowOffsetX : 0,
					shadowColor : 'rgba(0, 0, 0, 0.5)'
				}
			}
		} ]
	}
	return echarts_cir;
	// salary_circle.setOption(sc);
}
function spiltJson(json){
	var newJson ={};
	var key=[];
	var val=[];
	if(json.length==1){
		for(var k in json[0]){
			key.push(k);
			val.push(json[0][k]);
		}
		newJson.key=key;
		newJson.val=val;
	}else{
		for(var i in json){
			key.push(json[i].name);
		}
		newJson.key=key;
		newJson.val=val;
	}
	return newJson;
}