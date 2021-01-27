class User < ApplicationRecord
  has_many :friend_sent , class_name: 'Friendship' ,foreign_key: 'sender_id',inverse_of: 'sender',dependent: :destroy
  has_many :friends, -> {  Friendship.friends },through: :friend_sent,source: :receiver
  has_many :friend_received ,class_name: 'Friendship',foreign_key: 'receiver_id',inverse_of: 'receiver',dependent: :destroy
  has_many :friendsrec, -> { Friendship.friends },through: :friend_received,source: :sender
  has_many :friend_request, -> { Friendship. not_friends },through: :friend_received,source: :sender
end
