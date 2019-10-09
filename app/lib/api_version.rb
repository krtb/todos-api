# class checks API version from request headers, routes to appropriate header module. 
# lives here because not domain specific
class ApiVersion
  attr_reader :version, :default 

  def initialize(version, default = false)# class accepts a version and default flag on initialization
    @version = version
    @default = default
  end

  # check whether version is specified or is default
  def matches?(request) # implement instance method, called with request object upon initialization
    check_headers(request.headers) || default
  end

  private

  # BELOW PROCESS IS CALLED: CONTENT NEGOTIATION
  def check_headers(headers)
    # check version from Accept headers; expect custom media type `todos`
    accept = headers[:accept] # from request object, can access the Accept headers
    accept && accept.include?("application/vnd.todos.#{version}+json") # vendor tree
    # check for the requested version or if default version
  end
end

# class implements (server-driven) content negotiation
# where client (user agent) informs the server media types it understands by providing 
# an (AcceptHTTP header)

# vendor tree used for media types for publicly available products
# uses (vnd) facet

