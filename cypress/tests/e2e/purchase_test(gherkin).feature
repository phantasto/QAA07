const { method } = require("bluebird")
const { bindNodeCallback } = require("rxjs")

Feature: skalnik.pl
    Scenario: Buy few items
        Given Visit website: skalnik.pl
        Given Type `raczki` in search box
        And Press `Raczki turystyczne` from list
        And Select the very first item on the list
        Then I choose size
        And Type `1` in amount
        And Press `Do koszyka` button
        When I click on shopping cart button
        And Press `Przejdź do koszyka` button
        Then I should see the list of items to pay for
        Then Press `Przejdź do kasy` button
        And Press `Zamów bez rejestracji` button
        And Type your data for receipt
        Then I choose shipping method
        And I choose destination 
        And I choose from payment methods
        When I press `Przejdź do platności`
        Then I am waiting for response from Bank API
        And I see message after successful purchase
