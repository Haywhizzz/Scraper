# !/usr/bin/env ruby

require 'csv'
require_relative '../lib/firstbank.rb'

new_csv = CSV.open('firstbank.csv', 'a+')
new_csv << %w[area]

firstbank = FirstBank.new

firstbank.scrape(new_csv)
