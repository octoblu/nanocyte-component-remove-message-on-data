_           = require 'lodash'
ReturnValue = require 'nanocyte-component-return-value'

class RemoveMessageOnData extends ReturnValue
  onEnvelope: ({data, message}) =>
    data = {} unless _.isObject data
    delete data[message.transactionId]
    return data

module.exports = RemoveMessageOnData
