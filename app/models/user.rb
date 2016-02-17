class User < ActiveRecord::Base
  validates :username,
            uniqueness: { case_sensitive: false },
            presence: true,
            length: { minimum: 3, maximum: 25 }

  VALID_EMAIL_REGEX= /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/

  validates :email,
            uniqueness: { case_sensitive: false },
            presence: true,
            format: { with: VALID_EMAIL_REGEX },
            length: { minimum: 6, maximum: 100 }
end