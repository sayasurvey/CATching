module LoginMacros
  def login(user)
    visit login_path
    byebug
    fill_in 'メールアドレス', with: user.email
    fill_in 'パスワード', with: 'password'
    click_button 'ログイン'
  end
end
