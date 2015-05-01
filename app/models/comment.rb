class Comment < ActiveRecord::Base
  validates :full_name, presence: true
  validate :full_name_must_contain_at_least_two_tokens

  private
    def full_name_must_contain_at_least_two_tokens
      if full_name.blank? || full_name.split.count < 2
        errors.add(:full_name, "must contain at least two words")
      end
    end
end
