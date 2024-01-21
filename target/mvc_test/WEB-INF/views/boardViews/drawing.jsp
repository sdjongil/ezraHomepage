<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Tue Jan 02 2024 07:44:22 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="658e8234ef485db1d618dab2" data-wf-site="658e8233ef485db1d618da5a" lang="en">
<head>
    <meta charset="utf-8">
    <title>Projects | Ezra Folio</title>
    <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
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

<div id="top" class="section">
    <div class="main-container w-container">
        <div class="heading-wrap-contact">
            <div class="left-contact-heading">
                <h1 class="heading-contact">Please share your thoughts.</h1>
            </div>
            <img style="width: 8%;" src="${pageContext.request.contextPath}/resources/static/images/Arrow-Down-Layla-Portfolio-Template.svg" loading="lazy" alt="" class="arrow-contact">
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
        <div class="space-40 contact-space"></div>
        <div class="columns-contact w-row">
            <div style="display: inline-flex;">
                <div class="w-col w-col-2 pencilContorol"></div>
                <div id="canvas">
                    <div id="canvasBox" >
                        <div>
                            <div onclick="resetDraw()"class="tag">Clear all</div>
                            <div id="pencil" onclick="context.setTool(pencil)" class="tag">Pencil</div>
                            <div id="erasers" onclick="context.setTool(eraser)" class="tag">Eraser</div>
                            <div id="square" onclick="context.setTool(makeSquare)" class="tag">Rectangle</div>
                            <div id="circle" onclick="context.setTool(circle)" class="tag">Circle</div>
                            <canvas id="mypaint" width="650px" height="550px" ></canvas>
                        </div>
                        <div style="display: flex; justify-content: center; align-items: center;">
                            <div style="margin: 5px;">
                                펜굵기<input type="range" name="bold" min="1" max="30" value="1" id="pansize" onclick="myctx.lineWidth = this.value" />
                            </div>
                            <div style="margin: 5px;">
                                색상파레트 <input type="color" id="colorBar" />
                            </div>
                            <div style="margin: 5px;" id="colorSelector" onclick="myctx.strokeStyle=document.getElementById('colorBar').value" class="tag">확인
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="w-col w-col-4"></div>
    <div class="column-contact-form w-col w-col-6" >
        <div class="w-form">
            <form id="drawing-form" name="drawing-form" method="post" action="">
                <input type="text" class="input-underline w-input" maxlength="256" name="title" placeholder="Title">
                <textarea placeholder="Content" maxlength="5000"  name="content" class="input-underline text-area w-input"></textarea>
                <input type="submit" value="Submit" data-wait="Please wait..." class="cta big-submit w-button">

            </form>
        </div>
    </div>
</div>
</div>
</div>
<div class="space-120"></div>
<div id="footer-container"></div>

</body>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>

<style>
    #canvas {
        display: flex;
        justify-content: center;
    }

    #canvasBox {
        text-align: center;
    }
    #mypaint{
        border: 1px solid;
    }
    .tag{
        display: inline-flex;
        cursor: pointer;
    }
</style>
<script>
    let flag = false
    let squareSize = []
    let circleLocation = []
    let drawPan = document.getElementById("mypaint")
    let myctx = drawPan.getContext("2d")

    class Tool{
        mouseDown(){}
        mouseUp(){}
        mouseMove(){}
    }
    class Drawing{
        constructor(){
            this.tool = null
        }
        setTool(tool){
            this.tool = tool
        }

        mouseDown() {
            this.tool.mouseDown();
        }

        mouseMove() {
            this.tool.mouseMove();
        }

        mouseUp() {
            this.tool.mouseUp();
        }
    }
    class Pencil extends Tool{
        mouseDown(){
            myctx.beginPath()
            flag = true
        }
        mouseUp(){
            flag = false
        }
        mouseMove(){
            moveDraw()
        }
    }
    class Eraser extends Tool{
        mouseDown(){
            myctx.beginPath()
            flag = true
        }
        mouseUp(){
            flag = false
        }
        mouseMove(){
            doEraser()
        }
    }
    class MakeSquare extends Tool{
        mouseDown(){
            let rect = drawPan.getBoundingClientRect();
            squareSize.push(event.clientX - rect.left)
            squareSize.push(event.clientY - rect.top)
        }
        mouseUp(){
            let rect = drawPan.getBoundingClientRect();
            squareSize.push(event.clientX - rect.left)
            squareSize.push(event.clientY - rect.top)
            drawShape(...squareSize)
            squareSize = []
        }
        mouseMove(){}
    }
    class Circle extends Tool{
        mouseDown(){
            let rect = drawPan.getBoundingClientRect();
            circleLocation.push(event.clientX - rect.left)
            circleLocation.push(event.clientY - rect.top)
        }
        mouseUp(){
            let rect = drawPan.getBoundingClientRect();
            circleLocation.push(event.clientX - rect.left)
            circleLocation.push(event.clientY - rect.top)
            myctx.beginPath()
            let x1 = circleLocation[0]
            let y1 = circleLocation[1]
            let x2 = circleLocation[2]
            let y2 = circleLocation[3]
            circleLocation=[]
            let radiusX = (x2-x1)/2
            let radiusY =(y2-y1)/2
            let x = x1+((x2-x1)/2)
            let y = y1+((y2-y1)/2)
            if((x2-x1)<0){ // x음수
                radiusX = (x1-x2)/2
                x = x2+((x1-x2)/2)
            }
            if((y2-y1)<0){ // y음수
                radiusY =(y1-y2)/2
                y = y2+((y1-y2)/2)
            }
            drawCircle(x,y,radiusX, radiusY)
        }
        mouseMove(){ }
    }
    const context = new Drawing()
    const pencil = new Pencil()
    const eraser = new Eraser()
    const makeSquare = new MakeSquare()
    const circle = new Circle()


    context.setTool(pencil)
    drawPan.addEventListener('mouseup', ()=>{
        context.mouseUp()
    })
    drawPan.addEventListener('mousedown' , ()=>{
        context.mouseDown()
    })
    drawPan.addEventListener('mousemove', ()=>{
        context.mouseMove()
    })

    function drawShape(x1, y1, x2, y2) {
        myctx.strokeRect(x1, y1, x2 - x1, y2 - y1);
    }

    function moveDraw(){
        if(flag){
            let rect = drawPan.getBoundingClientRect();
            let x = event.clientX - rect.left;
            let y = event.clientY - rect.top;
            myctx.lineTo(x, y);
            myctx.stroke();
        }
    }
    function doEraser(){
        if(flag){
            let rect = drawPan.getBoundingClientRect();
            let x = event.clientX - rect.left;
            let y = event.clientY - rect.top;
            myctx.lineTo(x, y)
            myctx.clearRect(x-8,y-8,16,16)
        }
    }
    function resetDraw(){
        myctx.clearRect(0,0,drawPan.width,drawPan.height)
    }
    function drawCircle(x, y, radiusX, radiusY) {
        myctx.ellipse(x, y, radiusX, radiusY, 0, 0, Math.PI * 2); // 타원 그리기
        myctx.fillStyle = 'black'; // 채우기 색상 설정
        myctx.stroke();          // 원 윤곽선 그리기
    }
</script>

<%--<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>--%>
</html>