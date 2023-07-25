#language pt
Funcionalidade: Configurar Produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

Cenário: Configuração de produto bem-sucedida
    Dado que estou na página do produto
    Quando seleciono uma cor
    E seleciono um tamanho
    E seleciono uma quantidade menor ou igual a 10
    Então o botão "Comprar" deve estar ativado

Cenário: Falha ao configurar o produto devido à falta de seleção
    Dado que estou na página do produto
    Quando não seleciono uma cor ou tamanho ou quantidade
    Então o botão "Comprar" deve estar desativado

Cenário: Falha ao configurar o produto devido à quantidade excessiva
    Dado que estou na página do produto
    Quando seleciono uma quantidade maior que 10
    Então devo ver uma mensagem de erro que indica "Quantidade limitada a 10 itens por compra!"

Cenário: Limpar as seleções de produto
    Dado que estou na página do produto
    E já selecionei uma cor, tamanho e quantidade
    Quando clico no botão "Limpar"
    Então todas as minhas seleções devem ser desfeitas e o estado deve voltar ao original