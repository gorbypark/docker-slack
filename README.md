# docker-slack
A small bash script that will monitor docker logs and push events to a slack incoming webhook.
Minimal dependencies (curl, sed, grep, less) allow it to run on most hosts without the need for additional packages to be installed.  All credit goes to [this blog post](http://blog.getpostman.com/2015/12/23/stream-any-log-file-to-slack-using-curl/) as this is just a slight modification to use the "docker logs" command instead of reading from a file, as well as less +F instead of tail.

**Usage:**

> docker-slack.sh "docker-instance" "slack-webhook-url" "optional-search-term"

**Example:**

>pushes all events from a docker instance named nginx:
>nohup docker-slack.sh "nginx" "https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX"

>pushes all 404 errors from a docker instance named nginx:
>nohup docker-slack.sh "nginx" "https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX" " 404 "

**Notes:**

Use a command like nohup to keep it running after you log out.  The bot is named Docker Logbot by default.  You can name it anything you'd like by editing the bash script.
