_ = require 'lodash'
module.exports = ->
  @then (cb) =>
    return cb() unless @server.users?
    @each @server.users, cb, ([name, user], next) =>
      @user name, (_.merge user, sudo: true), next
