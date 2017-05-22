# Screenshotting Utility

This is a simple bash script intended to take periodic screenshots for
time tracking or other purposes. It's meant to be run on Mac OS X, and relies
on the "at" scheduler, so the following will have to be evalauted from the
command line first, per [Stack Overflow](https://superuser.com/questions/43678/mac-os-x-at-command-not-working).

    sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.atrun.plist

To use, first ensure that the AWS CLI is configured properly, and access is
enabled to your S3 bucket. Next, export an environment variable to indicate which
S3 bucket screenshots will be stored in (this line can go in your .profile), e.g.
the following, where s3://textninja is to be replaced with your own bucket's URL.

    export URL_OF_S3_BUCKET_FOR_SCREENSHOTS=s3://textninja

Once you're all set up, run `./screenshots.sh`.

To stop the screenshots from continuing every 10 minutes, you'll have to run
`atq` to get a list of jobs, then `atrm` the job ID. Okay, so it's not so
user friendly, but hey, it works for me. =)