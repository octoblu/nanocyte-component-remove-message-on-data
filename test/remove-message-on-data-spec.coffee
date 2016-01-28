ReturnValue = require 'nanocyte-component-return-value'
RemoveMessageOnData = require '../src/remove-message-on-data'

describe 'RemoveMessageOnData', ->
  beforeEach ->
    @sut = new RemoveMessageOnData

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal 'anything'
