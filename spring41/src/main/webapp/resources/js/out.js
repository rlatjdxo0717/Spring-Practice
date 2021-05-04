/**
 * 동적으로 처리할 기능을 정의하면됨.
 * 
 * 기능 정의 => function(함수), 메서드
 */
function add(x, y) { // 매개변수, 파라미터
	sum = x + y
	alert(sum + '최종 지불 금액을 더하는 처리함.');
	return sum
}

function minus(z) {
	if(z>= 500){
		z = z - 100
	}
	alert(z + '원 최종 지불 금액을 빼주는 처리함.');
}