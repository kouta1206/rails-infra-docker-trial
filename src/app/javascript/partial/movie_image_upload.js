$(document).on("change", "#movie_image_upload", function (e) {
  if (e.target.files.length) {
    let reader = new FileReader;
    reader.onload = function (e) {
      $('.d-none').removeClass();
      $('.movie-default-img').removeClass();
      $('#movie-img').remove();
      $('#no-img').addClass('d-none');
      $('#no-img').removeAttr('src');
      $('#movie-img-prev').attr('src', e.target.result);
    };
    return reader.readAsDataURL(e.target.files[0]);
  }
});