<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class MainAdminController extends BaseController
{
	public function index()
	{
		echo view('/admin/main_page');
	}
}
