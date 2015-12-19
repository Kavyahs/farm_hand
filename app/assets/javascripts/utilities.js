var messageModalId = "div_modal_message";
var genericModalId = "Modal";

// $('#'+messageModalId).modal({
//   keyboard: true,
//   backdrop: "static"
// });
//
// $('#'+genericModalId).modal({
//   keyboard: true,
//   backdrop: "static"
// });

function showModal(heading, bodyContent, modalId){
  if(modalId==null){
    var modalId = genericModalId;
  }
  //$('#' + modalId + ' .modal-body').html("<p>"+ message +"</p>");
  $('#' + modalId + ' .modal-header h4.modal-title').text(heading);
  $('#' + modalId + ' div.modal-body').html(bodyContent);
  $('#' + modalId).modal({keyboard: true, backdrop: "static"});
  $('#' + modalId).modal('show');
  //$('#' + modalId + ' .modal-footer button.btn-primary').button('reset');
}
