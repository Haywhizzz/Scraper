# !/usr/bin/env ruby

require 'csv'
require_relative '../lib/first_bank.rb'

new_csv = CSV.open('first_bank.csv', 'a+')
new_csv << %w[area]

firstbank = FirstBank.new

firstbank.scrape(new_csv)
