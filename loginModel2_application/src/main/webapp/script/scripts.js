// 파라미터 값이 없으면 false;
function comparePw() {
	var obj = arguments[0]; // form을 던짐
	var pass = []; // 배열 => 길이가 변할 수 있음: 가변길이
	var pIdx = 0;
	
	for(var i = 0; i <obj.length; i++) {
		// password 타입인 애만 담는다.
		if(obj[i].type.toUpperCase() == "PASSWORD") {
			pass[pIdx] = obj[i];
			pIdx++;
		}
	}
	// password 타입과 re타입을 비교
	if(pass[0].value != pass[1].value) {
		alert("비밀번호가 일치하지 않습니다.");
		pass[0].focus();
		return false;
	}
	return true;
}

// join.jsp
function checkAndMove() {
	var obj = arguments[0];
	var flag = true;
	
	if(!emptyCheck(obj)) {
		flag = false;
	}
	
	// 3번째 파라미터가 안들어오면 false
	if(flag && arguments[2]) {
		flag = comparePw(obj);
		
	}
	
	if(flag) {
		justMove(obj, arguments[1]);
	}
}

// info.jsp
function doDelete() {
	if(window.confirm("탈퇴 하시겠습니까?")) {
		justMove(arguments[0], "doDelete");
	}
}

// loginSuccess.jsp
function logout() {
	if(window.confirm("로그아웃 하시겠습니까?")) {
		justMove(arguments[0], "goLogout");
	}
}

function justMove() {
	var obj = arguments[0];
	obj.cmd.value = arguments[1]; // 2번째 파라미터
	obj.action = "move.jsp";
	obj.method = "post";
	obj.submit();
}

function emptyCheck(obj) {
	var flag = true;
	
	for(var i = 0; flag && i < obj.length; i++) {
		// 타입을 뽑아왔을 때 소문자인지 대문자인지 보장을 못함. -> 대문자로 비교
		var type = obj[i].type.toUpperCase(); 
		
		// 사용자의 입력의 값만 받으면 돼서 버튼과 히든은 뺀다.
		if(type != "BUTTON" && type != "HIDDEN") {
			console.log(i + " : " + obj[i].type); // 자바스크립트 콘솔에 찍는다.
			
			if(obj[i].value.trim().length == 0) {
				alert("누락사항 : " + obj[i].title);
				obj[i].focus();
				flag = false;
			}
		}
	}
	return flag;
}