#language: pt
#utf-8


@Wallmart
Funcionalidade: Fazer uma compra
Eu como usuário
Quero entrar no site do Wallmart 
Para fazer uma compra

Contexto: Validar entrar no site do Wallmart
Dado que esteja no site do Wallmart

Esquema do Cenário: Validar produto no carrinho
Quando selecionar um "<produto>"
Então deve ser adicionado no carrinho
Exemplos:
|produto        |
|Notebook LG    |