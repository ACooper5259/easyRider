class Profile < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :user
  validates :first_name, :last_name, presence: true
  validates :hcbc, presence: {message: "We need your hcbc number to create your profile"}
  
end
