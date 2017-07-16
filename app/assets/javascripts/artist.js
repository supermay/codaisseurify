function createSong(name,description,youtubeLink) {

  var newSong = { name: name, description: description, youtube_link: youtubeLink};
  var artistId = window.location.href.split('/').reverse()[0];

  $.ajax(
    {
      type: "POST",
      url: "/artists/" + artistId  + "/songs.json",
      data: JSON.stringify({
        song: newSong
      }),
      contentType: "application/json",
      dataType: "json"
    });
}


function submitSong(event) {
  event.preventDefault();
  createSong($("#song_name").val(),
             $("#song_description").val(),
             $("#song_youtube_link").val());
  $("#song_name").val(null)
  $("#song_description").val(null)
  $("#song_youtube_link").val(null)
}
