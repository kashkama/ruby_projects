require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the making change process', {:type => :feature}) do
    it('processes the user entry of triangle sides and returns type of triangle') do
      visit('/')
      fill_in('s1', :with => 4)
      fill_in('s2', :with => 4)
      fill_in('s3', :with => 4)
      click_button('the trianle is?')
      expect(page).to have_content('equilateral')
    end
  end
