function bidding_form() {
  $("#bidding_form").validate({
    rules: {
      "bidding[bidder_name]":{
        required: true
      },
      "bidding[email]":{
        required: true
      },
      "bidding[phone]":{
        required: true
      },
      "bidding[price]":{
        required: true
      },
      "bidding[quantity]":{
        required: true
      },
      "bidding[quantity_type]":{
        required: true
      },
      "bidding[price_type]":{
        required: true
      },
      "bidding[address]":{
        required: true
      },
      "bidding[district_id]":{
        required: true
      },
      "bidding[state_id]":{
        required: true
      }
    },

    errorElement: "span",
    errorClass: "help-block",
    messages: {
      "bidding[bidder_name]": {
        required : "This field is required"
      },
      "bidding[email]": {
        required : "This field is required"
      },
      "bidding[phone]": {
        required : "This field is required"
      },
      "bidding[price]": {
        required : "This field is required"
      },
      "bidding[quantity]": {
        required : "This field is required"
      },
      "bidding[quantity_type]": {
        required : "This field is required"
      },
      "bidding[price_type]": {
        required : "This field is required"
      },
      "bidding[address]": {
        required : "This field is required"
      },
      "bidding[district_id]": {
        required : "This field is required"
      },
      "bidding[state_id]": {
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