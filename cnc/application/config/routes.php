<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/*
  | -------------------------------------------------------------------------
  | URI ROUTING
  | -------------------------------------------------------------------------
  | This file lets you re-map URI requests to specific controller functions.
  |
  | Typically there is a one-to-one relationship between a URL string
  | and its corresponding controller class/method. The segments in a
  | URL normally follow this pattern:
  |
  |	example.com/class/method/id/
  |
  | In some instances, however, you may want to remap this relationship
  | so that a different class/function is called than the one
  | corresponding to the URL.
  |
  | Please see the user guide for complete details:
  |
  |	http://codeigniter.com/user_guide/general/routing.html
  |
  | -------------------------------------------------------------------------
  | RESERVED ROUTES
  | -------------------------------------------------------------------------
  |
  | There are three reserved routes:
  |
  |	$route['default_controller'] = 'welcome';
  |
  | This route indicates which controller class should be loaded if the
  | URI contains no data. In the above example, the "welcome" class
  | would be loaded.
  |
  |	$route['404_override'] = 'errors/page_missing';
  |
  | This route will tell the Router which controller/method to use if those
  | provided in the URL cannot be matched to a valid route.
  |
  |	$route['translate_uri_dashes'] = FALSE;
  |
  | This is not exactly a route, but allows you to automatically route
  | controller and method names that contain dashes. '-' isn't a valid
  | class or method name character, so it requires translation.
  | When you set this option to TRUE, it will replace ALL dashes in the
  | controller and method URI segments.
  |
  | Examples:	my-controller/index	-> my_controller/index
  |		my-controller/my-method	-> my_controller/my_method
 */
$route['default_controller'] = 'welcome';
//$route['default_controller'] = 'frontends/coming_soon';
//$route['404_override'] = '';
$route['404_override'] = 'errors/show_404';
$route['translate_uri_dashes'] = FALSE;

// frontend
$route['home'] = 'frontend/home/view';
$route['machining'] = 'frontend/machining/view';
$route['mold'] = 'frontend/mold/view';
$route['contact'] = 'frontend/contact/view';

// backend
$route['admin'] = 'admin/users/login';
$route['admin/manage-home/(:any)'] = "admin/ManageHome/$1";
$route['admin/manage-home/(:any)/(:any)'] = "admin/ManageHome/$1/$2";
$route['en/admin/manage-home/(:any)'] = "admin/ManageHome/$1";
$route['en/admin/manage-home/(:any)/(:any)'] = "admin/ManageHome/$1/$2";

$route['admin/manage-machining/(:any)'] = "admin/ManageMachining/$1";
$route['admin/manage-machining/(:any)/(:any)'] = "admin/ManageMachining/$1/$2";
$route['en/admin/manage-machining/(:any)'] = "admin/ManageMachining/$1";
$route['en/admin/manage-machining/(:any)/(:any)'] = "admin/ManageMachining/$1/$2";

$route['admin/manage-mold/(:any)'] = "admin/ManageMold/$1";
$route['admin/manage-mold/(:any)/(:any)'] = "admin/ManageMold/$1/$2";
$route['en/admin/manage-mold/(:any)'] = "admin/ManageMold/$1";
$route['en/admin/manage-mold/(:any)/(:any)'] = "admin/ManageMold/$1/$2";

$route['admin/manage-contact/(:any)'] = "admin/ManageContact/$1";
$route['admin/manage-contact/(:any)/(:any)'] = "admin/ManageContact/$1/$2";
$route['en/admin/manage-contact/(:any)'] = "admin/ManageContact/$1";
$route['en/admin/manage-contact/(:any)/(:any)'] = "admin/ManageContact/$1/$2";

// default
$route['(\w{2})/(.*)'] = '$2';
$route['(\w{2})'] = $route['default_controller'];


