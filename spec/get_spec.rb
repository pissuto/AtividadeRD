describe 'fazer uma requisição nos correios com sucesso' do
    it 'get' do
        @consultar = Consulta_CEP.get('/ws/05339-000/json')
        puts @consultar.body      
        puts @consultar.code
        puts @consultar.parsed_response['cep'] 
        puts @consultar.parsed_response['logradouro']
        expect(@consultar.code).to eq 200
        expect(@consultar.parsed_response['logradouro']).to eq 'Avenida Corifeu de Azevedo Marques'
        expect(@consultar.parsed_response['cep']).to eq '05339-000'
    end
end

describe 'fazer uma requisição nos correios sem sucesso logradouro' do
    it 'get' do
        @consultar = Consulta_CEP.get('/ws/05339-000/json')
        puts @consultar.body      
        puts @consultar.code
        puts @consultar.parsed_response['cep'] 
        puts @consultar.parsed_response['logradouro']
        expect(@consultar.code).to eq 200
        expect(@consultar.parsed_response['logradouro']).to eq 'Avenida Corifeu de Azevedo'
        expect(@consultar.parsed_response['cep']).to eq '05339-000'
    end
end

describe 'fazer uma requisição nos correios sem sucesso CEP' do
    it 'get' do
        @consultar = Consulta_CEP.get('/ws/05339-000/json')
        puts @consultar.body      
        puts @consultar.code
        puts @consultar.parsed_response['cep'] 
        puts @consultar.parsed_response['logradouro']
        expect(@consultar.code).to eq 200
        expect(@consultar.parsed_response['logradouro']).to eq 'Avenida Corifeu de Azevedo Marques'
        expect(@consultar.parsed_response['cep']).to eq '05339-111'
    end
end

