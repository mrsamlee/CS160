Instructions to generate application.

1. cd to /cats
2. type in 'rake db:reset' to clear db. (windows: 'ruby bin/rake db:reset')
3. type in 'rake :db:migrate' 
4. type in 'rails server' to start the server
5. Run testDB.bat or testDB.sh to populate the 'cat' table
6. Go to http://localhost/3000/

Instructions on how to run application
	Enter in any username and password in the register form on the homepage - it will populate the 'user' table, and redirect to the cats page.
	On the cats page, you can see our cats in our 'cat' table.
	There is a link to 'View Users', this will redirect to a page of user information. 
	There are also links back to the homepage, and to view cats. 

Notes:
	-we ran into some compatiblity issues with the coffescript gem. We 'fixed' it by changing 'application' to 'default' on line 5 of assets/stylesheets/application.js

