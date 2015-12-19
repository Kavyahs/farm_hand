function sign_in_form() {
  $("#sign_in_form").validate({
    rules: {
      "email":{
        required: true
      },
      "password":{
        required: true
      }
    },

    errorElement: "span",
    errorClass: "help-block",
    messages: {
      "email": {
        required : "This field is required"
      },
      "password": {
        required : "This field is required"
      }
    },

    highlight: function(element) {
      $(element).parent().addClass("has-error");
    },
    unhighlight: function(element) {
      $(element).parent().removeClass("has-error");
    },

    submitHandler: function(form) {
      form.submit();
    }
  });
}