# frozen_string_literal: true

require_relative '../../features/pages/home'

Given /^I visit the home page$/ do
  @page = Home.new
  @page.load
end


