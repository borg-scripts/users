_ = require 'lodash'
module.exports = ->
  for name, user of @server.users
    @then @user name, _.merge user, sudo: true
