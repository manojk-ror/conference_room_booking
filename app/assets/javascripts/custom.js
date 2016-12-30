$(document).on('click', '.alert > span', function(){
  $('.alert').hide();
});

$(function () {
  $('#datetimepicker1').datetimepicker({
    minDate: moment(),
    daysOfWeekDisabled: [0, 6]
  });
  $('#datetimepicker2').datetimepicker({
    minDate: moment(),
    daysOfWeekDisabled: [0, 6]
  });
  $("#datetimepicker1").on("dp.change", function (e) {
    $('#datetimepicker2').data("DateTimePicker").minDate(e.date);
  });
  // $("#datetimepicker2").on("dp.change", function (e) {
  //   $('#datetimepicker1').data("DateTimePicker").maxDate(e.date);
  // });
});