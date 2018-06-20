Dado("que esteja no site do Wallmart") do
    $wallmart = Comprar.new     
    $wallmart.doLogin    
end
  
  Quando("selecionar um produto") do
    $wallmart.fillSearch
  end
  
  Então("deve ser adicionad no carrinho") do
    pending # Write code here that turns the phrase above into concrete actions
  end