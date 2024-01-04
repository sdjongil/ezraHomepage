<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>save</title>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"
                integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
                crossorigin="anonymous"></script>
    </head>
    <body>
    <div>
    </div>
    <div>
        <form action="/member/save" method="post">
            <input type="text" name="memberEmail" placeholder="이메일" id="memberEmail" onblur="emailCheck()">
            <p id="check-result"></p>
            <input type="text" name="memberPassword" placeholder="비밀번호">
            <input type="text" name="memberName" placeholder="이름">
            <input type="text" name="memberAge" placeholder="나이">
            <input type="text" name="memberMobile" placeholder="전화번호">
            <input id="userId" type="text" placeholder="userId">
            <input type="submit" value="회원가입">
        </form>
    </div>
    </body>
<script>
    $(document).ready(function (){
        $('#userId').change(function (){
            var userId = $('#userId').val();
            $.ajax({
                async : true, //비동기라는 의미
                type : "post",
                data : {"userid" : userId},
                url : "/member/update",
                dataType : "text",
                success : function (data){
                    alert(data)
                },
                error : function(error){
                    alert("error", error)
                }
            })
        })
    })
    //이메일 입력값을 가져오고,
    // 입력값을 서버로 전송하고 똑같은 이메일이 있는지 체크한 후
    // 사용 가능 여부를 이메일 입력창 아래에 표시

    const emailCheck = () => {
        //사용자 입력값 받아오기
        const email = document.getElementById("memberEmail").value;
        //중복or가능 필드 변수 선언
        const checkResult = document.getElementById("check-result");
        // console.log("입력한 이메일", email);

        $.ajax({
            // 요청방식: post, url: "email-check", 데이터: 이메일
            type: "post",
            url: "/member/email-check",
            data: {
                "memberEmail": email
            },
            success: function(res) {
                if (res == "ok") {
                    checkResult.style.color = "green";
                    checkResult.innerHTML = "사용가능한 이메일";
                } else {
                    checkResult.style.color = "red";
                    checkResult.innerHTML = "이미 사용중인 이메일";
                }
            },
            error: function(err) {
                console.log("에러발생", err);
            }
        });
    }
</script>
</html>