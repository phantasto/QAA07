const { method } = require("bluebird")
const { bindNodeCallback } = require("rxjs")

Feature: skalnik.pl
    Scenario: Buy few items
        Given First item
        And Second item
        And Third item
        When I click on shopping cart button
        Then I should see the list of items to pay for
        Then I should choose destination 
        And I should choose from payment methods
        When I press PAY 
        Then Website waits for finalization of transaction
        And Show message after successful purchase
