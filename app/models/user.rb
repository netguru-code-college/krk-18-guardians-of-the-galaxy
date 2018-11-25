class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  has_and_belongs_to_many :artists
  def conversations
    Conversation.where("first_user = ? OR second_user = ?", self.id, self.id)
  end
end
