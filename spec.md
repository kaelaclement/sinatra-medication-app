# Specifications for the Sinatra Assessment

Specs:

- [x] Use Sinatra to build the app: I'm using Sinatra to build my app
- [x] Use ActiveRecord for storing information in a database: ActiveRecord is responsible for all of my database management
- [x] Include more than one model class (e.g. User, Post, Category): I have User and Medication models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts): User has_many Medications
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User): Medication belongs_to a User
- [x] Include user accounts with unique login attribute (username or email): User has a username, which is validated for uniqueness on signup
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying: Medication routes include /new, /index, /show, /edit, and /delete
- [x] Ensure that users can't modify content created by other users: all Medication view and modify routes check that medications belong to the current user
- [x] Include user input validations: before creating or updating any medication, fields are checked for input, user is sent back to the form if any field is left empty
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm

- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message