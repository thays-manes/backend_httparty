require_relative 'classe_comum'

class Login < ClasseComum
    
    def post_login
        url_busca = construir_url_parametro('login')
        massa = carrega_arquivo_massa('login_body').to_json
        construir_envio_sem_token(url_busca, massa)
    end
end    