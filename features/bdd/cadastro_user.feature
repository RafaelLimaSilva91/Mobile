#language: pt

@login
Funcionalidade: Cadastrar user com sucesso

@cadastro_user
Cenario: Cadastrar user com sucesso
Dado que estou na tela inicial de login
Quando cadastro os dados válidos do novo usuário
Entao novo usuário cadastrado com sucesso

@Login_user_cadastrado
Cenario: Logar com user cadastrado com sucesso
Dado que estou na tela inicial de login com usuário válido
Quando informo os dados do user cadastrado com sucesso
Entao login efetuado com sucesso

@Login_user_invalido
Cenario: Logar com user inválido
Dado que estou na tela inicial de login com usuário inválido
Quando informo os dados do user inválido
Entao não permite efetuado o login com sucesso