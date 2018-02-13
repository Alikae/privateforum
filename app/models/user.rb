class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :gossips

  before_validation :promocode

  def promocode
    codes = ["123CESTNOEL","METROPROMO","POURRILAND","#BALANCETONPOTE"]
    unless codes.include? codepromo
      errors.add :codepromo, "#{codepromo} is not on our Promotion list"  
  #    redirect_to new_user_registration_path
    end
  end 
end
