# frozen_string_literal: true

require_relative "#{Dir.pwd}/features/class/modulo_carregar_arquivo.rb"

class ClasseComum
  include ModuloCarregarArquivo
  def construir_url
    buscar_url['url']['url_base']
  end

  def construir_url_parametro(url)
    url_base = buscar_url['url']['url_base']
    url_parametro = buscar_url['parametros'][url]
    url_base + url_parametro
  end

  def cabecalho_requisicao(token)
    {
      'Authorization' => "Bearer"+token.to_s,
      'Content-Type' => 'application/json'
    }
  end

  def pegar_url_token
    buscar_url['url']['url_token']
  end

  def gerar_token
    retorno = HTTParty.post(pegar_url_token,
                            headers: { 'Content-Type' => 'application/json' },
                            body: carrega_arquivo_massa('login_body').to_json)
    validar_codigo_retorno('token', retorno, 200)
    retorno.parsed_response['Result']['jwt']
  end

  def validar_codigo_retorno(servico, reponse, retorno_esperado)
    raise "Serviço de #{servico} indisponível" if reponse.code != retorno_esperado
  end

  def construir_envio(token, massa, url_busca)
    HTTParty.post(url_busca, headers: cabecalho_requisicao(token),
                             body: massa)
  end

  def construir_envio_sem_token(url_busca, massa)
    HTTParty.post(url_busca, headers: { 'Content-Type' => 'application/json' },
                             body: massa)
  end

  def construir_envio_sem_body(token, url_busca)
    HTTParty.post(url_busca, headers: cabecalho_requisicao(token))
  end

  def construir_busca(token, url_busca)
    HTTParty.get(url_busca, headers: cabecalho_requisicao(token))
  end

  def construir_busca_parametro(token, url_busca, id = nil)
    HTTParty.get((id.nil? ? url_busca : "#{url_busca}/#{id}"),
                 headers: cabecalho_requisicao(token))
  end

  def construir_delecao(token, url_busca, id)
    HTTParty.delete("#{url_busca}/#{id}",
                    headers: cabecalho_requisicao(token))
  end

  def construir_atualizacao(token, url_busca, id, body)
    HTTParty.patch("#{url_busca}/#{id}",
                   headers: cabecalho_requisicao(token),
                   body: body)
  end
end
