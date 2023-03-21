<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta http-equiv="x-ua-compatible" content="ie=edge" />
	<title>Material Design for Bootstrap</title>
	<!-- MDB icon -->
	<link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
	<!-- Google Fonts Roboto -->
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
	<!-- MDB -->
	<link rel="stylesheet" href="<?= BASE_ASSET ?>css/mdb.min.css" />
</head>

<style type="text/css">
	.divider:after,
	.divider:before {
		content: "";
		flex: 1;
		height: 1px;
		background: #eee;
	}

	.h-custom {
		height: calc(100% - 73px);
	}

	@media (max-width: 450px) {
		.h-custom {
			height: 100%;
		}
	}
</style>

<body>
	<!-- Start your project here-->
	<!-- <div class="container"> -->
		<section class="vh-100">
			<div class="container-fluid h-custom">
				<div class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-md-9 col-lg-6 col-xl-5">
						<!-- <img src="<?= BASE_ASSET ?>img/draw2.webp" class="img-fluid" alt="Sample image"> -->
						<img src="<?= BASE_ASSET ?>img/SiMenTel-biru.png" class="img-fluid" alt="Sample image">
					</div>
					<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
						<form>
							<div class="divider d-flex align-items-center my-4">
								<p class="text-center fw-bold mx-3 mb-0"><?= cclang('login'); ?> Administrator <?= get_option('site_name'); ?></p>
							</div>
							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="email" id="form3Example3" class="form-control form-control-lg" placeholder="Enter a valid email address" />
								<label class="form-label" for="form3Example3">Email address</label>
							</div>
							<!-- Password input -->
							<div class="form-outline mb-3">
								<input type="password" id="form3Example4" class="form-control form-control-lg" placeholder="Enter password" />
								<label class="form-label" for="form3Example4">Password</label>
							</div>
							<div class="text-center text-lg-start mt-4 pt-2">
								<button type="button" class="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
								<p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="#!" class="link-danger">Register</a></p>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
				<!-- Copyright -->
				<div class="text-white mb-3 mb-md-0">
					Copyright © <?= date('Y');?>. All rights reserved.
				</div>
				<!-- Copyright -->
			</div>
		</section>
	<!-- </div> -->
	<!-- End your project here-->

	<!-- MDB -->
	<script type="text/javascript" src="<?= BASE_ASSET ?>js/mdb.min.js"></script>
	<!-- Custom scripts -->
	<script type="text/javascript"></script>
</body>

</html>