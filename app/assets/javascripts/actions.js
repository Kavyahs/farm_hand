$(document).ready(function(){
  $('#select_district').change(function(){
    var district = $('#select_district').val();
    var product = $('#select_product').val();
    var category_id = $("#category_id").val();
    var url = '/'+category_id +'/products?district='+district
    alert(url);
    globalAjaxCall('GET', url);
  });
});

function globalAjaxCall(http_method, url, data){
  $.ajax({
    url: url,
    type: http_method,
    data: data
  });
}