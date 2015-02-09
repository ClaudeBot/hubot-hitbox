# Hubot: Hitbox.tv

[![Build Status](https://travis-ci.org/ClaudeBot/hubot-hitbox.svg)](https://travis-ci.org/ClaudeBot/hubot-hitbox)

A Hubot script for interacting with Hitbox.tv API.

Developed by [mbwk](//github.com/mbwk).


## Installation via NPM

1. Install the __hubot-hitbox__ module as a Hubot dependency by running:

    ```
    npm install --save hubot-hitbox
    ```

2. Enable the script by adding the __hubot-hitbox__ entry to your `external-scripts.json` file:

    ```json
    [
        "hubot-hitbox"
    ]
    ```

3. Run your bot and see below for available config / commands


## Commands

Command | Description
--- | ---
hubot hb stream `name` | Returns information about stream `name`