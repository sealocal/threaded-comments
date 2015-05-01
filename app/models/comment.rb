class Comment < ActiveRecord::Base
  validates :full_name, presence: true
  validate :full_name_must_contain_at_least_two_tokens

  validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/,
    message: "must be a valid e-mail address" }

  validates :content, presence: true

  private
    def full_name_must_contain_at_least_two_tokens
      if full_name.blank? || full_name.split.count < 2
        errors.add(:full_name, "must contain at least two words")
      end
    end
end
