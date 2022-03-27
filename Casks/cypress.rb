cask "cypress" do
  version "9.5.2"
  sha256 "160a470d9259c91f7f4155b7b1da6504bca3cf153a15b8b2c0e06adee787b375"

  url "https://cdn.cypress.io/desktop/#{version}/darwin-x64/cypress.zip"
  name "cypress"
  desc "Test your code, not your patience."
  homepage "https://www.cypress.io"

  app 'Cypress.app'
end
