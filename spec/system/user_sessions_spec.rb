require 'rails_helper'

RSpec.describe "UserSessions", type: :system do
  let!(:user) { create :user, :user }

  describe 'ログイン画面' do
    it 'ログインができること' do
      visit login_path
      fill_in 'メールアドレス', with: 'user1@gmail.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      expect(current_path).to eq('/boards')
      expect(page).to have_content('ログインしました')
    end

    it 'パスワードが違う場合はログインできないこと' do
      visit login_path
      fill_in 'メールアドレス', with: 'user1@gmail.com'
      fill_in 'パスワード', with: 'pass'
      click_button 'ログイン'
      expect(current_path).to eq('/login')
      expect(page).to have_content('ログインに失敗しました')
    end
  end
end
