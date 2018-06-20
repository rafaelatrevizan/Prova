class Comprar < SitePrism::Page
element :busca, :xpath, '//input[@id = "suggestion-search"]'



    def doLogin 
        $URL = "https://www.walmart.com.br/"
        visit $URL
    end


    def fillSearch
        busca.set("notebook LG")
        busca.submit();
    end
    

end