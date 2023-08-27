#https://viacep.com.br/ws/#{CEP}/json/

module Consulta_CEP 
    include HTTParty
    base_uri 'https://viacep.com.br'
    format :json 
end
