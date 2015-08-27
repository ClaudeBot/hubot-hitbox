# Description:
#   Hitbox Public API
#
# Configuration:
#   None
#
# Commands:
#   hubot hb stream <name> - Returns information about stream <name>
#
# Author:
#   mbwk

module.exports = (robot) ->

    robot.respond /hb stream (.+)/i, id: "hitbox.stream", (res) ->
        hitboxRequest res, "/media/live/#{res.match[1]}", null, (object) ->

            if not object.livestream
                res.reply "Unable to find a currently live stream under that name."
                return

            livestream = object.livestream[0]

            if livestream.media_is_live is "0"
                res.reply "#{livestream.media_user_name} is not currently streaming."
                return

            res.reply "http://hitbox.tv/#{livestream.media_user_name} is currently streaming #{livestream.category_name}"
            res.send "They have been streaming since #{livestream.media_live_since}"

hitboxRequest = (res, api, params = {}, handler) ->
    res.http("http://api.hitbox.tv#{api}")
        .query(params)
        .get() (err, httpRes, body) ->
            if err
                res.reply "Error encountered while making request to hitbox API."
                return robot.logger.error "hubot-hitbox: #{err}"

            if body[0] != "{"
                handler {}
                return

            handler JSON.parse(body)
