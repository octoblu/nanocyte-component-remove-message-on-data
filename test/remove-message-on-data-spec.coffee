ReturnValue = require 'nanocyte-component-return-value'
RemoveMessageOnData = require '../src/remove-message-on-data'

describe 'RemoveMessageOnData', ->
  beforeEach ->
    @sut = new RemoveMessageOnData

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should remove the message from data using the transactionId', ->
        result = @sut.onEnvelope({data: {'yo-transaction-id': true}, message: {transactionId: 'yo-transaction-id'}})
        expect(result).to.deep.equal {}

      it 'should not change data', ->
        result = @sut.onEnvelope({data: {'yo-transaction-id': true}, message: {}})
        expect(result).to.deep.equal {'yo-transaction-id': true}
