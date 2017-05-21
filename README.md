# Screenshotting Utility

This is a simple bash script intended to take periodic screenshots for
time tracking or other purposes. It's meant to be run on Mac OS X, and relies
on the "at" scheduler, so the following will have to be evalauted from the
command line first, per [Stack Overflow](https://superuser.com/questions/43678/mac-os-x-at-command-not-working).

    sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.atrun.plist

To use, ensure that the AWS CLI is configured properly, and access is
enabled to your S3 bucket, then run `./screenshots.sh`.