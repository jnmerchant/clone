class Message < ApplicationRecord
  validates :user_id, :text, presence: true
  belongs_to :user

  include Filterable

  scope :text, -> (text) { where("text ILIKE ?", "%#{text}%") }
  scope :user_id, -> (user_id) { where user_id: user_id}
end
