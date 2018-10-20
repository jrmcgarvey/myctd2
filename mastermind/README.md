This is an exercise for the last two days of this class. We want to do more
programming, and we want to review some of the basic concepts we have learned.
This exercise reviews:

* the command line
* git
* classes
* hashes
* arrays
* variables
* conditional statements

I don't have update access for Kristine's git repository, so we will use a new
workspace.  

Setup instructions

1. Login to github.com.  Create a new repository called myctd2.  (You click on the
icon in the upper right and go to "my repositories" and then "new").
2. Login to c9.io.  Create a new blank workspace called myctd2.
3. From the command line in that workspace, type
git clone git@github.com:jrmcgarvey/ctd2<br/>

mkdir myctd2<br/>

cp -an ctd2 myctd2<br/>

cd myctd2/ctd2<br/>

git remote add myctd2 git@github.com:<your_git_id>/myctd2<br/>

git push myctd2 master<br/>

touch myclass.rb<br/>

Now run<br/>

ruby tester.rb<br/>

and follow the instructions until you are able to complete all of the tests.
You will have to make changes to myclass.rb.

Now, suppose you don't remember how to create a class or a hash or an array.
Look it up on Google! Use search arguments like "ruby create a class".

Once you have it working, type this in the command line:<br/>

git add -A<br/>

git commit -m "Got myclass.rb working"<br/>

git push myctd2 master<br/>


