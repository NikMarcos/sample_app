require 'spec_helper'

describe "Static pages" do

  subject { page }

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Contact page" do
    before {visit '/contact'}

  it "should have the content 'Contact'" do
    expect(page).to have_content('Contact')
  end

  it "should have the right title" do
  expect(page).to have_title(" #{base_title} | Contact ")
  end

  it "should have the base title" do
  expect(page).to have_title( "#{base_title}" )
    end
end

describe "Home page" do
before { visit '/' }

it "should have the content 'Sample App'" do
  expect(page).to have_content('Sample App')
end

it "should have the base title" do
  expect(page).to have_title("Ruby on Rails Tutorial Sample App")
end

it "should not have a custom page title" do
  expect(page).not_to have_title('| Home')
  end
end

  describe "Help page" do
    before {visit '/help'}

    it "should have the title 'Help'" do
      expect(page).to have_title( "#{base_title} | Help" )
    end

    it "should have the base title" do
          expect(page).to have_title( "#{base_title}" )
        end

    it "should have the content h1 'Help'" do
      expect(page).to have_content( 'Help' )
    end
  end

  describe "About page" do
    before {visit '/about'}

    it "should have the title 'About Us'" do
      expect(page).to have_title( "#{base_title} | About Us" )
    end

    it "should have the base title" do
          expect(page).to have_title( "#{base_title}" )
        end

    it "should have the content 'About Us'" do
      expect(page).to have_content( 'About Us' )
    end
  end

  describe "Author" do
before {visit '/author'}

    it "should have the title 'Author'" do
      expect(page).to have_title( "#{base_title} | Author" )
    end

    it "should have the base title" do
          expect(page).to have_title( "#{base_title}" )
        end

    it "should have the content 'Author name'" do
      expect(page).to have_content('author name')
    end
  end

  it "should have the right links on the layout" do
    visit "/"
    click_link "About"
    expect(page).to have_title("#{base_title} | About Us")
    click_link "Help"
    expect(page).to have_title("#{base_title} | Help")
    click_link "Contact"
    expect(page).to have_title("#{base_title} | Contact")
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title("#{base_title} | Sign Up")
    click_link "Sample app"
    expect(page).to have_title("#{base_title} | Sample app")
  end
end
