class V2::TodosController < ApplicationController
  # add dummy response for testing purposes
  def index
    json_response({ message: 'Hello there'})
  end
end