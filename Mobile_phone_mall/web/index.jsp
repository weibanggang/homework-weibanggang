<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <title>Agency - Responsive Flat Admin Dashboard</title>
  <meta content="Admin Dashboard" name="description" />
  <meta content="ThemeDesign" name="author" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />

  <link rel="shortcut icon" href="assets/images/faviicon.png">

  <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
  <link href="assets/css/style.css" rel="stylesheet" type="text/css">

</head>


<body>

<!-- Begin page -->
<div class="accountbg"></div>
<div class="wrapper-page">

  <div class="card">
    <div class="card-body">

      <h3 class="text-center mt-0 m-b-15">
        <a href="index.jsp" class="logo logo-admin"><img src="assets/images/logo.png" height="30" alt="logo"></a>
      </h3>

      <h4 class="text-muted text-center font-18"><b>手 机 商 城 登 录 系 统</b></h4>

      <div class="p-3">
        <form class="form-horizontal m-t-20" >
          <div class="form-group row">
            <div class="col-12">
              <input class="form-control" type="text" required="" id="name" placeholder="用户名">
            </div>
          </div>

          <div class="form-group row">
            <div class="col-12">
              <input class="form-control" type="password" required="" id="pwd" placeholder="密码">
            </div>
          </div>


          <div class="form-group text-center row m-t-20">
            <div class="col-12">
              <button class="btn btn-info btn-block waves-effect waves-light" id="go" type="button">登录</button>
            </div>
          </div>

        </form>
      </div>

    </div>
  </div>
</div>



<!-- jQuery  -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/modernizr.min.js"></script>
<script src="assets/js/detect.js"></script>
<script src="assets/js/fastclick.js"></script>
<script src="assets/js/jquery.slimscroll.js"></script>
<script src="assets/js/jquery.blockUI.js"></script>
<script src="assets/js/waves.js"></script>
<script src="assets/js/jquery.nicescroll.js"></script>
<script src="assets/js/jquery.scrollTo.min.js"></script>

<!-- App js -->
<script src="assets/js/app.js"></script>
<script>
  $("#go").click(function () {
      $.ajax({
          type:"post",
          url:"/Adminsweb.do?action=login",
          data:{aname:$("#name").val(),apwd:$("#pwd").val()},
          success:function (data) {
              console.log(data);
            if(data.msg=="ok"){
                window.location.href="/jsp/Productsele.jsp";
            }else {
                alert(data.msg);
            }
          }
      })
  })
</script>
</body>
</html>