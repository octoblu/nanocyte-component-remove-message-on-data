ReturnValue = require 'nanocyte-component-return-value'

class RemoveMessageOnData extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = RemoveMessageOnData
