class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # Model associations
  has_many :todos, foreign_key: :created_by
  # Validations
  validates_presence_of :name, :email, :password_digest
end

# defines a 1:many relationship
# adds field validations
# method (has_secure_password), this adds methods to authenticate against bcrypt password
# above method will require us to have a (password_digest)
# thus also need bcrypt as dependency