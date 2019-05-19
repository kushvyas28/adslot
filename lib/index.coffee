# Build your comprehensive validation function here!
# Feel free to use any third party librarys from NPM (http://npmjs.org) for data validation.

exports.validate = (data) ->
  
  rules = {
  id: 'required'|'integer'|'positive',
  name: 'required'|'string'|'max:63',
  email: 'required'|'email'|'max:255',
  taxRate: 'required'|'float'|'min:0'|'max:1',
  favouriteColour: 'hex'|'regex:/^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$/',
  interests: 'array'|'max:4',
  'interests.*': 'string'|'max:31'
  }
  
  Validatorjs = require('validatorjs')  
  validation = new Validatorjs(data, rules)

  if validation.passes() then return true
  else return false





