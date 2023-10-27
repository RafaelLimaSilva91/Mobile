class HomeLogin < Utils

  def initialize
    @email = 'etLogGmail'
    @password = 'etLoginPassword'
    @login = 'btnLogin'
    @new_user = 'tvRegister'
    @login_success = 'AppCompatTextView'
  end

  def login_success
    type_text(@email, 'Rafa_Teste@gmail.com', 5)
    type_text(@password, 'R@123', 5)
    click_in_element(@login, 5)
  end

  def valid_login_success
    wait_for_element(@login_success, 5)
    expect(get_text(@login_success)).to eql "Registration Successful"
  end

  def login_fail
    type_text(@email, 'Admin', 5)
    type_text(@password, 'Admin', 5)
    click_in_element(@login, 5)
  end

  def valid_login_fail
    wait_for_element(@login_success, 5)
    expect(get_text(@login_success)).to eql "Registration Successful"
  end
end
