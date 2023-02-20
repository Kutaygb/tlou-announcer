# BluTV Episode Notifier

This is a Bash script that checks whether a new episode of a TV series has been added to the BluTV platform, and plays a sound or sends a notification if a new episode is found.
## Requirements

    curl command-line tool
    A sound player such as paplay (for sound notification)
    A Telegram bot and chat ID (for Telegram notification)

### Installation

Clone the repository or download the source code.

Install the required packages by running the following command in your terminal:

    sudo apt-get install curl pulseaudio-utils

    


Create a new bot on Telegram and get the API access token from the BotFather.

Invite the bot to a Telegram chat and get the chat ID using the getUpdates method or a third-party bot such as IDBot.

Create a .env file in the project root directory and add the following variables:


    TELEGRAM_API_TOKEN=<your Telegram Bot API access token>
    TELEGRAM_CHAT_ID=<your Telegram chat ID>
    EPISODE_NUM=<your Episode number >

Run the script with the following command:

    bash check_new_episode.sh

    You can also add the command to a cron job or a scheduled task to run the script automatically at regular intervals.

#### Usage

The script checks whether a new episode of a TV series has been added to the BluTV platform by sending a curl request to the episode page. If the page returns a 404 error, the script assumes that no new episode has been added. If the page returns a valid response, the script plays a sound notification or sends a Telegram message to the specified chat.

You can customize the script by changing the URL of the episode page, the sound file to be played, and the Telegram notification message.