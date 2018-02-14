require 'rails_helper'

RSpec.feature "Homes", type: :feature do
	context 'Integration' do
		it 'should return signup if there is no current user' do
			visit root_path
			expect(page).to have_content('need to login')
		end

		it 'should return gossips if there is a current user' do
			visit new_user_registration_path

			fill_in 'user_username', :with => 'MyUsername'
			fill_in 'user_email', :with => 'MyEmail@example.com'
			fill_in 'user_password', :with => 'MyPassword'
			fill_in 'user_password_confirmation', :with => 'MyPassword'
			fill_in 'user_codepromo', :with => '123CESTNOEL'
			click_button "Sign up"

			visit root_path
			expect(page).to have_content('Connected as')
		end
	end
end
