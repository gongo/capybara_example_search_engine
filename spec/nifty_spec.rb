# -*- coding: utf-8 -*-
require 'spec_helper'

describe 'nifty', :type => :feature do
  before do
    visit 'http://www.nifty.com'
  end

  it 'visit nifty' do
    expect(page).to have_css '#logo'
  end

  it 'search keyword' do
    fill_in 'srchTxt', :with => 'capybara'
    click_button 'srchBtn'
    expect(page).to have_content 'jnicklas/capybara'
  end
end
