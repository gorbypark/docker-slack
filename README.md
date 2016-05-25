# docker-slack
A small bash script that will monitor docker logs and push events to slack.
Minimal dependencies (curl, sed, grep) allow it to run on most hosts without the need for additional packages to be installed.  All credit goes to http://blog.getpostman.com/2015/12/23/stream-any-log-file-to-slack-using-curl/ as this is just a slight modification to use the "docker logs" command instead of reading from a file.
