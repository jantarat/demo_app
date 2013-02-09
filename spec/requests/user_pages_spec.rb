require 'spec_helper'

describe "UserPages" do
  #this view test
  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1', text: 'Sign up' ) }

  end

  describe "signup" do

     before { visit signup_path } # open sign up view
     let(:submit) { "Sign up" } #visit signup pang and press submit button

      describe "with invalid information" do
        it "should not creat a user" do
          expect { click_button submit }.not_to change(User, :count) #if click button user not ++
        end

            describe "after submission" do
                before { click_button submit }

                it { should have_content('error') }
            end
      end

      describe "with valid information" do
        before do
          #visualize text fill
          fill_in "Name", with: "Deathwing" #put deathwing in name text
          fill_in "Email", with: "kp@dg.com" #put dg@kp.com in email text
          fill_in "Password", with: "123456789" #put 123456789 in password
          fill_in "Password Comfirmation", with: "123456789" #put 123456789 in password confirm
        end
        it "should create a user" do
          expect { click_button submit }.to change(User, :count).by(1) #if click button user ++
        end

      end
  end
  end
