require_relative 'classe_comum'
require "uri"
require "net/http"

class Classificados < ClasseComum

    def listar_classificados_atendidos
        url_busca = construir_url_parametro('listar_classificados')
        token = gerar_token
        construir_busca("Bearer"token, url_busca)
    end 
end     