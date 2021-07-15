/*  Article event handling */
// Edit button click
$("#edit-article-icon").click(function(){
  //hide edit button and show save/close/select buttons
  $(this).addClass("d-none");
  $("#close-article-icon").removeClass("d-none");
  $("#save-article-icon").removeClass("d-none");
  $("#change-image").removeClass("d-none");
  $("#category-div").removeClass("d-none").addClass("edit-element");

  //show the file field
  $("#article-cover").removeClass("d-none");

  //make article fields editable
  $("#article-title").prop('contenteditable', 'true').addClass("edit-element").focus();
  $("#article-subtitle").prop('contenteditable', 'true').addClass("edit-element");
  $("#article-content").prop('contenteditable', 'true').addClass("edit-element");
});


/* Article cover image form submit event */
$("#article-image-form").submit(function(e){
  e.preventDefault();
  var data = new FormData($(this)[0]);
  // make post ajax call
  $.ajax({
      type: 'POST',
      url: update_article_url,
      headers: {
        'X-CSRFToken': csrftoken
      },
      data: data,
      processData: false,
      contentType: false,
      cache: false,
      success: function (response) {
        $("#article-cover-image").attr("src", response.photo);
        $('#image_modal').modal('toggle');
      },
      error: function (response) {
          // alert the error if any error occured
          var err_msg = response["responseJSON"]["error"]
          $("#alert-article-msg").text(err_msg).removeClass("d-none");
      }
  })
});


//Save button click
$("#save-article-icon").click(function(){
  //get the title, subtitle and content
  var title = $("#article-title").text();
  var subtitle = $("#article-subtitle").text();
  var content = $("#article-content").text();
  var article_cover = $("#article-cover").val();

  //get the category value selected
  var category_id = $("#select-article-category").val();
  var category = $("#select-article-category option:selected").text()

  if(title === ""){
    $("#alert-article-msg").text("Title field cannot be left blank").removeClass("d-none");
    return;
  }

  if(subtitle === ""){
    $("#alert-article-msg").text("Subtitle field cannot be left blank").removeClass("d-none");
    return;
  }

  if(content === ""){
    $("#alert-article-msg").text("Content field cannot be left blank").removeClass("d-none");
    return;
  }

  if(article_cover === ""){
    $("#alert-article-msg").text("Article_cover field cannot be left blank").removeClass("d-none");
    return;
  }

  //send a put request to view (backend)
  $.ajax({
    type: 'PUT',
    url: edit_article_url,
    headers: {
      'Content-Type':'application/json',
      'X-CSRFToken': csrftoken
    },
    data: JSON.stringify({
      'title': title,
      'subtitle' : subtitle,
      'content' : content,
      'category' : category_id,
      'article_cover': article_cover
    }),
    success: function (response) {
      // updated elements
      let date = new Date(Date.parse(response.updated_at));
      $("#article-updated-at").text("Last updated: " + date.toUTCString());
      $("#article-title").text(title);
      $("#article-subtitle").text(subtitle);
      $("#article-content").text(content);
      $("#article-category").text(category)


      //Hide save and close button and category select and show edit button also remove class and turn off editing
      $("#close-article-icon").addClass("d-none");
      $("#save-article-icon").addClass("d-none");
      $("#edit-article-icon").removeClass("d-none");
      $("#category-div").addClass("d-none");
      $("#article-cover").addClass("d-none");
      $("#change-image").addClass("d-none");

      $("#article-title").prop('contenteditable', 'false').removeClass("edit-element").focus();
      $("#article-subtitle").prop('contenteditable', 'false').removeClass("edit-element");
      $("#article-content").prop('contenteditable', 'false').removeClass("edit-element");

    },
    error: function (response) {
        // alert the error if any error occured
        var err_msg = response["responseJSON"]["error"]
        $("#alert-article-msg").text(err_msg).removeClass("d-none");
     }
  })


});

// Handle close button event
$("#close-article-icon").click(function(){

  //if user clicks edit then types in something and then click close. We want to show the old text not the unsaved one
  //we need to do a GET request

  $.ajax({
    type: 'GET',
    url: edit_article_url,
    headers: {
      'Content-Type':'application/json',
      'X-CSRFToken': csrftoken
    },
    success: function (response) {
      // updated elements
      let date = new Date(Date.parse(response.updated_at));
      $("#article-updated-at").text("Last updated: " + date.toUTCString());
      $("#article-title").text(response.title);
      $("#article-subtitle").text(response.subtitle);
      $("#article-content").text(response.content);

      //Hide save and close button and category select and show edit button also remove class and turn off editing
      $("#close-article-icon").addClass("d-none");
      $("#save-article-icon").addClass("d-none");
      $("#edit-article-icon").removeClass("d-none");
      $("#category-div").addClass("d-none");
      $("#article-cover").addClass("d-none");
      $("#change-image").addClass("d-none");

      $("#article-title").prop('contenteditable', 'false').removeClass("edit-element").focus();
      $("#article-subtitle").prop('contenteditable', 'false').removeClass("edit-element");
      $("#article-content").prop('contenteditable', 'false').removeClass("edit-element");


    },
    error: function (response) {
        // alert the error if any error occured
        var err_msg = response["responseJSON"]["error"]
        $("#alert-article-msg").text(err_msg).removeClass("d-none");
     }
  })

  return false; //to prevent button click event from firing twice

});


/* article event ends */
