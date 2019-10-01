class ApplicationController < ActionController::API
    include Response #make application aware of helper modules, that will handle errors
    include ExceptionHandler
end
