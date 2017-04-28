assert = require 'assert'

describe 'pugcoffeesass generator', ->
  it 'can be imported', ->
    app = require '../generators/app'
    assert app != undefined
