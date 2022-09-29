$(document.getElementsByName("cita")).datepicker({
    minDate: +1,
    beforeShowDay: function(date) {
      var day = date.getDay();
      return [(day != 0 && day != 6), 'Fines de semana'];
    }
  });
  