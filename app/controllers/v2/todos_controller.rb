# namespace syntax, shorthand in Ruby to define class within a namespace
class V2::TodosController < ApplicationController
  # add dummy response for testing purposes
  def index
    json_response({ message: 'Hello there'})
  end
end