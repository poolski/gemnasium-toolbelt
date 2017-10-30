# Gemnasium Toolbelt

This version of the Toolbelt runs on Alpine Linux (x64) as the standard Toolbelt seems to have issues running in Docker on a 64-bit platform.
Full docs from Gemnasium can be found here: https://github.com/gemnasium/toolbelt

This version also supports being used in CI workflows such as Gitlab CI.

### Usage

*You will need your Gemnasium token to use this tool*

To use this with Docker, pull the image and run it from your code directory as follows.

**Ruby**

`docker run -e GEMNASIUM_TOKEN=yourtokenhere -v $(pwd):/code poolski/gemnasium-toolbelt gemnasium eval -f=/code/Gemfile`

**Python**

`docker run -e GEMNASIUM_TOKEN=yourtokenhere -v $(pwd):/code poolski/gemnasium-toolbelt gemnasium eval -f=/code/requirements.txt`

If you don't want to specify the token as part of the command, you can always add it to your local environment variables using
`export GEMNASIUM_TOKEN=yourtokenhere` 

There are also mechanisms for doing this in most CI platforms, so check the documentation for whatever you're using. 	