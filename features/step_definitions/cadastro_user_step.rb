Dado('que estou na tela inicial de login') do
  @cad_new_login = CadastroNewLogin.new
end

Quando('cadastro os dados válidos do novo usuário') do
  @cad_new_login.cad_new_login
end

Entao('novo usuário cadastrado com sucesso') do
  @cad_new_login.confirm_cad_new_login
end

Dado('que estou na tela inicial de login com usuário válido') do
  @login_success = HomeLogin.new
end

Quando('informo os dados do user cadastrado com sucesso') do
  @login_success.login_success
end

Entao('login efetuado com sucesso') do
  @login_success.valid_login_success
end

Dado('que estou na tela inicial de login com usuário inválido') do
  @login_fail = HomeLogin.new
end

Quando('informo os dados do user inválido') do
  @login_fail.login_fail
end

Entao('não permite efetuado o login com sucesso') do
  @login_fail.valid_login_fail
end
