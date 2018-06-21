
  Quando("selecionar um {string}") do |string|
    $comprar = Comprar.new
    $comprar.doSearch(string)
    end 
 
  
  Então("deve ser adicionado no carrinho") do
    $comprar.chooseP
    $comprar.confirmarCompra
  end