require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the scrabble score path', {:type => :feature}) do
    it('processes the user entry and returns total of entry') do
      visit('/')
      fill_in('word', :with => 'HUGGIES')
      click_button('Send')
      expect(page).to  have_content(12)
    end
  end
