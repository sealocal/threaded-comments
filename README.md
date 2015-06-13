#threaded-comments

This Rails app allows people to comment in threads, replying to others' comments.

A few rules:

  - A full name and email address is required to participate.
  - Comments cannot be empty.
  - You cannot edit or update another user's comments.


The current state of the app redirects you to a page that allows you to submit your comment (just like on that news for hackers website).  In the future, comments will be editable inline or on the page!

<hr>

#Original Specs


### Overall Objective

Create a new Rails 4.2.x project that allows a user of the application to submit commentary in a threaded fashion (think of it as a comment section for a blog, but no need to associate new "comment sets" with different pages.) This application should contain test coverage to a degree you feel is suitable, as well as input validation (detailed further below.) Visually, comments should be displayed in a fashion that makes their hierarchy clear.

#### Specific Requirements

* The user should be able to create both top level comments as well as comments under those top level comments.
* Fields should be present for users full name, their e-mail address, and the message. All three are required. E-mail should be validated as a proper e-mail, and "full name" should be validated as containing at least 2 words. 
* Users details (Name and e-mail) should be saved as a part of their session after submitting the first comment. So, if the page is refreshed those fields are pre-populated when submitting new top-level or threaded comments.
* Users should be able to edit comments after they’ve been created. 
* Users should be able to delete comments at any time after initial creation.
* Links should be present for each of these management functions (delete, edit, and to create a new comment threaded under that one)

While these are the minimum requirements, feel free to add your own ideas/flair (though without losing sight of the overall minimal need of the application.) Unique takes on the requirements are definitely welcome. 

You have control over the styling/design of the page/form, and though extra visual/front-end styling is a bonus, it's certainly not required or the focus.

### Completion

You'll have until **XX AM** on **DAY, MM/DD/YYYY** to complete the project. It doesn't need to fully hosted anywhere to be considered complete, though feel free to use Heroku if you wish to put it online for us to see. 

All code/development should be tracked via Git (and broken into commits that track your progress in a general sense, not one large commit the end.) Once complete, post your project to GitHub and send us a link for review. (If you're not comfortable posting as a public git repo, let us know and we can find another way to get it in our hands.)

We'll keep an eye on the comments of this gist, so you can ask any clarifying questions here and post a link to your work.
