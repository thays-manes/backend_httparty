Dado('que envio a requisição para api de classificados') do 
    @response = classificados.listar_classificados_atendidos
    puts @response
end 

E('a api vai retornar as informações dos classificados atendidos') do
    expect(@response).to match_json_schema('classificados_atendidos')
end     