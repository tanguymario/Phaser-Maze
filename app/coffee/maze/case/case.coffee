assert = require '../../utils/assert.coffee'

debug       = require '../../utils/debug.coffee'
debugThemes = require '../../utils/debug-themes.coffee'

class Case
  @V_MIN_WALLS = 0
  @V_MAX_WALLS = 6

  constructor: (game, bitset) ->
    @game = game
    @bitset = bitset

    


module.exports = Case
