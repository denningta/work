class User < ApplicationRecord
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
      return "#{first_name} #{last_name}".strip if (first_name || last_name)
      "Anonymous"
  end
end
