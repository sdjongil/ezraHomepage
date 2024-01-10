<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Fri Dec 29 2023 08:27:37 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="658e8234ef485db1d618dac1" data-wf-site="658e8233ef485db1d618da5a">
<head>
    <meta charset="utf-8">
    <title>Blog | Ezra Folio</title>
    <link href="${pageContext.request.contextPath}/resources/static/css/normalize.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/static/css/webflow.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/static/css/hans-wondrous-site-b14015.webflow.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/static/css/nav.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",
    ("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
    <link href="${pageContext.request.contextPath}/resources/static/images/favicon.svg" rel="shortcut icon" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/resources/static/images/webclip.svg" rel="apple-touch-icon">
</head>
<body>
<div id="navbar-container"></div>

<div id="top" class="section projects-a">
    <div class="main-container w-container">
        <h1 data-w-id="16cfbc97-3818-6f4c-23d0-e154a4034af6" style="-webkit-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0">
            Write Your Story</h1>
        <h2 data-w-id="16cfbc97-3818-6f4c-23d0-e154a4034af6" style="-webkit-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0">
            Share Your Thoughts</h2>
        <div class="right-contact-heading">
            <a href="/blog/projects" class="big-underline-link w-inline-block">
                <div>Projects</div>
                <div class="underline-master">
                    <div class="undeline-inside"></div>
                </div>
            </a>
            <a href="/blog/" class="big-underline-link w-inline-block">
                <div>Study Blog</div>
                <div class="underline-master">
                    <div class="undeline-inside"></div>
                </div>
            </a>
            <a href="/blog/drawing" class="big-underline-link w-inline-block">
                <div>Drawing Board</div>
                <div class="underline-master">
                    <div class="undeline-inside"></div>
                </div>
            </a>
        </div>
    </div>
</div>
<div class="w-commerce-commercelayoutcontainer main-container w-container">
    <form id="blogPost" action="/blog/postBlog" method="post" enctype="multipart/form-data">
        <div  class="w-commerce-commercecheckoutblockheader block-header">
            <label>
                <select id="selector" name="category"   class="input-underline w-input">
                    <option value="english_study">English Study</option>
                    <option value="casual_talk">Casual Talk</option>
                    <option value="tech_study">Tech Study</option>
                    <option value="algorithms">Algorithms</option>
                </select>
            </label>
            <label style="font-size: 28px">Writer : ${board.boardWriter}</label>
            <input type="hidden" id="nickName" name="nickName" value="${board.boardWriter}">
            <input type="hidden" id="boardId" name="boardId" value="${board.id}">
        </div>
        <div class="w-commerce-commercecheckoutblockcontent block-content">
            <label for="title" >Title: </label>
            <input class="input-underline w-input" type="text" id="title" name="title" required value="${board.boardTitle}">
        </div>
        <div class="w-commerce-commercecheckoutblockcontent block-content">
            <div id="drop-area" >
                <label for="content">Content:</label>
                <textarea class="input-underline w-input" id="content" name="content" rows="6"
                          cols="50" required>${board.boardContents}</textarea>
            </div>
        </div>
        <h4>You can drag image files into the content area.</h4>
        <h4>Disallowed files  : .exe, .bat, .cmd, .sh, .msi, .com, .js, .vbs, .ps1, .php, .py, .rb, .pl...</h4>
        <div>
            <input  class="cta big-submit w-button" type="submit" value="Submit">
        </div>
    </form>
</div>
<div class="space-120 projects-space" style="display: flex"></div>
<div id="footer-container"></div>

</body>
<script>
    var files = <%= request.getAttribute("filesJson")%>
    var fileNumber;
    if(!files == null){
        fileNumber = files.length;
    }
    var deleteFile = [];
    var fileNames = [];
    var filesList = [];
    if(files){
        files.forEach(function(file){
            let filename = file.fileName+"."+file.fileExtension;
            existing(filename)
        })
    }
    document.getElementById('drop-area').addEventListener('drop', function(e) {
        e.preventDefault();
        e.stopPropagation();
        let files = e.dataTransfer.files;
        handleFiles(files)
    });
    function handleFiles(files) {
        for (let i = 0; i < files.length; i++) {
            let file = files[i];
            if (!file.type.startsWith('image/') || fileNames.includes(file.name)) {
                continue;
            }
            fileNames.push(file.name);
            filesList.push(file);
            //이미지 div태그
            let imgWrap = document.createElement("div");
            imgWrap.classList.add("userPictureWrap");
            //파일 img태그
            let img = document.createElement("img");
            img.classList.add("userPicture");
            img.file = file;
            //이미지 취소 span태그
            let deleteIcon = document.createElement("span");
            deleteIcon.classList.add("deleteIcon");
            deleteIcon.innerText = "X";
            deleteIcon.onclick = function() {
                //이미지 div 태그 삭제
                imgWrap.remove();
                let index = fileNames.indexOf(file.name);
                if (index > -1) {
                    fileNames.splice(index, 1);
                    filesList.splice(index, 1);
                }
            };
            //이미지 div에 이미지와 취소버튼 추가
            imgWrap.appendChild(img);
            imgWrap.appendChild(deleteIcon);
            document.getElementById('drop-area').appendChild(imgWrap);

            let reader = new FileReader();
            reader.onload = function(e) {
                //데이터 url - Base64인코딩
                img.src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
    }
    document.getElementById('drop-area').addEventListener('dragover', function(e) {
        e.preventDefault();
        e.stopPropagation();
    });
    function existing(file) {
        //이미지 div태그
        let imgWrap = document.createElement("div");
        imgWrap.classList.add("userPictureWrap");
        //파일 img태그
        let img = document.createElement("img");
        img.classList.add("userPicture");
        img.src = "../../../resources/static/userFiles/"+file;
        //이미지 취소 span태그
        let deleteIcon = document.createElement("span");
        deleteIcon.classList.add("deleteIcon");
        deleteIcon.innerText = "X";
        deleteIcon.onclick = function() {
            //이미지 div 태그 삭제
            imgWrap.remove();
            deleteFile.push(file)
            fileNumber -= 1;
        };
        //이미지 div에 이미지와 취소버튼 추가
        imgWrap.appendChild(img);
        imgWrap.appendChild(deleteIcon);
        document.getElementById('drop-area').appendChild(imgWrap);
    }

    document.getElementById("blogPost").addEventListener("submit", function (event){
        event.preventDefault();
        var formData = new FormData();
        var title = document.getElementById('title').value;
        var content = document.getElementById('content').value;
        var nickName = document.getElementById('nickName').value;
        var category = document.getElementById('selector').value;
        var boardId = document.getElementById('boardId').value;
        var isFile;
        if(filesList.length===0 && fileNumber===0 ){
            isFile = "F"
        }else{
            isFile = "T"
        }
        if(filesList.length>0){
            filesList.forEach((file) => {
                formData.append('fileData', file);
            });
        }else{
            formData.append('fileData', null);
        }
        if(deleteFile.length>0){
            deleteFile.forEach((file)=>{
                formData.append('deleteFile', file);
            })
        }
        formData.append('isFile', isFile);
        formData.append('id',boardId);
        formData.append('boardTitle', title);
        formData.append('boardContents', content);
        formData.append('boardWriter', nickName);
        formData.append('category', category);

        fetch('/blog/updateBlog', {
            method: 'POST',
            body: formData,
        }).then(response => {
            if (!response.ok) {
                throw response;
            }
            return response.json();
        }).then(data => {
            alert("success");
            window.location.href = data.redirect;
        }).catch(error => {
            error.json().then(errorData => {
                alert("please try again");
                window.location.href = errorData.redirect;
            });
        });
    })
</script>
<style>
    #selector {
        font-size: 28px; /* 원하는 글자 크기로 조절 */
    }
    .input-underline option {
        font-size: 28px; /* 원하는 글자 크기로 조절 */
    }
    .userPictureWrap {
        position: relative;
        display: flex;
    }
    .userPicture{
    }

    .deleteIcon {
        position: absolute;
        text-align: center;
        top: 0;
        right: 0;
        font-weight: bold;
        background-color: #727272;
        color: white;
        width: 35px;
        cursor: pointer;
        padding: 2px;
        display: none;
    }

    .userPictureWrap:hover .deleteIcon {
        display: block;
    }
</style>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>

</html>
