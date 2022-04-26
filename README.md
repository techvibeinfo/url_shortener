

# Ruby on Rails Url Shortener application

This is the Sample application for shortening the URL
## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ cd /path/to/repos
$ git clone https://github.com/techvibeinfo/url_shortener.git url_shortener
$ cd url_shortener
$ bundle install --without production
```
Using mysql as databse, 

Create the Database
```
$ rails db:create
```

Next, migrate the database:

```
$ rails db:migrate
```
Run the app in a local server:

```
$ rails server
```
For shortening the Url, Open the browser and enter 
```
http://localhost:3000/
```

Enter the URL that you want to shorten in the text box and click the submit button.
The shorten url will be displayed on the screen and the it is saved into the database.