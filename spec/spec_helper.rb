require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'

#referencia aonde esta o arquivo com o modulo consulta_cep
require_relative '../services/cep_service.rb'

RSpec.configure do |config|
  #modulo consulta cep esta como global
  include Consulta_CEP
  config.color = true
  config.formatter = :documentation

  config.expect_with :rspec do |expectations|  
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end
