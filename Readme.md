## Deploying

Don't forget to compile the coffee files!  (See below.)

### Adding Remotes

To add a remote that points to the apps, run `git remote add [name of your choice] [repo-path]`

For example- `git remote add alpha git@heroku.com:bethel-careers-alpha.git`

#### Production
Ensure that you have a git remote pointing to `git@heroku.com:bethel-careers.git` and that
you have been added to the bethel-careers app in heroku.

Run `git push (name of production remote) master`  It should be deployed

#### Alpha
Ensure that you have a git remote pointing to `git@heroku.com:bethel-careers-alpha.git` and that
you have been added to the bethel-careers-alpha app in heroku.

Run `git push (name of alpha remote) master`  It should be deployed

## Development

This is an AngularJS application wrapped in a Sinatra application for easy deployment to Heroku.  Coffeescript is required.

The local server can be started with `ruby app.rb` or `thin start`

All *.coffee files should be combined into `main.js` with

     coffee --join public/js/main.js --compile public/js/*.coffee

