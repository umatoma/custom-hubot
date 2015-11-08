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

  sinchoku_imgs = [
    'http://i.imgur.com/8aQYLN4.jpg'
    'http://i.imgur.com/xw9iu4s.jpg'
    'http://i.imgur.com/iVkTVIA.jpg'
    'http://i.imgur.com/RkAZw3J.jpg'
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

  # Cron: 進捗どうですか？
  # Schedule: 月~金 15:00
  new CronJob
    cronTime: '0 0 15 * * 1-5'
    onTick: ->
      msg = """
            進捗どうですか？
            #{HubotHelper.random(sinchoku_imgs)}
            """
      robot.send {}, msg
    start: true