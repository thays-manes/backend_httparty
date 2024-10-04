# frozen_string_literal: true

module ModuloCarregarArquivo
  def carrega_arquivo_massa(nome_arquivo)
    arquivo_massa = File.read("#{Dir.pwd}/features/support/data/payload/#{nome_arquivo}.json")
    JSON.parse(arquivo_massa)
  end

  def buscar_url
    YAML.load_file("#{Dir.pwd}/features/support/config/#{ENV['ENVIRONMENT_TYPE']}.yml")
  end
end
