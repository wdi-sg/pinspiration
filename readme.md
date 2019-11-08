# Pinspiration

You will be creating Pinspiration, an idea-sharing platform that functions just like [this little website](https://www.pinterest.com/)!

## Technical Summary

Pinspiration requires registration to use. Users can upload, save, sort, and manage images—known as pins—and other media content (e.g., videos and images) through collections known as "pinboards". Pinspiration acts as a personalized media platform. Users can browse the content of others on the main page.

## Suggested Workflow

Not sure where to start? Try tackling your application in the following order...
  1. Draw an ERD
  2. Create migrations to define your database
  3. Define your models
  4. Define some basic routes
  5. Add controllers / actions & views

### Getting Started

In this cloned repo directory:

```bash
rails _5.2.3_ new . -d postgresql --skip-turbolinks --skip-coffee
```
## Spec

As always, we build our application iteratively. You implement all the features of a level before implementing features of the next. Spend some time planning your approach to a feature before launching into it. Take advantage of the whiteboards -- they're _everywhere_.

Add to your `seeds.rb` for the deafult data to make each iteration work.

### MVP
Users can log in and create a pin.

They can see a single pin and a list of all pins.

### Further

Implement two models, with a RESTful interface to manage them...  
  1. Pin  
  2. Comment

Pins have...
- a title
- an image url

Comments have...
- a body
- a date/time posted

There is a one-to-many relationship between Pins and Comments.

A user can see on their `/dashboard` all of their pins.
A user can see on their `/dashboard` all of their comments for all pins.

### Further
Check out the `ffaker` gem to make fake data in your app.

### Further
Bootstrap-ize your app.

### Further

##### Board

- Users have many boards, a board belongs to one user
- Boards have many pins, a pin belongs to one board

### Further

##### Tag

- Pins have many tags, a tag can be applied to many pins
- display all the pins for a given tag: `/tags/cats`

### Further

* Instead of storing an image url as a string, allow users to upload to AWS using
paperclip or carrierwave

### Further
* Users can sort, or filter of pins / boards / tags

### Further
- pins can be in multiple boards

### Further

- users can follow other users
- users can follow boards

### Further
A user's feed is compilation of the users they follow and the boards they follow


