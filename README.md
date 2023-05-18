# Basic JSP
jsp에서 배운 내용을 응용해서 만들어보았다. 기초 단계에서 만든 것이기 때문에 구조적이라던가 코드 중복인것에 대해서는 미흡하다.

## loginModel_application
- css / java / jsp <br>
- 구조적으로 나뉘어져 있지 않고 javascript(script 요소) / jsp가 하나로 합쳐져 있다. 나중에 구조적으로 떼어놓았을때와 차이점을 느끼기 위해 나누지않고 하나의 페이지에서 돌아가게끔 만들어 놓았다.

## loginModel2_applicatoin
- css / javascript/ java / jsp <br>
- move.jsp: HandlerMapping 역할 (redirect는 따로 따로 있음)
- spring의 구조를 이해하기 위해 javascript / css / jsp / java를 나눔
- loginModel1_application이와는 다르게 확실히 자기자신의 역할을 하고 있고 구조적으로 눈에 더 잘 보인다. 직접 만들어보니 왜 각각 분리해서 만들어야 되는지 깨달았다.

## loginModel3_application
- css / javascript / java / jsp <br>
- main.jsp: HandlerMapping 역할
- loginModel2와 다르게 redirect를 여기저기 사용하지 않고 한 jsp페이지(main.jsp) 안에다 포함시켰다.

## BookServletEx
- 서블릿의 동작을 알아보기 위해 만든 예제
- kr.ac.jipark09: 
- kr.ac.jipark09.cmds: 
