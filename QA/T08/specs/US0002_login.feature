#language pt
Funcionalidade: Login na Plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

Cenário: Sucesso no Login
    Dado que estou na página de login
    Quando insiro meu nome de usuário (Username or email address)
    E insiro uma senha válida (Password)
    E clico no botão "Login"
    Então devo ser direcionado para a página de checkout

Cenário: Falha no Login
    Dado que estou na página de login
    Quando insiro meu nome de usuário (Username or email address)
    E insiro uma senha inválida (Password)
    E clico no botão "Login"
    Então devo ver uma mensagem de alerta que diz "Usuário ou senha inválidos"
