/// <reference types='cypress' />
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";
import {Accounts} from "../common/Accounts";

Given(/^I have an existing verified account$/, () => {
    cy.log("Is this working?  It sure is!")
    Accounts.printMessageToCy('It\'s working through TS');
});

When(/^I submit my username and password credentials$/, function () {
    cy.log("I can't believe it!")
});

Then(/^I should be navigated to the "([^"]*)" page$/, function (pageName) {
    cy.log(`But does it work with ${pageName}`)
});

When(/^I incorrectly enter my username (.*) and password (.*)$/, function (username, password) {
    cy.log(`${username}, ${password}`)
});

Then(/^I should see the error message (.*)$/, function (errMessage) {
    cy.log(`${errMessage}`)
});

When(/^I enter only partial login information$/, function () {

});

Then(/^the Submit button should be disabled$/, function () {

});

Then(/^I should see an error message saying mandatory information needs to be entered$/, function () {

});
