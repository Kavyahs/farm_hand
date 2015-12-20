function sign_up_form() {
  $("#sign_up_form").validate({
    rules: {
      "user[name]":{
        required: true
      },
      "user[email]":{
        required: true
      },
      "user[password]":{
        required: true
      },
      "user[password_confirmation]":{
        required: true
      }
    },

    errorElement: "span",
    errorClass: "help-block",
    messages: {
      "user[name]": {
        required : "This field is required"
      },
      "user[email]": {
        required : "This field is required"
      },
      "user[password]": {
        required : "This field is required"
      },
      "user[password_confirmation]": {
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