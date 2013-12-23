# -*- coding: utf-8 -*-
require 'spec_helper'

describe 'Yahoo', :type => :feature do
  before do
    visit 'http://www.yahoo.co.jp/'
  end

  it 'visit Yahoo' do
    within(:css, '#header') do
      expect(page).to have_css('img[alt="Yahoo! JAPAN"]')
    end
  end

  it 'search keyword' do
    fill_in 'p', :with => 'capybara'
    click_button '検索'
    expect(page).to have_content 'jnicklas/capybara'
  end
end
