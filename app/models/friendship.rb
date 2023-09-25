class Friendship < ApplicationRecord
    belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
    belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

    validates :status, presence: true
    enum :status, [:pending, :accepted, :declined]
    
    scope :is_accepted, -> { where(status: "accepted") }
    scope :is_pending, -> { where(status: "pending") }
    scope :is_declined, -> { where(status: "declined") }
end 