require 'rails_helper'

RSpec.describe User, type: :model do
  context 'sign up code' do
  	it 'should create with the good code' do
  		m = build(:user)
  		expect(m.valid?).to be(true)
  	end

  	it "shouldn't create with a wrong code" do
  		m = build(:user_bad_promo)
  		expect(m.valid?).to be(false)
  	end
  end
end
