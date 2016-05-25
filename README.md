# docker-slack
A small bash script that will monitor docker logs and push events to slack.
Minimal dependencies (curl, sed, grep, less) allow it to run on most hosts without the need for additional packages to be installed.  All credit goes to [this blog post](http://blog.getpostman.com/2015/12/23/stream-any-log-file-to-slack-using-curl/) as this is just a slight modification to use the "docker logs" command instead of reading from a file, as well as less +F instead of tail.

**Usage:**

> docker-slack.sh "docker-instance" "slack-webhook-url" "optional-search-term"

**Example:** (pushes all 404 errors from a docker instance named nginx):

>docker-slack.sh "nginx" "https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX" " 404 "

**Customization:**

The bot is named Docker Logbot by default.  You can name it anything you'd like by editing the bash script.
