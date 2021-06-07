<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class ForgotPassowrdController extends BaseController
{
	public function index()
	{
		echo view("forgot.php");
	}
}
