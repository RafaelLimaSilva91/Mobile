class HomeLogin < Utils

  def initialize
    @email = 'etLogGmail'
    @password = 'etLoginPassword'
    @login = 'btnLogin'
    @new_user = 'tvRegister'
    @login_success = 'AppCompatTextView'
    @msg = 'LinearLayout'
  end

  def login_success
    type_text(@email, 'rafa@gmail.com', 5)
    type_text(@password, '1234', 5)
    click_in_element(@login, 5)
  end

  def valid_login_success
    expect(get_text(@login_success)).to eql "You are now logged in"
  end

  def login_fail
    type_text(@email, 'Admin', 5)
    type_text(@password, 'Admin', 5)
    click_in_element(@login, 5)
  end

  def valid_login_fail
    wait_for_element(@msg, 5)
    expect(get_text(@msg)).to eql "Login error"
  end
end
