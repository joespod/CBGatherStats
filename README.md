# CBGatherStats
Captures Room Stats for your Chaturbate Account

This is a simple PowerShell script that connects to the Chaturbate 3rd Party Stats API and records your room stats out to a CSV where it can be easily imported into a spreadsheet or other analysis tool.

The Chaturbate API provides the following details:

"username","time_online","tips_in_last_hour","num_followers","token_balance","satisfaction_score","num_tokened_viewers","votes_down","votes_up","last_broadcast","num_registered_viewers","num_viewers","timestamp"

## Getting Started

You will need to update the script with your CB user ID and an API token.

You can obtain an API token by logging into Chaturbate, and accessing the "Settings and Privacy" tab of your profile.

At the bottom of this page is a link 'Authorize your 3rd party stats.'

Clicking this link will take you to a page where you can create (and delete) tokens - create a new token and copy the value into the script.

## Running the script

Once you've added your details into the script, simply place it in a convenient folder and run it.

This will start capturing data and will continue until you press a key in the window.

The room statistics will be captured out into the local folder and will have a filename based on the date in year-month-day-hour-minute format from the time that the script started.

## Using the data

Open the CSV(s) into your tool of choice!

It would be nice if we had access to more data than is currently provided but it's a nice start!
