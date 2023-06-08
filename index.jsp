<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <style>
            .logo{
                font-size: 40px;
                color: aliceblue;
                margin-left: 30px;
                margin-top: 10px;
                font-family: Copperplate Gothic Light;
            }
            .regbutton{
                background-color: transparent;
                color: aliceblue;
                margin-left: 30px;
                font-size: 20px;
                font-family: Bahnschrift SemiBold;
                margin-top: 30px;
                border: transparent;
            }
            .back{
                background-color: transparent;
                color: aliceblue;
                font-size: 20px;
                font-family: Bahnschrift SemiBold;
                margin-top: 30px;
                margin-left: 30px;
                border: transparent;
            }
            .login{
                background-color: transparent;
                color: aliceblue;
                margin-left: 850px;
                font-size: 20px;
                font-family: Bahnschrift SemiBold;
                margin-top: 30px;
                border: transparent;
            }
            .head p{
                font-size: 35px;
                margin-left: 30px;
                margin-top: 20px;
                font-family: Segoe Print;
                color: aliceblue;
            }
            .img{
                margin-left: 120px;
            }
        </style>
    </head>

    <body style="background-color:black">
        <div style="display: flex;">
            <div class="logo">
                <p><b>MEDI+</b></p>
            </div>
            <div>
                <a href="#"><button class="login">HOME</button></a>
            </div>
            <div>
                <a href="login.jsp"><button class="regbutton">LOGIN</button></a>
            </div>
            <div>
                <a href=""><button class="back">CONTACT US</button></a>
            </div>
        </div>

        <div style="display: flex; margin-top: 80px; margin-left: 20px;">
            <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
                <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
                    The Two best physician of <br>them all - <br />
                  <span style="color: hsl(218, 81%, 75%)">Dr.Laugher & Dr.Sleep</span>
                </h1>
              </div>
            <div class="img">
                <img src="doc.jpg" height="350px" width="500px" >
            </div>

            
        </div>
    </body>
</html>