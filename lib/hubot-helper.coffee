# Helper class for Hubot
class HubotHelper

  # Return element at random from the array.
  #
  # @param [Array] Target array.
  # @return [Object] One element from the array.
  @random: (items) ->
    items[Math.floor(Math.random() * items.length)]

module.exports = HubotHelper