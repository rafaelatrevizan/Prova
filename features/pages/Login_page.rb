class Entrar < SitePrism::Page
           def doLogin 
            $URL = "https://www.walmart.com.br/"
            visit $URL
        end

end
    