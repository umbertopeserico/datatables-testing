$(function() {
  $('#users-dt').DataTable({
    processing: true,
    serverSide: true,
    ajax: $('#users-dt').data('source'),
    stateSave: true
  });
});
