# StatusCheck

### About

StatusCheck is a simple application reporting service. The idea is to provide an API which allows command-line updates via cURL, populating a single page application in the browser.

This list will display the 'Status', via state (UP/DOWN) and an associated message(i.e., 'We've been hacked!').

#### Dev Setup
1. Clone this repo, locally:<p>
`git clone git@github.com:sarahjschultz/StatusCheck.git`
2. Move to the StatusCheck directory:<p>
`cd StatusCheck/StatusCheck/`
3. Update your bundle:<p>
`bundle install`
4. Start your Rails server:<p>
`rails s`
5. Open up the application in your browser:<p>
`localhost:3000`
6. You probably don't have any Statuses to view, so why not add some? Use this cURL request as a baseline:<p>
```
curl -X POST -H "Content-Type: application/json" -d '{"status": {"state": "0", "message": "Whoop there it is!"}}' 127.0.0.1:3000/statuses.json
```
7. Tests have been written in Rspec, so run those with:
`bundle exec rspec`

#### Things To Know!
1. State is either Up or Down. Currently this is represented by UP = 0, Down = 1. You must pass in either state = 0, or state = 1 to set the current state.
2. If you only pass in a Message, the State value will default to that of the last posted Status.
3. Message is optional!

#### TODO:
1. Remove extraneous views/controller actions/javascripts/Rails-new-bloat.
2. Allow API to accept `state` values that are human readable(i.e., "up" or "down") instead of current integer settings
3. JSON in, JSON out (but fetching the status should still be public)
4. Authentication
5. Heroku
6. Use latest stable versions of Ruby (the language) and Rails (the framework)
