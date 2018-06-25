class Comprar < SitePrism::Page
element :busca, :xpath, '//input[@id = "suggestion-search"]'
element :lupa, :xpath, '//button[contains(@class, "search-icon-topbar")]'
elements :produto, :xpath, '//a[contains(@title, "Notebook LG gram 15Z970-E.BH71P1 15,6 Intel Core i5 8GB Windows 10 Home")]'
element :addCart, :xpath, '//button[contains(@class,  "button-success button-pill right buy-button buy-button-product fluid")]'
element :cart, :xpath, '//span[@class = "cart-icon"]'
element :descProduto, :xpath, '//a[@class = "link link-description"]'

       def doSearch(produtoP)
        @nomeProduto = produtoP
        busca.set(@nomeProduto)
        lupa.click
    end
    
    def chooseP              
        produto[1].click
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