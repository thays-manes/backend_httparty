# frozen_string_literal: true

require 'cucumber'
require 'httparty'
require 'allure-cucumber'
require 'rspec'
require 'rubocop'
require 'yaml'
require 'pry'
require 'json_matchers'
require 'json_matchers/rspec'
require_relative 'pagina_objetos'

JsonMatchers.schema_root = "#{Dir.pwd}/features/support/data/schemas"

World(PaginaObjetos)

ENVIRONMENT_TYPE ||= ENV['ENVIRONMENT_TYPE']

# Allure
AllureCucumber.configure do |c|
  c.clean_results_directory = true
  c.link_tms_pattern = 'https://example.org/tms/{}'
  c.link_issue_pattern = 'https://example.org/issue/{}'
  c.tms_prefix = 'TMS_'
  c.issue_prefix = 'ISSUE_'
end