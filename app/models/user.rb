class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  has_many :posts
  has_many :comments


  has_many :sent_friend_requests,class_name: "Friendship",foreign_key: "sender_id"
  has_many :sent_friends, through: :sent_friend_requests, source: :receiver
  
  # has_many :sent_friend_requests_by_me,class_name: "Friendship",foreign_key: "sender_id"
  # has_many :my_friend_request_receivers, through: :sent_friend_requests_by_me, source: :receiver

  has_many :received_friend_requests,class_name: "Friendship",foreign_key: "receiver_id"
  has_many :received_friends, through: :received_friend_requests, source: :sender
  
  # has_many :received_friend_requests_to_me,class_name: "Friendship",foreign_key: "receiver_id"
  # has_many :friend_request_senders_to_me, through: :received_friend_requests_to_me, source: :sender

  
end
