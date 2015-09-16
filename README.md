# StatusCheck

### About

StatusCheck is a simple theoretical application reporting service. The idea is to provide an API which allows command-line updates via cURL, populating a single page application in the browser.

This list will display the 'Status', via state (UP/DOWN) and an associated message(i.e., 'Site has gone down for the day and is sleeping.').

#### Dev Setup
To set up the project locally, follow the steps in our [Wiki](https://github.com/sarahjschultz/StatusCheck/wiki)

### Using StatusCheck
Example requests can also be found in our [Wiki](https://github.com/sarahjschultz/StatusCheck/wiki/Sample-Requests)

1. State (optional): Up or Down
2. Message (optional): Relevant text about your status
3. You may opt to only pass in a State, and your update will appear without any Message.
4. You may opt to only pass in a Message, but note that the State value will default to that of the last posted Status.

#### TODO:
1. JSON in, JSON out (but fetching the status should still be public)
2. Allow API to accept `state` values that are human readable(i.e., "up" or "down") instead of current integer settings
3. Authentication
4. Heroku
