Dado('que envio a requisição para api de login') do
    @response = login.post_login
end

Entao('o status code será {string}') do |status|
    expect(@response.code).to eq status.to_i
end
  