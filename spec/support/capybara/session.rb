module Capybara
  class Session

    def has_field_error?(field, error)
      within(find(:xpath,
        ".//*[contains(@class, \"form-group\")][contains(@class, \"#{field}\")]")) do
        has_content?(error)
      end
    end

  end
end
