class Comprar < SitePrism::Page
element :busca, :xpath, '//input[@id = "suggestion-search"]'
element :lupa, :xpath, '//button[contains(@class, "search-icon-topbar")]'
# element :produto, :xpath, '//li[@data-position = "4"]'
element :addCart, :xpath, '//button[contains(@class,  "button-success button-pill right buy-button buy-button-product fluid")]'
element :cart, :xpath, '//span[@class = "cart-icon"]'
element :descProduto, :xpath, '//a[@class = "link link-description"]'

       def doSearch(produtoP)
        @nomeProduto = produtoP
        busca.set(@nomeProduto)
        lupa.click
    end
    
    def chooseP
        find(:title, @nomeProduto).click        
        # produto.click
        addCart.click    
    end

    def confirmarCompra
        cart.click
        @texto = descProduto.text
        if @texto.include? @nomeProduto
            puts "Produto adicionado no carrinho"
        else
            puts "Não existe"
            fail
        end
    end

end