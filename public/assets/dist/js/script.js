console.log('script.js is in');

function getHandoverData(id){
	var elementPIC = document.getElementById(id);
	var picID = $(elementPIC).val();
	// console.log(picID);

	$('#nama_project2').find('option').not(':first').remove();
	$('#PIChandover').find('option').not(':first').remove();		

	$.ajax({
		url: '/manager/handover/project/'+picID,
		type: 'get',
		dataType: 'json',

		success: function(response){
			// console.log(response);
			var len = 0;
			if(response['data'].length != null){
				len = response['data'].length;
			}

			if(len > 0){
				//$('#nama_project2').empty();
				for (var i=0; i<len; i++){
					var id = response['data'][i].id;
					var name = response['data'][i].nama_project;

					$("#nama_project2").append("<option value='"+id+"'>"+name+"</option>");
				}
			}
		},

		error: function(xhr){
			Swal.fire({
				icon: 'error',
				toast:true,
				title: 'Oops...',
				text: 'Something went wrong!',
				timer: 4000,
				background: 'bisque'
			})
		}
	})

	$.ajax({
		url: '/manager/handover/pic/'+picID,
		type: 'get',
		dataType: 'json',

		success: function(response){
			// console.log(response);
			var len = 0;

			if(response['data'].length != null){
				len = response['data'].length;
			}

			if(len > 0){
				for(var a=0; a<len; a++){
					var id = response['data'][a].id;
					var name = response['data'][a].nama_user;

					var option = "<option value='"+id+"'>"+name+"</option>"; 

					$("#PIChandover").append(option);
				}
			}
		},

		error: function(xhr){
			Swal.fire({
				icon: 'error',
				toast:true,
				title: 'Oops...',
				text: 'Something went wrong!',
				timer: 4000,
				background: 'bisque'
			})
		}
	})
}

function deleteMitra(id){
	console.log(id);
	event.preventDefault();

	var idDel = id; 

	Swal.fire({
	  title: 'Yakin hapus data ini?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',
	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/admin/delanggota/'+idDel,
				type: 'get',
				data: {
					'_method': 'DELETE'
				},

				success: function(response){
					console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Data mitra berhasil dihapus',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top-end',
						timer:1500,
						timerProgressBar:true,
						background:'#a3ffa3'
					})
				},

				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Oops...',
						text: 'Something went wrong!',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			Swal.fire({
				title:'Data mitra tetap tersimpan',
				icon:'info',
				toast:true,
				showConfirmButton:false,
				position:'top-end',
				grow:'row',
				timer:1500,
				timerProgressBar:true,
				background:'#B4F5F0'
			})
		}
	})
}

function deleteCa(id){
	console.log(id);
	event.preventDefault();

	var idDel = id; 

	Swal.fire({
	  title: 'Yakin hapus data ini?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',
	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/admin/delca/'+idDel,
				type: 'get',
				data: {
					'_method': 'DELETE'
				},

				success: function(response){
					console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Data CA berhasil dihapus',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top-end',
						timer:1500,
						timerProgressBar:true,
						background:'#a3ffa3'
					})
				},

				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Oops...',
						text: 'Something went wrong!',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			Swal.fire({
				title:'Data CA tetap tersimpan',
				icon:'info',
				toast:true,
				showConfirmButton:false,
				position:'top-end',
				grow:'row',
				timer:1500,
				timerProgressBar:true,
				background:'#B4F5F0'
			})
		}
	})
}

function deleteProduct(id){
	// console.log(id);
	event.preventDefault();

	var idDel = id;

	Swal.fire({
	  title: 'Yakin hapus data ini?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',
	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/admin/delproduct/'+idDel,
				type: 'get',
				data: {
					'_method': 'DELETE'
				},

				success: function(response){
					console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Data product berhasil dihapus',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top-end',
						timer:1500,
						timerProgressBar:true,
						background:'#a3ffa3'
					})
				},

				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Oops...',
						text: 'Something went wrong!',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			Swal.fire({
				title:'Data product tetap tersimpan',
				icon:'info',
				toast:true,
				showConfirmButton:false,
				position:'top-end',
				grow:'row',
				timer:1500,
				timerProgressBar:true,
				background:'#B4F5F0'
			})
		}
	})
}

function deleteUser(id){
	// console.log(id);
	console.log("deluser");
	event.preventDefault();

	var idDel = id;

	Swal.fire({
	  title: 'Yakin hapus data ini?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',
	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/admin/deluser/'+idDel,
				type: 'get',
				data: {
					'_method': 'DELETE'
				},

				success: function(response){
					// console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Data user berhasil dihapus',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top-end',
						timer:1500,
						timerProgressBar:true,
						background:'#a3ffa3'
					})
				},

				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Oops...',
						text: 'Something went wrong!',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			Swal.fire({
				title:'Data user tetap tersimpan',
				icon:'info',
				toast:true,
				showConfirmButton:false,
				position:'top-end',
				grow:'row',
				timer:1500,
				timerProgressBar:true,
				background:'#B4F5F0'
			})
		}
	})
}

function deleteProject(id){
	// console.log(id);
	event.preventDefault();
	const href = $(this).attr('href');

	var idDel = id;

	Swal.fire({
	  title: 'Yakin hapus data ini?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',

	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/admin/projects/delete/'+idDel,
				type: 'get',
				data: {
					'_method': 'DELETE'
				},

				success: function(response){
					console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Data user berhasil dihapus',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top-end',
						timer:1500,
						// timerProgressBar:true,
						background:'#a3ffa3'
					})
				},

				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Error',
						text: 'Project cant be deleted',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			Swal.fire({
				title:'Data user tetap tersimpan',
				icon:'info',
				toast:true,
				showConfirmButton:false,
				position:'top-end',
				grow:'row',
				timer:1500,
				// timerProgressBar:true,
				background:'#B4F5F0'
			})
		}
	})
}

function deleteQrisspeks(id){
	// console.log(id);
	event.preventDefault();
	const href = $(this).attr('href');

	var idDel = id;

	Swal.fire({
	  title: 'Yakin hapus data ini?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',

	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/admin/qrisspek/delete/'+idDel,
				type: 'get',
				data: {
					'_method': 'DELETE'
				},

				success: function(response){
					console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Data qris berhasil dihapus',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top-end',
						timer:1500,
						// timerProgressBar:true,
						background:'#a3ffa3'
					})
				},

				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Error',
						text: 'Project Qris cant be deleted',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			Swal.fire({
				title:'Data Qris tetap tersimpan',
				icon:'info',
				toast:true,
				showConfirmButton:false,
				position:'top-end',
				grow:'row',
				timer:1500,
				// timerProgressBar:true,
				background:'#B4F5F0'
			})
		}
	})
}

function deleteSurat(id){
	// console.log(id);
	event.preventDefault();
	const href = $(this).attr('href');

	var idDel = id;

	Swal.fire({
	  title: 'Yakin hapus data ini?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',

	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/admin/surat/delete/'+idDel,
				type: 'get',
				data: {
					'_method': 'DELETE'
				},

				success: function(response){
					console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Data Surat berhasil dihapus',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top-end',
						timer:1500,
						// timerProgressBar:true,
						background:'#a3ffa3'
					})
				},

				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Error',
						text: 'Project Surat cant be deleted',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			Swal.fire({
				title:'Data Surat tetap tersimpan',
				icon:'info',
				toast:true,
				showConfirmButton:false,
				position:'top-end',
				grow:'row',
				timer:1500,
				// timerProgressBar:true,
				background:'#B4F5F0'
			})
		}
	})
}

function deleteQris(id){
	// console.log(id);
	event.preventDefault();
	const href = $(this).attr('href');

	var idDel = id;

	Swal.fire({
	  title: 'Yakin hapus data ini?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',

	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/admin/qris/delete/'+idDel,
				type: 'get',
				data: {
					'_method': 'DELETE'
				},

				success: function(response){
					console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Data qris berhasil dihapus',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top-end',
						timer:1500,
						// timerProgressBar:true,
						background:'#a3ffa3'
					})
				},

				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Error',
						text: 'Project Qris cant be deleted',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			Swal.fire({
				title:'Data Qris tetap tersimpan',
				icon:'info',
				toast:true,
				showConfirmButton:false,
				position:'top-end',
				grow:'row',
				timer:1500,
				// timerProgressBar:true,
				background:'#B4F5F0'
			})
		}
	})
}

function deleteIpkc(id){
	// console.log(id);
	event.preventDefault();
	const href = $(this).attr('href');

	var idDel = id;

	Swal.fire({
	  title: 'Yakin hapus data ini?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',

	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/admin/ipkc/delete/'+idDel,
				type: 'get',
				data: {
					'_method': 'DELETE'
				},

				success: function(response){
					console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Data Ipkc berhasil dihapus',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top-end',
						timer:1500,
						// timerProgressBar:true,
						background:'#a3ffa3'
					})
				},

				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Error',
						text: 'Project Ipkc cant be deleted',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			Swal.fire({
				title:'Data Ipkc tetap tersimpan',
				icon:'info',
				toast:true,
				showConfirmButton:false,
				position:'top-end',
				grow:'row',
				timer:1500,
				// timerProgressBar:true,
				background:'#B4F5F0'
			})
		}
	})
}

function donehandover(id) {
	event.preventDefault();

	var idProj = id;

	Swal.fire({
	  title: 'Yakin handover sudah selesai?',
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',
	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/engineer/handover/done',
				type: 'POST',
				data: {
					'_method': 'PATCH',
					'id': idProj
				},

				success: function(response){
					// console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Handover telah selesai',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top-end',
						timer:1500,
						timerProgressBar:true,
						background:'#D4F1F4'
					})
			},

				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Oops...',
						text: 'Something went wrong!',
						timer: 4000,
						background: 'bisque'
					})
				}
			})

	} else if (result.dismiss === 'cancel') {
		Swal.fire({
			title:'Semangat handover',
			icon:'info',
			toast:true,
			showConfirmButton:false,
			position:'top-end',
			grow:'row',
			timer:1500,
			timerProgressBar:true,
			background:'#B4F5F0'
		})
	}
	})
};

function approveProject(id, title){
	// console.log("tes");
	event.preventDefault();

	var idProj = id;
	var titleButton = title;

		Swal.fire({
		  title: 'Yakin approve projek ini?',
		  icon: 'warning',
		  showCancelButton: true,
	  	  confirmButtonColor: '#3085d6',
	      cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya',
		  cancelButtonText: 'Tidak',
			}).then((result)=>{
				if(result.value){
				$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
					}
				});

				$.ajax({
					url: '/manager/approval/choose',
					type: 'POST',
					data: {
						'_method': 'PATCH',
						'id': idProj,
						'title': titleButton
					},

					success: function(response){
						console.log("success in");
						$('#table1').DataTable().ajax.reload();
						Swal.fire({
						title:'Project Approved',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top',
						timer:1500,
						timerProgressBar:true,
						background:'#D4F1F4'
						})
					},

					error: function(xhr){
						Swal.fire({
							icon: 'error',
							toast:true,
							title: 'Oops...',
							text: 'Something went wrong!',
							timer: 4000,
							background: 'bisque'
						})
					}
				})
			} else if (result.dismiss === 'cancel') {
				Swal.fire({
					title:'Projek menunggu approval',
					icon:'info',
					toast:true,
					showConfirmButton:false,
					position:'top',
					grow:'row',
					timer:1500,
					timerProgressBar:true,
					background:'#D2FBA4'
				})
			}
		})
};


function declineProject(id, title){
	// console.log("tes");
	event.preventDefault();

	var idProj = id;
	var titleButton = title;

	Swal.fire({
		  title: 'Yakin decline projek ini?',
		  icon: 'warning',
		  showCancelButton: true,
	  	  confirmButtonColor: '#3085d6',
	      cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya',
		  cancelButtonText: 'Tidak',
			}).then((result)=>{
				if(result.value){
					$.ajaxSetup({
						headers: {
							'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
						}
					});

					$.ajax({
						url: '/manager/approval/choose',
						type: 'POST',
						data: {
							'_method': 'PATCH',
							'id': idProj,
							'title': titleButton
						},

						success: function(response){
							console.log("success in");
							$('#table1').DataTable().ajax.reload();
							Swal.fire({
								title:'Project Declined',
								icon:'success',
								toast:true,
								showConfirmButton:false,
								position: 'top',
								timer:1500,
								timerProgressBar:true,
								background:'#D4F1F4'
								})
							},

						error: function(xhr){
							Swal.fire({
								icon: 'error',
								toast:true,
								title: 'Oops...',
								text: 'Something went wrong!',
								timer: 4000,
								background: 'bisque'
							})
						}
					})
				} else if (result.dismiss === 'cancel') {
					Swal.fire({
						title:'Projek menunggu approval',
						icon:'info',
						toast:true,
						showConfirmButton:false,
						position:'top',
						grow:'row',
						timer:1500,
						timerProgressBar:true,
						background:'#D2FBA4'
					})
				}
			})
};

function approveDocument(id, title){
	// console.log("tes");
	event.preventDefault();

	var idProj = id;
	var titleButton = title;

		Swal.fire({
		  title: 'Yakin approve dokumen projek ini?',
		  icon: 'warning',
		  text: 'Alasan:',
		  input: 'text',
		  showCancelButton: true,
	  	  confirmButtonColor: '#3085d6',
	      cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya',
		  cancelButtonText: 'Tidak',
			}).then((result)=>{
				if(result.value || result.value == ''){
				$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
					}
				});

				$.ajax({
					url: '/admin/approval/choose',
					type: 'POST',
					data: {
						'_method': 'PATCH',
						'id': idProj,
						'title': titleButton,
						'notes': result.value
					},

					success: function(response){
						console.log("success in");
						$('#table1').DataTable().ajax.reload();
						Swal.fire({
						title:'Document Approved',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top',
						timer:1500,
						timerProgressBar:true,
						background:'#D4F1F4'
						})
					},

					error: function(xhr){
						Swal.fire({
							icon: 'error',
							toast:true,
							title: 'Oops...',
							text: 'Something went wrong!',
							timer: 4000,
							background: 'bisque'
						})
					}
				})
			} else if (result.dismiss === 'cancel') {
				Swal.fire({
					title:'Dokumen projek menunggu approval',
					icon:'info',
					toast:true,
					showConfirmButton:false,
					position:'top',
					grow:'row',
					timer:1500,
					timerProgressBar:true,
					background:'#D2FBA4'
				})
			}
		})
};


function declineDocument(id, title){
	// console.log("tes");
	event.preventDefault();

	var idProj = id;
	var titleButton = title;

	Swal.fire({
		  title: 'Yakin decline dokumen project ini?',
		  icon: 'warning',
		  text: 'Alasan:',
		  input: 'text',
		  showCancelButton: true,
	  	  confirmButtonColor: '#3085d6',
	      cancelButtonColor: '#d33',
		  confirmButtonText: 'Ya',
		  cancelButtonText: 'Tidak',
			}).then((result)=>{
				if(result.value || result.value == ''){
					$.ajaxSetup({
						headers: {
							'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
						}
					});

					$.ajax({
						url: '/admin/approval/choose',
						type: 'POST',
						data: {
							'_method': 'PATCH',
							'id': idProj,
							'title': titleButton,
							'notes': result.value
						},

						success: function(response){
							console.log("success in");
							$('#table1').DataTable().ajax.reload();
							Swal.fire({
								title:'Project Declined',
								icon:'success',
								toast:true,
								showConfirmButton:false,
								position: 'top',
								timer:1500,
								timerProgressBar:true,
								background:'#D4F1F4'
								})
							},

						error: function(xhr){
							Swal.fire({
								icon: 'error',
								toast:true,
								title: 'Oops...',
								text: 'Something went wrong!',
								timer: 4000,
								background: 'bisque'
							})
						}
					})
				} else if (result.dismiss === 'cancel') {
					Swal.fire({
						title:'Project menunggu approval',
						icon:'info',
						toast:true,
						showConfirmButton:false,
						position:'top',
						grow:'row',
						timer:1500,
						timerProgressBar:true,
						background:'#D2FBA4'
					})
				}
			})
};

function changeStatusProject(id){
	// console.log("tes changeStatus");
	event.preventDefault();

	var idProj = id;
	var select = document.getElementById(idProj);
	var pstat = select.value;	

	Swal.fire({
	  title: 'Yakin ganti status? ( ͡° ͜ʖ ͡°)',
	  icon: 'success',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',
	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/engineer/projects/changestat',
				type: 'POST',
				data: {
					'_method': 'PATCH',
					'id': idProj,
					'pstat': pstat
				},

				success: function(response){
					// console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Status berhasil diganti',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top',
						timer:1500,
						timerProgressBar:true,
						background:'#D4F1F4'
					})
				},
				
				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Oops...',
						text: 'Something went wrong!',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				success: function(response){
					// console.log("masuk pak");
					$('#table1').DataTable().ajax.reload();
					Swal.fire({
						title:'Status tidak terganti',
						icon: 'warning',
						toast:true,
						showConfirmButton:false,
						position:'top',
						grow:'row',
						timer:1500,
						timerProgressBar:true,
						background:'#D2FBA4'
					})
				}
			})
		}
	})
};

function changeStatusIpkc(id){
	// console.log("tes changeStatus");
	event.preventDefault();

	var idProj = id;
	var select = document.getElementById(idProj);
	var pstat = select.value;	

	Swal.fire({
	  title: 'Yakin ganti status? ( ͡° ͜ʖ ͡°)',
	  icon: 'success',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',
	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/engineer/ipkc/changestat',
				type: 'POST',
				data: {
					'_method': 'PATCH',
					'id': idProj,
					'pstat': pstat
				},

				success: function(response){
					// console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Status berhasil diganti',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top',
						timer:1500,
						timerProgressBar:true,
						background:'#D4F1F4'
					})
				},
				
				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Oops...',
						text: 'Something went wrong!',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				success: function(response){
					// console.log("masuk pak");
					$('#table1').DataTable().ajax.reload();
					Swal.fire({
						title:'Status tidak terganti',
						icon: 'warning',
						toast:true,
						showConfirmButton:false,
						position:'top',
						grow:'row',
						timer:1500,
						timerProgressBar:true,
						background:'#D2FBA4'
					})
				}
			})
		}
	})
};

function changeStatusSurat(id){
	// console.log("tes changeStatus");
	event.preventDefault();

	var idProj = id;
	var select = document.getElementById(idProj);
	var pstat = select.value;	

	Swal.fire({
	  title: 'Yakin ganti status? ( ͡° ͜ʖ ͡°)',
	  icon: 'success',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',
	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/engineer/surat/changestat',
				type: 'POST',
				data: {
					'_method': 'PATCH',
					'id': idProj,
					'pstat': pstat
				},

				success: function(response){
					// console.log(response);
					$('#table1').DataTable();

					Swal.fire({
						title:'Status berhasil diganti',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top',
						timer:1500,
						timerProgressBar:true,
						background:'#D4F1F4'
					})
				},
				
				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Oops...',
						text: 'Something went wrong!',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				success: function(response){
					// console.log("masuk pak");
					$('#table1').DataTable();
					Swal.fire({
						title:'Status tidak terganti',
						icon: 'warning',
						toast:true,
						showConfirmButton:false,
						position:'top',
						grow:'row',
						timer:1500,
						timerProgressBar:true,
						background:'#D2FBA4'
					})
				}
			})
		}
	})
};

function changeStatusQris(id){
	// console.log("tes changeStatus");
	event.preventDefault();

	var idQris = id;
	var select = document.getElementById(idQris);
	var pstat = select.value;	

	Swal.fire({
	  title: 'Yakin ganti status? ( ͡° ͜ʖ ͡°)',
	  icon: 'success',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',
	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/engineer/qris/changestat',
				type: 'POST',
				data: {
					'_method': 'PATCH',
					'id': idQris,
					'pstat': pstat
				},

				success: function(response){
					// console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Status berhasil diganti',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top',
						timer:1500,
						timerProgressBar:true,
						background:'#D4F1F4'
					})
				},
				
				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Oops...',
						text: 'Something went wrong!',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				success: function(response){
					// console.log("masuk pak");
					$('#table1').DataTable().ajax.reload();
					Swal.fire({
						title:'Status tidak terganti',
						icon: 'warning',
						toast:true,
						showConfirmButton:false,
						position:'top',
						grow:'row',
						timer:1500,
						timerProgressBar:true,
						background:'#D2FBA4'
					})
				}
			})
		}
	})
};

function changeStatusQrisspek(id){
	// console.log("tes changeStatus");
	event.preventDefault();

	var idQris = id;
	var select = document.getElementById(idQris);
	var pstat = select.value;	

	Swal.fire({
	  title: 'Yakin ganti status? ( ͡° ͜ʖ ͡°)',
	  icon: 'success',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Ya',
	  cancelButtonText: 'Tidak',
	}).then((result)=>{
		if(result.value){
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				url: '/engineer/qrisspek/changestat',
				type: 'POST',
				data: {
					'_method': 'PATCH',
					'id': idQris,
					'pstat': pstat
				},

				success: function(response){
					// console.log(response);
					$('#table1').DataTable().ajax.reload();

					Swal.fire({
						title:'Status berhasil diganti',
						icon:'success',
						toast:true,
						showConfirmButton:false,
						position: 'top',
						timer:1500,
						timerProgressBar:true,
						background:'#D4F1F4'
					})
				},
				
				error: function(xhr){
					Swal.fire({
						icon: 'error',
						toast:true,
						title: 'Oops...',
						text: 'Something went wrong!',
						timer: 4000,
						background: 'bisque'
					})
				}
			})
		} else if (result.dismiss === 'cancel') {
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			$.ajax({
				success: function(response){
					// console.log("masuk pak");
					$('#table1').DataTable().ajax.reload();
					Swal.fire({
						title:'Status tidak terganti',
						icon: 'warning',
						toast:true,
						showConfirmButton:false,
						position:'top',
						grow:'row',
						timer:1500,
						timerProgressBar:true,
						background:'#D2FBA4'
					})
				}
			})
		}
	})
};

$('body').on('click', '#button-submit', function(event){
	event.preventDefault();

	var form = $('#modal-body form'),
		url = form.attr('action'),
		method = form.attr('method');
		
	// console.log(method);
	// console.log(url);

	form.find('.text-danger').remove();
	form.find('.form-group').removeClass('has-error');

	$.ajax({
		url : url,
		method : method,
		data : form.serialize(),
		success : function(response){
			console.log(response);
			form.trigger('reset');
			$('#modal').modal('hide');
			$('#table1').DataTable().ajax.reload();

			Swal.fire({
				toast: true,
				position: 'top-end',
				showConfirmButton: false,
				timer: 4000,
				background: '#a3ffa3',
				icon: 'success',
				text: 'Data berhasil disimpan',
				timerProgressBar: true,
			})
		},
		error : function(xhr){
			var resp = xhr.responseJSON;
			if($.isEmptyObject(resp) == false){
				$.each(resp.errors, function(key, value){
					$('#' + key)
						.closest('.form-group')
						.addClass('has-error')
						.append('<span class="text-danger is-invalid">' + value + '</span>')
				})
			}
		}
	})
})

$('body').on('click', '.modal-show', function(event){
    event.preventDefault();

    var me = $(this),
        url = me.attr('href'),
        title = me.attr('title');

	$('#modal-title').text(title);
	$('#button-submit').text(me.hasClass('btn-edit') ? 'Edit Data' : 'Tambah Data')

    $.ajax({
    	type: 'GET',
        url: url,
        dataType: 'html',
        success: function (response) {
        	$('#modal-body').html(""); 
            $('#modal-body').html(response); 
            // console.log($('#modal-body'));
        }
    });

    $('#modal').modal('show');
});

$('body').on('click', '.modallist-show', function(event){
    event.preventDefault();

    var me = $(this),
        url = me.attr('href'),
        title = me.attr('title');

	$('#modallist-title').text(title);

    $.ajax({
    	type: 'GET',
        url: url,
        dataType: 'html',
        success: function (response) {
            $('#modallist-body').html(response); 
            // console.log($('#modal-body'));
        }
    });

    $('#modallist').modal('show');
});
