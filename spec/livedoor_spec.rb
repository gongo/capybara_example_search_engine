# -*- coding: utf-8 -*-
require 'spec_helper'

describe 'livedoor', :type => :feature do
  before do
    visit 'http://www.livedoor.com/'
  end

  it 'visit Goo' do
    within(:css, '#logo') do
      expect(page).to have_link 'livedoor'
    end
  end

  it 'search keyword' do
    within(:css, '#search2') do
      fill_in 'q', :with => 'capybara'
      click_button 'acSubmitButton'
    end
    expect(page).to have_content 'Capybara Games'
  end
end
