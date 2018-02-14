FactoryBot.define do
  factory :user do
    username 'Georges'
    email 'yo@lala.com'
    password 'azerty'
    codepromo '#BALANCETONPOTE'

    factory :user_bad_promo do
    	codepromo 'AZERTYUIOP'
    end
  end
end
