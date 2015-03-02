### StatusCheck README

#### About
StatusCheck is a small project for the Litmus team. The idea is to provide an API which allows command-line updates via cURL, which will populate a list viewable in the browser.

This list will display the 'Status' of the theoretical LitmusApp, via state (UP/DOWN) and an associated message(i.e., 'We've been hacked!').

#### Dev Setup
1. Clone this repo, locally:<p>
`git clone git@github.com:sarahjschultz/Litmus_TakeHome.git`
2. Move to the StatusCheck directory:<p>
`cd Litmus_TakeHome/StatusCheck/`
3. Update your bundle:<p>
`bundle install`
4. Start your Rails server:<p>
`rails s`
5. Open up the application in your browser:<p>
`localhost:3000`
6. You probably don't have any Statuses to view, so why not add some? Use this cURL request as a baseline:<p>
```
curl -X POST -H "Content-Type: application/json" -d '{"status": {"state": "0", "message": "This is how we do it."}}' 127.0.0.1:3000/statuses.json
```
7. Tests have been written in Rspec, so run those with:
`bundle exec rspec`

#### Things To Know!
1. State is either Up or Down, meaning either: (1)the Litmus App is Up or (2) the Litmus App is Down. Currently this is represented by UP = 0, Down = 1. You must pass in either state = 0, or state = 1 to set the current state.

2. Message is optional!

3. We've done very little in the way of necessary authentication, because this application will not run LIVE on the world-wide-web. We are very aware that we do not have suitable protection against evildoers.

#### TODO List:
1. Remove extraneous views/controller actions/javascripts/Rails-new-bloat.
2. Allow API to accept `state` values that are human readable(i.e., "up" or "down") instead of current integer settings


