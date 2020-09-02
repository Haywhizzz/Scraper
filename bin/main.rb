# !/usr/bin/env ruby

require 'csv'
require_relative '../lib/firstbank.rb'

new_csv = CSV.open('Firstbank.csv', 'a+')
new_csv << %w[area]

firstbank = Firstbank.new

firstbank.scrape(new_csv)
