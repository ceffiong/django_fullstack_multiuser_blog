$( document ).ready(function() {
    //Greeting
    var today = new Date()
    var curHr = today.getHours()

    if (curHr < 12) {
      $("#greet").text("morning")
    } else if (curHr < 18) {
      $("#greet").text("afternoon")
    } else {
      $("#greet").text("evening")
    }
  });

  /* Edit profile event */
  //Button was removed

  /* nEdit avatar button. Show form when the button is clicked
  $("#edit-avatar").click(function(){
    $("#avatar-form").removeClass("d-none");
    $("#close-avatar").removeClass("d-none");
    $(this).addClass("d-none");
  });

  //CLose avatar button - hide form when this btn is clicked
  $("#close-avatar").click(function(){
    $("#avatar-form").addClass("d-none");
    $(this).addClass("d-none");
    $("#edit-avatar").removeClass("d-none");
  }); */


  //Make user fields editable when edit icon is clicked

  $(".edit-btn").click(function(){
    $("#first-name").prop('contenteditable', 'true').addClass("edit-element-bio").focus();
    $("#last-name").prop('contenteditable', 'true').addClass("edit-element-bio");
    $("#bio").prop('contenteditable', 'true').addClass("edit-element-bio");
    $("#email").prop('contenteditable', 'true').addClass("edit-element-bio");
    $(this).addClass("d-none");
    $(".close-btn").removeClass("d-none")
    $(".save-btn").removeClass("d-none")
  });


  // Save update profile event
  $(".save-btn").click(function(){
    var fname = $("#first-name").text();
    var lname = $("#last-name").text();
    var email = $("#email").text();
    var bio = $("#bio").text();
    var username = $(this).attr("data-username");

    update_profile_url = update_profile_url.replace(/1234/, username.toString())

    if(fname === ""){
      $("#alert-msg").text("First name cannot be blank").removeClass("d-none");
      return;
    }

    if(lname === ""){
      $("#alert-msg").text("Last name cannot be blank").removeClass("d-none");
      return;
    }

    if(email === ""){
      $("#alert-msg").text("Email field cannot be blank").removeClass("d-none");
      return;
    }

    if(bio === ""){
      $("#alert-msg").text("Bio field cannot be blank").removeClass("d-none");
      return;
    }

    $.ajax({
      type: 'PUT',
      url: update_profile_url,
      headers: {
        'Content-Type':'application/json',
        'X-CSRFToken': csrftoken
      },
      data: JSON.stringify({
        'first_name': fname,
        'last_name': lname,
        'bio': bio,
        'email': email
      }),
      success: function (response) {
        //make fields uneditable
        $("#first-name").prop('contenteditable', 'false').removeClass("edit-element-bio").focus();
        $("#last-name").prop('contenteditable', 'false').removeClass("edit-element-bio");
        $("#bio").prop('contenteditable', 'false').removeClass("edit-element-bio");
        $("#email").prop('contenteditable', 'false').removeClass("edit-element-bio");

        //Show edit button and hide the others

        $(".save-btn").addClass("d-none");
        $(".edit-btn").removeClass("d-none")
        $(".close-btn").addClass("d-none")
      },
      error: function (response) {
          // alert the error if any error occured
          var err_msg = response["responseJSON"]["error"];
          $("#alert-msg").text(err_msg).removeClass("d-none");
       }
    })
  });


  // Handle close button event
  $(".close-btn").click(function(){
    var username = $(this).attr("data-username");

    edit_profile_url = edit_profile_url.replace(/1234/, username.toString())

    //if user clicks edit then types in something and then click close. We want to show the old text not the unsaved one
    //we need to do a GET request so as to fetch the initial data

    $.ajax({
      type: 'GET',
      url: edit_profile_url,
      headers: {
        'Content-Type':'application/json',
        'X-CSRFToken': csrftoken
      },
      success: function (response) {
        // updated elements

        //set unedited text
        $("#first-name").text(response.first_name);
        $("#last-name").text(response.last_name);
        $("#bio").text(response.bio);
        $("#email").text(response.email);

        //make fields uneditable
        $("#first-name").prop('contenteditable', 'false').removeClass("edit-element-bio").focus();
        $("#last-name").prop('contenteditable', 'false').removeClass("edit-element-bio");
        $("#bio").prop('contenteditable', 'false').removeClass("edit-element-bio");
        $("#email").prop('contenteditable', 'false').removeClass("edit-element-bio");

        //Show edit button and hide the others
        $(".save-btn").addClass("d-none");
        $(".edit-btn").removeClass("d-none")
        $(".close-btn").addClass("d-none")


      },
      error: function (response) {
        var err_msg = response["responseJSON"]["error"];
        $("#alert-msg").text(err_msg).removeClass("d-none");
       }
    })

    return false; //to prevent button click event from firing twice
  });

//Submit social icons form event

/* Article cover image form submit event */
$("#social-form").submit(function(e){
    var serializedData = $(this).serialize();


    edit_profile_url = edit_profile_url.replace(/1234/, username.toString())

    $.ajax({
        type: 'POST',
        url: edit_profile_url,
        data: serializedData,
        success: function (response) {
            linkedin = response.linkedin;
            youtube = response.youtube;
            twitter = response.twitter;
            github = response.github;

            $("#linkedin").attr("href", linkedin)
            $("#youtube").attr("href", youtube)
            $("#twitter").attr("href", twitter)
            $("#github").attr("href", github)


            $("#social-form").trigger("reset");
            $("#alert-social").text("Social icons links have been successfully updated.").removeClass("d-none")

        },
        error: function (response) {
            var err_msg = response["responseJSON"]["error"];
            $("#alert-msg").text(err_msg).removeClass("d-none");
        }
    })

    return false;
})