
[![Build Status](https://travis-ci.org/timrobertson0122/craftathon.svg?branch=master)](https://travis-ci.org/timrobertson0122/craftathon)
[![Coverage Status](https://coveralls.io/repos/timrobertson0122/craftathon/badge.svg?branch=master&service=github)](https://coveralls.io/github/timrobertson0122/craftathon?branch=master)

#Craftathon
-----------

###Brief

Create an online job board that satisfies the following user stories.  We would like to see well crafted, test-driven code and a well thought out, slick UX/UI.

```
As an employer
So I can recruit suitable talent
I would like to list my job openings

As a junior developer
So I can find a job that I want
I would like to view information about available jobs

As an employer
So I can choose the right person for my job
I would like to view applications

As a junior developer
So I can get the job that I want
I would like to be able to apply to jobs

As a website owner
So I can give visitors the best experience possible
I would like the website to look great
```

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* Ruby on Rails
* PSQL

### Project setup on local environment

```
git clone git@github.com:timrobertson0122/craftathon.git
cd craftathon
bundle
bin/rake db:create
rails s
```

#### Tests

```
bin/rake db:create RAILS_ENV=test
rspec
```

Seed Database

This creates 100 job applications:

```bin/rake db:seed```

Reset database:

```bin/rake db:reset```

###Optional extras

One or more may be completed in any order.

- Only pre approved users can create jobs
- Only creators can update and delete posts
- Users can update and delete their applications
- Users can login with github
- Creator can assign tags to jobs
- Users can filter jobs by tags
- Users can filter jobs by keyword
- +100 points for integrating the [typeform](http://typeform.io/) API

If you want it, here's a link to our [employers' typeform](https://makersacademy.typeform.com/to/kS7a6e)
