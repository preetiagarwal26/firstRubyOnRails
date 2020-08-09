# README

**Setup for Windows**

1. Install Ruby
Download/run installer from https://www.ruby-lang.org/en/downloads/

2. Install Git
Download/run installer from https://git-scm.com/download/win

3. Install Node.js
Download/run installer from https://nodejs.org/en/download/
Verify installation by executing following command in command prompt, it should print installed version:-
node --version

4. Install yarn
Download/run installer from https://classic.yarnpkg.com/en/docs/install/#windows-stable.
Verify installation by executing following command in command prompt, it should print installed version:-
yarn --version

5. Install SQLite
Download sqllite from https://www.sqlite.org/download.html
Create a directory called sqlite. Extract the package under it
Open the Windows Command Prompt and run the following command to add the c:\sqlite directory to the system PATH.
setx path "%path%;c:\sqlite"
Close the Windows Command Prompt app.
Re-open the Windows Command Prompt. Verify installation by executing following command in command prompt, it should print installed version:-
sqlite --version

6. Install Rails
Open the Windows Command Prompt run the following command to install the Rails and bundler gems.
gem install rails bundler --no-document
Verify installation by executing following command in command prompt, it should print installed version:-
rails --version

6. Install an editor
Download sublime text from https://www.sublimetext.com/3

7. Verify environment
Run following commands and verify installation.

rails new apps
cd apps
rails server
Go to http://localhost:3000 in your browser, and you should see the “Yay! You’re on Rails!” page.

**Create first application**

1. Create directory
mkdir BasicRubyOnRails

2. Navigate to newly created directory
cd BasicRubyOnRails

3. Create new rails application with following command
rails new firstRubyOnRails

4. Navigate to new created directory
cd firstRubyOnRails

5. Bring up application using following command
rails server

6. Access http://localhost:3000 in your browser. It should bring up rails home page.

**Lets scaffold**

Scaffolding is auto generation of a model, views and controller for a single entity or table.
1. Lets generate MVC for blog entity using following command
rails generate scaffold blog name:string description:text

2. Rails offers DB migration to maintain various changes and push to DB. Here is the command for that:-
rails db:migrate

3. Now start server again using **rails server** command and access URL http://localhost:3000/blogs

**Fine Tuning**
1. Lets make homepage as /blogs. Add following in config/routes.rb after first line
root to: redirect('/blogs')

2. Lets add static page in application. Following command will generate static page
rails generate controller pages information

3. Add button. Add following in app/views/layouts/application.html.erb within <body> tag
	<li class="nav-item active">
  		<a class="nav-link" href="/blogs">Ideas</a>
	</li>
	<li class="nav-item">
  		<a class="nav-link" href="/pages/information">Information</a>
	</li>

**Sample code**
Refer to sample code at git repository located at