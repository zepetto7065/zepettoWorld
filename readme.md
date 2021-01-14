# What is ZepettoWorld?

http://zepetto7065.cafe24.com/

안녕하세요 유상문입니다.
'zepetto world'는 개발 1년차때 만든 첫 개인 프로젝트 포트폴리오입니다. 당시 SK hynix portal 구축 프로젝트 진행 중 이였고 포털 프로젝트를 구축해보고자는 마음에 개발을 시작하게 되었습니다.
부족한 실력이니 양해 부탁드립니다.

## 메인화면 ##
<img src="https://user-images.githubusercontent.com/44112221/101510473-53a73000-39bd-11eb-96b3-91a6dbdc4f3d.png" width="90%"></img>

<img src="https://user-images.githubusercontent.com/44112221/101510615-7f2a1a80-39bd-11eb-89b1-b746322a3403.png" width="90%"></img>

해당 화면은 상단 첫번째 줄에 링크로 들어가시면 보이는 메인 화면입니다. 부트스트랩 템플릿을 이용해 디자인을 구축하였으며 간단한 rolling banner 를 script로 구현해보았습니다.
  						
    <div class="col-lg-6" onclick="javascript:archiPopup();">
      <div class="tab-content">
        <div id="popular" class="tab-pane active">
          <iframe src="/board/listallPortlet?boardType=f" frameborder="0" scrolling="no" style="width:100%;height:210px" ></iframe>
        </div>
      </div>
    </div>

각 게시판을 iframe을 이용하여 포틀릿 ( 메인 화면의 작은 할당 화면 )을 만들고 회원가입, 로그인이 기능으로 이동할 수 있는 버튼이 존재합니다.

<img width="1230" alt="스크린샷 2020-12-09 오전 1 33 51" src="https://user-images.githubusercontent.com/44112221/101512783-be0ca000-39be-11eb-872f-dfb308134851.png">
또한 tiles library를 사용하여 화면 분할을 하였습니다.

## 조직도 ##
<img width="923" alt="스크린샷 2020-12-09 오전 1 36 55" src="https://user-images.githubusercontent.com/44112221/101513022-06c45900-39bf-11eb-83c6-0c6ccd3354c5.png">

조직도는 jsTree library 를 이용하여 Tree 형태의 list를 출력하게 하였고 , iFrame을 이용하여 화면 분할 및 Ajax 비동기 통신을 이용한 Select를 구현하였습니다.

     $('#orgList').jstree(
        {
          'core' : {
            'data' : jsonData //jsonArray 데이터 출력
          },
          'plugins' : [ "themes", "json_data", "ui", "sort",
              "types", "crrm", "cookies", "search" ]

        }).bind("select_node.jstree", function(evt, data) {

      var nodeId = data.node.id;
      $("#userSelectList").empty(); // 남아있던 조직 사용자 list 초기화
      getOrgUserList(nodeId); // 선택된 nodeId에 따라 조직 사용자 리스트 출력


    });
    
## 로그인 ##

<img width="618" alt="스크린샷 2020-12-09 오전 1 40 24" src="https://user-images.githubusercontent.com/44112221/101513432-83efce00-39bf-11eb-8c40-c1da5a54ac25.png">

로그인 화면은 Naver & Kakao Open API를 연동하여 해당 서비스 서버에서 CallBack 함수를 받아와 Login 연동하였습니다.

    String clientId = "oa1OAdQlnUlDOlhkDTzi"; //애플리케이션 클라이언트 아이디값";
    String clientSecret = "비공개!";//애플리케이션 클라이언트 시크릿값";
    String code = request.getParameter("code");
    String state = request.getParameter("state");
    String redirectURI = URLEncoder.encode("http://zepettoworld.com/login/callback", "UTF-8");
    String apiURL;
    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
    apiURL += "client_id=" + clientId;
    apiURL += "&client_secret=" + clientSecret;
    apiURL += "&redirect_uri=" + redirectURI;
    
 다음과 같은 방식으로 해당 서비스 서버와 HTTP 서버 통신으로 해당 정보를 불러옵니다.
 
 ## Achitecture ##
 <img width="618" alt="스크린샷 2020-12-09 오전 1 40 24" src="https://user-images.githubusercontent.com/44112221/101514491-a7674880-39c0-11eb-97d2-9ba20174d1e6.png">

zepetto world System Architecture 입니다.
