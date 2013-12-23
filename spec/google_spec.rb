# -*- coding: utf-8 -*-
require 'spec_helper'

describe 'Google', :type => :feature do
  before do
    visit 'https://www.google.co.jp/'
  end

  it 'visit Google' do
    expect(page).to have_selector 'div#hplogo'
  end

  it 'search keyword' do
    fill_in 'q', :with => 'capybara'
    click_button 'Google 検索'
    expect(page).to have_content 'jnicklas/capybara'
  end
end
