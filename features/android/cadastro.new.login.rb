class CadastroNewLogin < Utils

  def initialize
    @name = 'etRegName'
    @phone = 'etRegPhone'
    @gmail = 'etRegGmail'
    @password = 'etRegPassword'
    @register = 'btnRegLogin'
    @login = 'btnGotoLogin'
    @new_user = 'tvRegister'
    @msg = 'message'
  end

  def cad_new_login
    click_in_element(@new_user, 5)
    type_text(@name, 'Rafa Teste', 5)
    type_text(@phone, '11985864222', 5)
    type_text(@gmail, 'rafa@gmail.com', 5)
    type_text(@password, '1234', 5)
    click_in_element(@register, 5)
  end

  def confirm_cad_new_login
    expect(get_text(@msg)).to eql "Registration Successful"
  end

end
