#language pt
Funcionalidade: Tela de Cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

Cenário: Cadastro bem-sucedido
    Dado que estou na página de cadastro
    Quando preencho todos os campos obrigatórios, marcados com asteriscos, com dados válidos
    E clico no botão "Finalizar Compra"
    Então meu cadastro deve ser concluído
    E devo ser direcionado para a página de finalização da compra

Esquema do Cenário: Cadastro com erro devido a campos inválidos
    Dado que estou na página de cadastro
    Quando preencho o <campo> com o <valor>
    E clico no botão "Finalizar Compra"
    Então devo ver a mensagem de erro <mensagem>

    Exemplos:
        | campo     | valor         | mensagem                      |
        | nome      |               | Campo obrigatório             |
        | sobrenome |               | Campo obrigatório             |
        | país      |               | Campo obrigatório             |
        | endereço  |               | Campo obrigatório             |
        | cidade    |               | Campo obrigatório             |
        | cep       |               | Campo obrigatório             |
        | telefone  | abc 12345     | Telefone com formato inválido |
        | telefone  |               | Campo obrigatório             |
        | email     | teste         | E-mail com formato inválido   |
        | email     | teste.com.br  | E-mail com formato inválido   |
        | email     |               | Campo obrigatório             |
