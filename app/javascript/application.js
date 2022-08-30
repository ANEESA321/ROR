// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//$('.delete').bind('ajax:success',function() {
 //   $(this).closet('tr').fadeOut();
 //});
$("form select").on('change', function(e) {
    $.ajax({
        url: $('.update').attr('action'),
        data: $('.update').serialize(),
        type: "POST",
        dataType: "json",
        success: function(response) {
            console.log(response);
            alert("User Name Changed!");
        },
        error: function(xhr, textStatus, errorThrown) {}
    });
    e.preventDefault(); 
});