# THIS DOES NOT WORK ATM!


# Very Simple Bot to explain you how to set up a discordrb bot on Heroku

## Sign up

1. Sign up at [Heroku](https://www.heroku.com)
2. Sign up at [Github](https://github.com/)

## Install ruby and git

1. Install ruby: I recommend installing ruby through [rvm.io](https://rvm.io/)
2. Install [git](https://git-scm.com/downloads)
 1. If you don't know how to use git I recommend the [try.github.io](https://try.github.io/) interactive guide
 2. Set up [git](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)

## Fork this repository
Create a fork of this repository ([docs](https://help.github.com/articles/fork-a-repo/))

## Run the bot locally
1. Verify you have successfully installed ruby by running `ruby -v`
2. `git clone` your fork ([docs](https://help.github.com/articles/cloning-a-repository/))
3. `gem install bundler`
4. `bundle install` will install all dependencies
5. create a file called `.env` and put your [discord token & application ID](https://discordapp.com/developers/applications/me) in the following style in it:
```
TOKEN=mmsseggs9209q0q3359
APPID=85322359235
```
6. run the bot by executing `ruby main.rb`

## Run the bot at Heroku
1. Create a new App
2.
3. Head to the Apps settings and add follwoing buildpacks:
```
https://github.com/heroku/heroku-buildpack-ruby
https://github.com/challengee/heroku-buildpack-libsodium.git
https://github.com/HYPERHYPER/heroku-buildpack-ffmpeg.git
```
