$(function() {
	$("form[name='form_kategoriBimbingan']").validate({
		rules: {
			nama: {
				required:true,
				maxlength:10,
			},
			//nama: "required",
			//narasumber: "required",
			//deskripsi: "required",
		},

		messages: {
			nama: {
				required: "Nama wajib diisi *",
				maxlength: "maksimum 10 character!!"
			},
			//nama: "nama wajib diisi!",
			//narasumber: "Narasumber wajib diisi!",
			//deskripsi: "Deskripsi wajib diisi",
		},

		submitHandler: function(form){
			form.submit();
		}
	});
});
