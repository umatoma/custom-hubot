# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

CronJob = require('cron').CronJob
HubotHelper = require('../lib/hubot-helper')

module.exports = (robot) ->

  # 画像URL (今日も一日がんばるぞい)
  ganbaruzoi_imgs = [
    'http://i.imgur.com/9vipcEs.jpg'
    'http://i.imgur.com/MX3FXLe.jpg'
    'http://i.imgur.com/Krod0IW.jpg'
    'http://i.imgur.com/MFpRk6N.jpg'
  ]

  # Cron: 今日も一日がんばるぞい
  # Schedule: 月~金 09:45
  new CronJob
    cronTime: '0 45 9 * * 1-5'
    onTick: ->
      msg = """
            今日も一日頑張るぞい
            #{HubotHelper.random(ganbaruzoi_imgs)}
            """
      robot.send {}, msg
    start: true