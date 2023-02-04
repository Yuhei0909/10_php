<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

  <title>Login</title>
</head>

<body>

  <div class="container mt-5">
    <div class="row">
      <div class="col-md-4 offset-4">
        <div class="card">
          <div class="card-header">
            <h4>Login<a href="register.php" class="btn btn-outline-success float-end">Register</a></h4>
          </div>
          <div class="card-body">
            <table class="table table-bordered table-striped">
              <form action="login_act.php" method="POST">
                <div class="mb-3">
                  <label>Username</label>
                  <input type="text" name="username" class="form-control">
                </div>
                <div class="mb-3">
                  <label>Password</label>
                  <input type="text" name="password" class="form-control">
                </div>
                <div class="mb-3">
                  <button type="submit" class="btn btn-outline-primary">Login</button>
                </div>
              </form>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>

</html>