$(function() {
	$("form[name='form_prodi']").validate({
		rules: {
			kode: {
				required:true,
				maxlength:10,
			},
			nama: "required",
			narasumber: "required",
			deskripsi: "required",
			nim: "required",
		},

		messages: {
			kode: {
				required: "Kode wajib diisi",
				maxlength: "maksimum 10 character!!"
			},
			nama: "nama wajib diisi!",
			narasumber: "Narasumber wajib diisi!",
			nim: "nim wajib diisi",
		},

		submitHandler: function(form){
			form.submit();
		}
	});
});
