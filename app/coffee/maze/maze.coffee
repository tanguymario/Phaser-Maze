assert = require '../utils/assert.coffee'

debug       = require '../utils/debug.coffee'
debugThemes = require '../utils/debug-themes.coffee'

Bitset = require 'bitset.js'

Case = require './case/case.coffee'

class Maze
  constructor: (game, width, height) ->
    assert game?, "Game missing"
    assert width > 0, "Width must be positive and not zero"
    assert height > 0, "Height must be positive and not zero"

    @game = game
    @width = width
    @height = height

    bs = new Bitset "001111"

    tab = new Array @height
    for i in [0...@height] by 1
      tab[i] = new Array @width
      for j in [0...@width] by 1
        tab[i][j] = new Case @game, bs.clone()


module.exports = Maze
