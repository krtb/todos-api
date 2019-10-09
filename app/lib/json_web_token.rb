# DEFINE JWT SINGLETON
class JsonWebToken
  # secret to encode and decode token, unique to all rails apps
  HMAC_SECRET = Rails.application.secrets.secret_key_base

  def self.encode(payload, exp = 24.hours.from_now) #payload will be user_id
    # set expiry to 24 hours from creation time
    payload[:exp] = exp.to_i
    # sign token with application secret
    JWT.encode(payload, HMAC_SECRET)
  end

  def self.decode(token)
    # get payload; first index in decoded Array
    body = JWT.decode(token, HMAC_SECRET)[0] # with same secret used in encoding
    HashWithIndifferentAccess.new body
    # rescue from all decode errors
  rescue JWT::DecodeError => e
    # raise custom error to be handled by custom handler, if validation fails. Handled by (EXCEPTION HANDLER) module
    raise ExceptionHandler::InvalidToken, e.message
  end
end

# singleton wraps jwt to provide encoding and decoding methods
# encode method: responsible for creating tokens with payload(user id) and expieration perdiod