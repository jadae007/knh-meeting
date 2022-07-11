<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>KNH MEETING</title>
  <?php require_once('jsAndCss.php'); ?>
</head>
<body>
  <div class="container">
    <div class="row mt-5">
      <div class="col-3">
      </div>
      <div class="col-6">
        <div class="card" style="top: 50%;">
          <div class="card-body">
            <div class="row mb-5 text-center">
              <h2>KNH-Meeting </h2>
              <h5 class="text-muted">Login to continue.</h5>
            </div>
            <form method="POST" action="query/login" enctype="multipart/form-data" id="loginForm">
              <div class="form-outline mb-4">
                <input type="email" id="email" name="email" class="form-control" required/>
                <label class="form-label" for="email">Email address</label>
              </div>
              <div class="form-outline mb-4">
                <input type="password" id="password" name="password" class="form-control" required/>
                <label class="form-label" for="password">Password</label>
              </div>
              <button type="submit" class="btn btn-primary btn-block mb-4">Login</button>
            </form>
          </div>
        </div>
        <div class="col-3">
        </div>
      </div>
    </div>
  </div>
  <script src="ajax/index.js"></script>
</body>

</html>