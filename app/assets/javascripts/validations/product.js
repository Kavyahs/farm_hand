function product_form() {
  $("#product_form").validate({
    rules: {
      "product[images]":{
        required: true
      },
      "product[close_date]":{
        required: true
      },
      "product[sub_category_id]":{
        required: true
      },
      "product[quantity]":{
        required: true
      },
      "product[seller_name]":{
        required: true
      },
      "product[email]":{
        required: true
      },
      "product[phone]":{
        required: true
      },
      "product[price]":{
        required: true
      },
      "product[address]":{
        required: true
      },
      "product[district_id]":{
        required: true
      },
      "product[state_id]":{
        required: true
      },
      "product[price_type]":{
        required: true
      },
      "product[quantity_type]":{
        required: true
      },
      "product[other_details]":{
        required: true
      }
    },

    errorElement: "span",
    errorClass: "help-block",
    messages: {
      "product[images]": {
        required : "This field is required"
      },
      "product[close_date]": {
        required : "This field is required"
      },
      "product[sub_category_id]": {
        required : "This field is required"
      },
      "product[quantity]": {
        required : "This field is required"
      },
      "product[seller_name]": {
        required : "This field is required"
      },
      "product[email]": {
        required : "This field is required"
      },
      "product[phone]": {
        required : "This field is required"
      },
      "product[price]": {
        required : "This field is required"
      },
      "product[address]": {
        required : "This field is required"
      },
      "product[district_id]": {
        required : "This field is required"
      },
      "product[state_id]": {
        required : "This field is required"
      },
      "product[price_type]": {
        required : "This field is required"
      },
      "product[quantity_type]": {
        required : "This field is required"
      },
      "product[other_details]": {
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