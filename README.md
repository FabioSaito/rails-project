# Ruby on Rails - Contact List
Create a Contact List with the following conditions:
- Attributes:
  - User
    - name - unique and mandatory
    - age
    - biography

  - Contact:
    - name - unique and mandatory
    - birthdate

  - Telephone:
    - number - unique and mandatory
    - category - mandatory
    - principal

- Associations:
  - User:
    - has many unique Contacts
  - Contact:
    - has many unique Telephones

## Instalation

### You will need
- RVM
- Ruby 3.1.0
- Rails 6.1.4.4
- rspec-rails

#### Install RVM, following [Official Website](https://rvm.io/rvm/install) instructions.

#### Install Ruby 3.1.0:
```
rvm install 3.1.0
```

#### Install Bundler:
```
gem install bundler
```

#### Install Rails following [Official Website](https://guides.rubyonrails.org/v6.1.4.4/getting_started.html#creating-a-new-rails-project-installing-rails)

#### Install rspec-rails
The rspec-rails gem is already in Gemfile.
So just run `bundle install`
