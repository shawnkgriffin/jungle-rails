# Project Description
## Goal
There are multiple high-level goals to this project:

- [X] Become familiar with Ruby and the Rails framework
- [X] Learn how to navigate an existing code-base
- [X] Use existing code style and approach to implement new features in unfamiliar territory
- [X] Apply previous learning tactics to research and become familiar with a new paradigm, language and framework
A simulation of the real world where feature and bug-fix requests are listed instead of step-by-step instructions on how to implement a solution
## Functional Requirements
This section lists the functional specs that our mentors will be sampling when evaluating your project submission.

### Feature: Sold Out Badge

- [X] Major: When a product has 0 quantity, a sold out badge should be displayed on the product list page
- [X] Minor: Should ideally be implemented as a question/boolean method in view helper and/or Product model
### Feature: Admin Categories

- [X] Major: Admin users can list and create new categories
- [X] Major: Admins can add new products using the new category
- [X] Major: Restful routes (resources) should be used, and there should be no extra, unused routes exposed
Bonus: All admin controllers inherit from Admin::BaseController (or similarly named) abstract controller, containing the authentication filter
### Feature: User Authentication

- [X] Major: As a Visitor I can go to the registration page from any page in order to create an account
- [X] Major: As a Visitor I can sign up for a user account with my e-mail, password, first name and last name
- [X] Major: As a Visitor I can sign in using my e-mail and password
- [X] Major: As a User I can log out from any page
- [X] Major: As a User I cannot sign up with an existing e-mail address (uniqueness validation)
- [X] Major: Passwords are not stored as plain text in the database. Instead, has_secure_password is used in the User model, leveraging the bcrypt gem
### Enhancement: Order Details Page

- [X] Major: The order page contains items, their image, name, description, quantities and line item totals
- [X] Major: The final amount for the order is displayed
- [X] Minor: The email that was used to place the order is displayed
- [X] Minor: As a Visitor I can place an order (i.e. without logging in and therefore without an e-mail address). The original functionality from the inherited code (even though it is not realistic) should therefore not be suppressed.
### Feature: Email Receipt

- [X] Major: The e-mail content should be (minimally) formatted with HTML
It does not need any layout styling and should be mostly, if not all, text (i.e. make do with `<p>, <hr>, <h1>, <br>` and other simple formatting tags)
Since you don't know their name information, it can just have a generic greeting
- [X] Major: It should list the total as well as each line item in the order
- [X] Minor: The Order ID should be in the subject line
### Bug: Missing Admin Security

- [X] Major: User must enter HTTP auth login/password to access admin functionality
Bonus: Should ideally be implemented in an abstract top-level class for admin controllers (e.g., Admin::BaseController which the other concrete admin controllers inherit)
### Bug: Checking Out with Empty Cart

- [X] Major: When the cart is empty and the user goes to the carts#show page, instead of displaying the contents and a stripe checkout button, display a friendly message about how it is empty and link to the home page
Feature: Product Rating

- [X] Major: Use of nested resources in the routing, and not using custom controller actions
- [X] Major: As a visitor I can view the overall rating of products as I browse the catalog
- [X] Major: As a visitor I can view the list of ratings and reviews when viewing the product detail
- [X] Major: As a logged in user I can rate & review a product in a single step
- [X] Minor: As a logged in user I can delete a rating or review that I previously created
Git
- [X] Minor: The git commit history should have multiple commits and reasonable commit messages. There should be good use of branching and merging for each feature.

