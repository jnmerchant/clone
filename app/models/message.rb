class Message < ApplicationRecord
  validates :user_id, :text, presence: true
  belongs_to :user

  # include Filterable
end
