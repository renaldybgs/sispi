<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/upload', "Controller_EngineerUploadDoc@upload")->name('engineer.upload')

##ROUTING PAGE
##LOGIN
Route::get('/', 'Controller_Login@openLogin')->name('login');
Route::post('/login/auth', 'Controller_Login@authenticate');
Route::get('/logout', 'Controller_Login@logout');

Route::group(['middleware' => 'auth'], function(){
	##Login
	//Login Choose
	Route::get('/login/choose', 'Controller_Login@openChooseLogin');
	Route::get('/login/developer', 'Controller_Login@openDeveloperHub');

	##Admin
	Route::get('/admin', 'Controller_AdminUsers@openPage');	
	// Approval Documents
	Route::get('/admin/approval', 'Controller_AdminApprovalDocuments@openPage');
	Route::get('/admin/approval/table', 'Controller_adminApprovalDocuments@dataTable')->name('approve.table');
	Route::patch('/admin/approval/choose', 'Controller_AdminApprovalDocuments@approvalDocument');


	// Archive
	Route::get('/admin/archive', 'Controller_AdminArchiveDocuments@openPage');
	Route::get('/admin/archive/table', 'Controller_AdminArchiveDocuments@dataTable')->name('archive.table');

	//Export
	Route::get('/admin/export', 'Controller_AdminExportData@openPage');
	Route::get('/admin/export/mitra', 'Controller_AdminExportData@exportMitra');
	Route::get('/admin/export/product', 'Controller_AdminExportData@exportProduct');
	Route::get('/admin/export/project', 'Controller_AdminExportData@exportProject');
	Route::get('/admin/export/handover', 'Controller_AdminExportData@exportHandover');
	Route::get('/admin/export/pketerangan', 'Controller_AdminExportData@exportPKeterangan');
	Route::get('/admin/export/pstat', 'Controller_AdminExportData@exportPStatus');
	Route::get('/admin/export/ptype', 'Controller_AdminExportData@exportPType');
	Route::get('/admin/export/user', 'Controller_AdminExportData@exportUser');
	Route::get('/admin/export/ulevel', 'Controller_AdminExportData@exportULevel');
	Route::get('/admin/project/export', 'Controller_AdminListProjects@export');

	//Import
	Route::get('/admin/import/mitra', 'Controller_AdminImportData@importMitra');
	Route::get('/admin/import/product', 'Controller_AdminImportData@importProduct');
	Route::post('/admin/import/project', 'Controller_AdminExportData@store');
	Route::get('/admin/import/handover', 'Controller_AdminImportData@importHandover');
	Route::get('/admin/import/pketerangan', 'Controller_AdminImportData@importPKeterangan');
	Route::get('/admin/import/pstat', 'Controller_AdminImportData@importPStatus');
	Route::get('/admin/import/ptype', 'Controller_AdminImportData@importPType');
	Route::get('/admin/import/user', 'Controller_AdminImportData@importUser');
	Route::get('/admin/import/ulevel', 'Controller_AdminImportData@importULevel');

	//List Project admin NSICCS
	Route::get('/admin/projects', 'Controller_AdminListProjects@openPage');
	Route::get('/admin/projects/table', 'Controller_AdminListProjects@dataTable')->name('adminlistprojects.table');
	Route::get('/admin/projects/detail/{id}', 'Controller_AdminListProjects@detail')->name('adminlistprojects.detail');
	Route::get('/admin/projects/export', 'Controller_AdminListProjects@export');
	Route::get('/admin/projects/edit/{id}', 'Controller_AdminListProjects@editProject')->name('adminprojects.edit');
	Route::put('/admin/projects/update/{id}', 'Controller_AdminListProjects@updateProject')->name('adminprojects.update');
	Route::get('/admin/projects/delete/{id}', 'Controller_AdminListProjects@deleteProject')->name('adminprojects.delete');

		//List Project admin QRIS Spek
	Route::get('/admin/qrisspek', 'Controller_AdminListQrisspeks@openPage');
	Route::get('/admin/qrisspek/table', 'Controller_AdminListQrisspeks@dataTable')->name('adminlistqrisspeks.table');
	Route::get('/admin/qrisspek/detail/{id}', 'Controller_AdminListQrisspeks@detail')->name('adminlistqrisspeks.detail');
	Route::get('/admin/qrisspek/export', 'Controller_AdminListQrisspeks@export');
	Route::get('/admin/qrisspek/edit/{id}', 'Controller_AdminListQrisspeks@editQrisspeks')->name('adminqrisspeks.edit');
	Route::put('/admin/qrisspek/update/{id}', 'Controller_AdminListQrisspeks@updateQrisspeks')->name('adminqrisspeks.update');
	Route::get('/admin/qrisspek/delete/{id}', 'Controller_AdminListQrisspeks@deleteQrisspeks')->name('adminqrisspeks.delete');

			//List Project admin QRIS
	Route::get('/admin/qris', 'Controller_AdminListQris@openPage');
	Route::get('/admin/qris/table', 'Controller_AdminListQris@dataTable')->name('adminlistqris.table');
	Route::get('/admin/qris/detail/{id}', 'Controller_AdminListQris@detail')->name('adminlistqris.detail');
	Route::get('/admin/qris/export', 'Controller_AdminListQris@export');
	Route::get('/admin/qris/edit/{id}', 'Controller_AdminListQris@editQris')->name('adminqris.edit');
	Route::put('/admin/qris/update/{id}', 'Controller_AdminListQris@updateQris')->name('adminqris.update');
	Route::get('/admin/qris/delete/{id}', 'Controller_AdminListQris@deleteQris')->name('adminqris.delete');

		//List Project admin IPKC
	Route::get('/admin/ipkc', 'Controller_AdminListIpkc@openPage');
	Route::get('/admin/ipkc/table', 'Controller_AdminListIpkc@dataTable')->name('adminlistipkc.table');
	Route::get('/admin/ipkc/detail/{id}', 'Controller_AdminListIpkc@detail')->name('adminlistipkc.detail');
	Route::get('/admin/ipkc/export', 'Controller_AdminListIpkc@export');
	Route::get('/admin/ipkc/edit/{id}', 'Controller_AdminListIpkc@editIpkc')->name('adminlistipkc.edit');
	Route::put('/admin/ipkc/update/{id}', 'Controller_AdminListIpkc@updateIpkc')->name('adminlistipkc.update');
	Route::get('/admin/ipkc/delete/{id}', 'Controller_AdminListIpkc@deleteIpkc')->name('adminlistipkc.delete');

	//List Project admin QRIS
	Route::get('/admin/surat', 'Controller_AdminListSurat@openPage');
	Route::get('/admin/surat/table', 'Controller_AdminListSurat@dataTable')->name('adminlistsurat.table');
	Route::get('/admin/surat/detail/{id}', 'Controller_AdminListSurat@detail')->name('adminlistsurat.detail');
	Route::get('/admin/surat/export', 'Controller_AdminListSurat@export');
	Route::get('/admin/surat/edit/{id}', 'Controller_AdminListSurat@editQris')->name('adminsurat.edit');
	Route::put('/admin/surat/update/{id}', 'Controller_AdminListSurat@updateQris')->name('adminsurat.update');
	Route::get('/admin/surat/delete/{id}', 'Controller_AdminListSurat@deleteQris')->name('adminsurat.delete');

	//List Project Perlindungan Konsumen
	Route::get('/admin/perlindungan', 'Controller_AdminPerlindungan@openPage');
	Route::get('/admin/perlindungan/table', 'Controller_AdminPerlindungan@dataTable')->name('adminperlindungan.table');
	Route::get('/admin/perlindungan/detail/{id}', 'Controller_AdminPerlindungan@detail')->name('adminperlindungan.detail');
	Route::get('/admin/perlindungan/export', 'Controller_AdminPerlindungan@export');
	Route::get('/admin/perlindungan/edit/{id}', 'Controller_AdminPerlindungan@editPerlindungan')->name('adminperlindungan.edit');
	Route::put('/admin/perlindungan/update/{id}', 'Controller_AdminPerlindungan@updatePerlindungan')->name('adminperlindungan.update');
	Route::get('/admin/perlindungan/delete/{id}', 'Controller_AdminPerlindungan@deletePerlindungan')->name('adminperlindungan.delete');

	//List Penomoran Surat
	Route::get('/admin/surat', 'Controller_AdminListSurat@openPage');
	Route::get('/admin/surat/table', 'Controller_AdminListSurat@dataTable')->name('adminlistsurat.table');
	Route::get('/admin/surat/detail/{id}', 'Controller_AdminListSurat@detail')->name('adminlistsurat.detail');
	Route::get('/admin/surat/export', 'Controller_AdminListSurat@export');
	Route::get('/admin/surat/edit/{id}', 'Controller_AdminListSurat@editSurat')->name('adminsurat.edit');
	Route::put('/admin/surat/update/{id}', 'Controller_AdminListSurat@updateSurat')->name('adminsurat.update');
	Route::get('/admin/surat/delete/{id}', 'Controller_AdminListSurat@deleteSurat')->name('adminsurat.delete');

		//List Penomoran Surat PJA
	Route::get('/admin/suratpja', 'Controller_AdminListSuratPja@openPage');
	Route::get('/admin/suratpja/table', 'Controller_AdminListSuratPja@dataTable')->name('adminlistsuratpja.table');
	Route::get('/admin/suratpja/detail/{id}', 'Controller_AdminListSuratPja@detail')->name('adminlistsuratpja.detail');
	Route::get('/admin/suratpja/export', 'Controller_AdminListSuratPja@export');
	Route::get('/admin/suratpja/edit/{id}', 'Controller_AdminListSuratPja@editSuratPja')->name('adminsuratpja.edit');
	Route::put('/admin/suratpja/update/{id}', 'Controller_AdminListSuratPja@updateSuratPja')->name('adminsuratpja.update');
	Route::get('/admin/suratpja/delete/{id}', 'Controller_AdminListSuratPja@deleteSuratPja')->name('adminsuratpja.delete');


	// Mitra
	Route::get('/admin/anggota', 'Controller_AdminMitra@openPage')->name('mitra.open');
	Route::get('/admin/anggota/table', 'Controller_AdminMitra@dataTable')->name('mitra.table');
	Route::post('/admin/submitanggota', 'Controller_AdminMitra@store')->name('mitra.store');
	Route::get('/admin/delanggota/{id}', 'Controller_AdminMitra@destroy');
	Route::get('/admin/createanggota', 'Controller_AdminMitra@create')->name('mitra.create');
	Route::get('/admin/editanggota/{id}', 'Controller_AdminMitra@edit')->name('mitra.edit');
	Route::put('/admin/updateanggota/{id}', 'Controller_AdminMitra@update')->name('mitra.update');


	// CA
	Route::get('/admin/ca', 'Controller_AdminCA@openPage')->name('ca.open');
	Route::get('/admin/ca/table', 'Controller_AdminCA@dataTable')->name('ca.table');
	Route::post('/admin/submitca', 'Controller_AdminCA@store')->name('ca.store');
	Route::get('/admin/delca/{id}', 'Controller_AdminCA@destroy');
	Route::get('/admin/createca', 'Controller_AdminCA@create')->name('ca.create');
	Route::get('/admin/editca/{id}', 'Controller_AdminCA@edit')->name('ca.edit');
	Route::put('/admin/updateca/{id}', 'Controller_AdminCA@update')->name('ca.update');

	// Product
	Route::get('/admin/products', 'Controller_AdminProducts@openPage');
	Route::get('/admin/products/table', 'Controller_AdminProducts@dataTable')->name('products.table');
	Route::post('/admin/submitproduct', 'Controller_AdminProducts@store')->name('products.store');
	Route::get('/admin/delproduct/{id}', 'Controller_AdminProducts@destroy');
	Route::get('/admin/createproduct', 'Controller_AdminProducts@create')->name('products.create');
	Route::get('/admin/editproduct/{id}', 'Controller_AdminProducts@edit')->name('products.edit');
	Route::put('/admin/updateproduct/{id}', 'Controller_AdminProducts@update')->name('products.update');

	// Home Admin
	Route::get('/admin/home', 'Controller_AdminHome@openAllDataPage');
	Route::post('/admin/home/yearly', 'Controller_AdminHome@openFilteredDataPage');

	// Search Doc
	Route::get('/admin/searchdocs', 'Controller_AdminSearchDocuments@openPage');

	// User
	Route::get('/admin/users', 'Controller_AdminUsers@openPage');
	Route::get('/admin/users/table', 'Controller_AdminUsers@dataTable')->name('users.table');
	Route::post('/admin/submituser', 'Controller_AdminUsers@store')->name('users.store');
	Route::get('/admin/deluser/{id}', 'Controller_AdminUsers@destroy');
	Route::get('/admin/createuser', 'Controller_AdminUsers@create')->name('users.create');
	Route::get('/admin/edituser/{id}', 'Controller_AdminUsers@edit')->name('users.edit');
	Route::put('/admin/updateuser/{id}', 'Controller_AdminUsers@update')->name('users.update');

	##Eksekutif
	Route::get('/eksekutif/home', 'Controller_AdminHome@openAllDataPage');
	Route::get('/eksekutif/projects', 'Controller_AdminListProjects@openPage');
	Route::get('/eksekutif/qrisspek', 'Controller_AdminListQrisspeks@openPage');
	Route::get('/eksekutif/qris', 'Controller_AdminListQris@openPage');
	Route::get('/eksekutif/ipkc', 'Controller_AdminListIpkc@openPage');
	Route::get('/eksekutif/anggota', 'Controller_AdminMitra@openPage')->name('mitra.open');
	Route::get('/eksekutif/ca', 'Controller_AdminCA@openPage')->name('ca.open');

	// Engineer Assign NSICCS
	Route::get('/engineer/assign', 'Controller_EngineerAddProjects@openPage');
	Route::post('/engineer/newproject', 'Controller_EngineerAddProjects@storeNew');

	// Engineer Assign QRIS
	Route::get('/engineer/assignqris', 'Controller_EngineerAddQris@openPage');
	Route::post('/engineer/newprojectqris', 'Controller_EngineerAddQris@storeNew');

	// Engineer Assign Surat
	Route::get('/engineer/assignsurat', 'Controller_EngineerAddSurats@openPage');
	Route::post('/engineer/newprojectsurat', 'Controller_EngineerAddSurats@storeNew');

		// Engineer Assign Surat PJA
	Route::get('/engineer/assignsuratpja', 'Controller_EngineerAddSuratPjas@openPage');
	Route::post('/engineer/newprojectsuratpja', 'Controller_EngineerAddSuratPjas@storeNewPja');

	// Engineer Assign QRIS Spek
	Route::get('/engineer/assignqrisspek', 'Controller_EngineerAddQrisspeks@openPage');
	Route::post('/engineer/newprojectqrisspek', 'Controller_EngineerAddQrisspeks@storeNew');

	// Engineer Assign IPKC
	Route::get('/engineer/assignipkc', 'Controller_EngineerAddIpkc@openPage');
	Route::post('/engineer/newprojectipkc', 'Controller_EngineerAddIpkc@storeNew');

	##Engineer
	Route::get('/engineer', 'Controller_EngineerYourProjects@openPage');
	// Doc Tools
	Route::get('/engineer/doctools', 'Controller_EngineerDocumentsTools@openPage');

	// Handovered Project
	Route::get('/engineer/handover', 'Controller_EngineerHandoverProjects@openPage');
	Route::get('/engineer/handover/table', 'Controller_EngineerHandoverProjects@dataTable')->name('handover.table');
	Route::patch('/engineer/handover/changestat', 'Controller_EngineerHandoverProjects@changeStatus');
	Route::patch('/engineer/handover/done', 'Controller_EngineerHandoverProjects@handoverDone');

	Route::get('/engineer/historyhover', 'Controller_EngineerHistoryHandover@openPage');
	Route::get('/engineer/historyhover/table', 'Controller_EngineerHistoryHandover@dataTable')->name('historyhover.table');

	//List Project enginner NSICCS
	Route::get('/engineer/listprojects', 'Controller_EngineerListProjects@openPage');
	Route::get('/engineer/listprojects/table', 'Controller_EngineerListProjects@dataTable')->name('engineerlistprojects.table');
	Route::get('/engineer/listprojects/detail/{id}', 'Controller_EngineerListProjects@detail')->name('engineerlistprojects.detail');


	//List Project enginner QRIS
	Route::get('/engineer/listqris', 'Controller_EngineerListQris@openPage');
	Route::get('/engineer/listqris/table', 'Controller_EngineerListQris@dataTable')->name('engineerlistqris.table');
	Route::get('/engineer/listqris/detail/{id}', 'Controller_EngineerListQris@detail')->name('engineerlistqris.detail');

	//List Project enginner QRIS Spek
	Route::get('/engineer/listqrisspek', 'Controller_EngineerListQrisspeks@openPage');
	Route::get('/engineer/listqrisspek/table', 'Controller_EngineerListQrisspeks@dataTable')->name('engineerlistqrisspek.table');
	Route::get('/engineer/listqrisspek/detail/{id}', 'Controller_EngineerListQrisspeks@detail')->name('engineerlistqrisspek.detail');

	//List Project enginner IPKC
	Route::get('/engineer/listipkc', 'Controller_EngineerListIpkc@openPage');
	Route::get('/engineer/listipkc/table', 'Controller_EngineerListIpkc@dataTable')->name('engineerlistipkc.table');
	Route::get('/engineer/listipkc/detail/{id}', 'Controller_EngineerListIpkc@detail')->name('engineerlistipkc.detail');

	// Search Doc
	Route::get('/engineer/searchdocs', 'Controller_EngineerSearchDocuments@openPage');

	// Own Project NSICCS
	Route::get('/engineer/projects', 'Controller_EngineerYourProjects@openPage');
	Route::get('/engineer/projects/table', 'Controller_EngineerYourProjects@dataTable')->name('projects.table');
	Route::patch('/engineer/projects/changestat', 'Controller_EngineerYourProjects@changeStatus');
	Route::get('/engineer/projects/editprogress/{id}', 'Controller_EngineerYourProjects@editPBN')->name('progress.edit');
	Route::put('/engineer/projects/updateprogress/{id}', 'Controller_EngineerYourProjects@updatePBN')->name('progress.update');
	Route::get('/engineer/projects/editpic/{id}', 'Controller_EngineerYourProjects@editBussinessPIC')->name('pic.edit');
	Route::put('/engineer/projects/updatepic/{id}', 'Controller_EngineerYourProjects@updateBussinessPIC')->name('pic.update');
	Route::get('/engineer/approval/notes/{id}', 'Controller_EngineerYourProjects@notes')->name('keterangan.notes');

	Route::get('/engineer/history', 'Controller_EngineerHistoryProjects@openPage');
	Route::get('/engineer/history/table', 'Controller_EngineerHistoryProjects@dataTable')->name('history.table');

	Route::get('engineer/projectdir/{id}', 'Conttoller_Engineer@setProjectDirectory')->name('project.dir');

	// Own Project QRIS
	Route::get('/engineer/qris', 'Controller_EngineerYourQris@openPage');
	Route::get('/engineer/qris/table', 'Controller_EngineerYourQris@dataTable')->name('qris.table');
	Route::patch('/engineer/qris/changestat', 'Controller_EngineerYourQris@changeStatus');
	Route::get('/engineer/qris/editprogress/{id}', 'Controller_EngineerYourQris@editPBN')->name('progressqris.edit');
	Route::put('/engineer/qris/updateprogress/{id}', 'Controller_EngineerYourQris@updatePBN')->name('progressqris.update');
	Route::get('/engineer/qris/editpic/{id}', 'Controller_EngineerYourQris@editBussinessPIC')->name('pic.edit');
	Route::put('/engineer/qris/updatepic/{id}', 'Controller_EngineerYourQris@updateBussinessPIC')->name('pic.update');
	Route::get('/engineer/approval/notes/{id}', 'Controller_EngineerYourQris@notes')->name('keterangan.notes');

	Route::get('/engineer/historyqris', 'Controller_EngineerHistoryQris@openPage');
	Route::get('/engineer/historyqris/table', 'Controller_EngineerHistoryQris@dataTable')->name('historyqris.table');

	Route::get('engineer/projectdir/{id}', 'Conttoller_Engineer@setProjectDirectory')->name('project.dir');

	// Own Project Surat
	Route::get('/engineer/surat', 'Controller_EngineerYourSurat@openPage');
	Route::get('/engineer/surat/table', 'Controller_EngineerYourSurat@dataTable')->name('surat.table');
	Route::get('/engineer/surat/editprogress/{id}', 'Controller_EngineerYourSurat@editPenomoran')->name('progresssurat.edit');
	Route::put('/engineer/surat/updateprogress/{id}', 'Controller_EngineerYourSurat@updatePenomoran')->name('progresssurat.update');
	Route::patch('/engineer/surat/changestat', 'Controller_EngineerYourSurat@changeStatus');

	// Own Project Surat PJA
	Route::get('/engineer/suratpja', 'Controller_EngineerYourSuratPja@openPage');
	Route::get('/engineer/suratpja/table', 'Controller_EngineerYourSuratPja@dataTable')->name('suratpja.table');
	Route::get('/engineer/suratpja/editprogress/{id}', 'Controller_EngineerYourSuratPja@editPenomoran')->name('progresssuratpja.edit');
	Route::put('/engineer/suratpja/updateprogress/{id}', 'Controller_EngineerYourSuratPja@updatePenomoran')->name('progresssuratpja.update');
	Route::patch('/engineer/suratpja/changestat', 'Controller_EngineerYourSuratPja@changeStatus');

	// Own Project QRIS Spek
	Route::get('/engineer/qrisspek', 'Controller_EngineerYourQrisspeks@openPage');
	Route::get('/engineer/qrisspek/table', 'Controller_EngineerYourQrisspeks@dataTable')->name('qrisspek.table');
	Route::patch('/engineer/qrisspek/changestat', 'Controller_EngineerYourQrisspeks@changeStatus');
	Route::get('/engineer/qrisspek/editprogress/{id}', 'Controller_EngineerYourQrisspeks@editPBN')->name('progressqrisspek.edit');
	Route::put('/engineer/qrisspek/updateprogress/{id}', 'Controller_EngineerYourQrisspeks@updatePBN')->name('progressqrisspek.update');
	Route::get('/engineer/qrisspek/editpic/{id}', 'Controller_EngineerYourQrisspeks@editBussinessPIC')->name('pic.edit');
	Route::put('/engineer/qrisspek/updatepic/{id}', 'Controller_EngineerYourQrisspeks@updateBussinessPIC')->name('pic.update');
	Route::get('/engineer/approval/notes/{id}', 'Controller_EngineerYourQrisspeks@notes')->name('keterangan.notes');

	Route::get('/engineer/historyqrisspek', 'Controller_EngineerHistoryQrisspeks@openPage');
	Route::get('/engineer/historyqrisspek/table', 'Controller_EngineerHistoryQrisspeks@dataTable')->name('historyqrisspek.table');

	Route::get('engineer/projectdir/{id}', 'Conttoller_Engineer@setProjectDirectory')->name('project.dir');

	// Own Project IPKC
	Route::get('/engineer/ipkc', 'Controller_EngineerYourIpkc@openPage');
	Route::get('/engineer/ipkc/table', 'Controller_EngineerYourIpkc@dataTable')->name('ipkc.table');
	Route::patch('/engineer/ipkc/changestat', 'Controller_EngineerYourIpkc@changeStatus');
	Route::get('/engineer/ipkc/editprogress/{id}', 'Controller_EngineerYourIpkc@editPBN')->name('progressipkc.edit');
	Route::put('/engineer/ipkc/updateprogress/{id}', 'Controller_EngineerYourIpkc@updatePBN')->name('progressipkc.update');
	Route::get('/engineer/ipkc/editpic/{id}', 'Controller_EngineerYourIpkc@editBussinessPIC')->name('pic.edit');
	Route::put('/engineer/ipkc/updatepic/{id}', 'Controller_EngineerYourIpkc@updateBussinessPIC')->name('pic.update');
	Route::get('/engineer/approval/notes/{id}', 'Controller_EngineerYourIpkc@notes')->name('keterangan.notes');

	Route::get('/engineer/historyipkc', 'Controller_EngineerHistoryIpkc@openPage');
	Route::get('/engineer/historyipkc/table', 'Controller_EngineerHistoryIpkc@dataTable')->name('historyipkc.table');

	Route::get('engineer/projectdir/{id}', 'Conttoller_Engineer@setProjectDirectory')->name('project.dir');

	//Upload & Download Document
	Route::get('/engineer/upload/{id}', "Controller_EngineerUploadDocument@openPage")->name('upload.open');
	Route::post('/engineer/upload', "Controller_EngineerUploadDocument@upload");
	Route::get('/engineer/download/{id}', "Controller_EngineerUploadDocument@download");
	##GUEST
	Route::get('/guest', 'Controller_GuestSearchDocuments@openPage');
	Route::get('/guest/searchdocs', 'Controller_GuestSearchDocuments@openPage');

	##Manager
	Route::get('/manager', 'Controller_ManagerHome@openAllDataPage');
	// Approval Project
	Route::get('/manager/approval', 'Controller_ManagerApprovalProjects@openPage');
	Route::get('/manager/approval/table', 'Controller_ManagerApprovalProjects@dataTable')->name('approval.table');
	Route::patch('/manager/approval/choose', 'Controller_ManagerApprovalProjects@approvalProject');

	// Assign Project
	Route::get('/manager/assign', 'Controller_ManagerAssignProjects@openPage');
	Route::get('/manager/handover/project/{id}', 'Controller_ManagerAssignProjects@fillProject');
	Route::get('/manager/handover/pic/{id}', 'Controller_ManagerAssignProjects@fillNewPIC');
	Route::post('/manager/newproject', 'Controller_ManagerAssignProjects@storeNew');
	Route::post('/manager/newhandover', 'Controller_ManagerAssignProjects@storeHandover');

	// Home
	Route::get('/manager/home', 'Controller_ManagerHome@openAllDataPage');
	Route::post('/manager/home/yearly', 'Controller_ManagerHome@openFilteredDataPage');

	// List Project
	Route::get('/manager/projects', 'Controller_ManagerListProjects@openPage');
	// Route::post('/manager/projects/table', 'Controller_ManagerListProjects@dataTable')->name('listprojects.table');
	Route::get('/manager/projects/table', 'Controller_ManagerListProjects@dataTable')->name('listprojects.table');
	Route::get('/manager/projects/export', 'Controller_ManagerListProjects@export');
	Route::get('/manager/projects/detail/{id}', 'Controller_ManagerListProjects@detail')->name('listprojects.detail');
	Route::get('/manager/projects/edit/{id}', 'Controller_ManagerListProjects@editProject')->name('projects.edit');
	Route::put('/manager/projects/update/{id}', 'Controller_ManagerListProjects@updateProject')->name('projects.update');
	Route::get('/manager/projects/delete/{id}', 'Controller_ManagerListProjects@deleteProject')->name('projects.delete');

	// Search Doc
	Route::get('/manager/searchdocs', 'Controller_ManagerSearchDocuments@openPage');
	Route::get('/engineer/searchdocs/download/{id}', "Controller_EngineerUploadDocument@download");

	##TABLE
	Route::get('/searchdocs/table', 'Controller_ManagerSearchDocuments@dataTable')->name('searchdocs.table');
});

?>