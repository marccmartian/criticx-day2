class Critic < ApplicationRecord
  validates :username, :body, :title, presence:true
  validates :username, length: { in: 2..12 }
  validates :username, format: { with: /\w/, message: "only letters and numbers" }
  validates_presence_of :title, :body, message: "Please write something!"
end