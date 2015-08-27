# hubot-hitbox

[![Build Status](https://travis-ci.org/ClaudeBot/hubot-hitbox.svg)](https://travis-ci.org/ClaudeBot/hubot-hitbox)
[![devDependency Status](https://david-dm.org/ClaudeBot/hubot-hitbox/dev-status.svg)](https://david-dm.org/ClaudeBot/hubot-hitbox#info=devDependencies)

A Hubot script for interacting with [Hitbox.tv](http://www.hitbox.tv/) API.

Developed by [mbwk](//github.com/mbwk). See [`src/hitbox.coffee`](src/hitbox.coffee) for full documentation.


## Installation via NPM

1. Install the __hubot-hitbox__ module as a Hubot dependency by running:

    ```
    npm install --save hubot-hitbox
    ```

2. Enable the module by adding the __hubot-hitbox__ entry to your `external-scripts.json` file:

    ```json
    [
        "hubot-hitbox"
    ]
    ```

3. Run your bot and see below for available config / commands


## Commands

Command | Listener ID | Description
--- | --- | ---
hubot hb stream `name` | `hitbox.stream` | Returns information about stream `name`


## Sample Interaction

```
user1>> hubot hb stream minstars
hubot>> user1: http://hitbox.tv/Minstars is currently streaming Web Development
```