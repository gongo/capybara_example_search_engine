# -*- coding: utf-8 -*-
require 'spec_helper'

describe 'Goo', :type => :feature do
  before do
    visit 'http://www.goo.ne.jp/'
  end

  it 'visit Goo' do
    within(:css, '#ghLogo') do
      expect(page).to have_css('img[alt="goo"]')
    end
  end

  it 'search keyword' do
    fill_in 'searchtop', :with => 'capybara'
    click_button 'hd-s-1'
    expect(page).to have_content 'jnicklas/capybara'
  end
end
