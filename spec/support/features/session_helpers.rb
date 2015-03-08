module Features
  module SessionHelpers
    include Capybara::DSL

    def sign_up_with(credentials)
      visit("/users/sign_up")
      credentials.each do |field, value|
        fill_in(symbol_to_name(field), with: value)
      end
      click_on('Sign up')
    end

    def sign_in_as(email, password)
      visit("/users/sign_in")
      fill_in("Email", with: email)
      fill_in("Password", with: password)
      click_on("Log in")
    end

    def sign_out
      click_on("Log out")
    end

    private

      def symbol_to_name(sym)
        sym.to_s.gsub('_', ' ').capitalize
      end

  end
end
