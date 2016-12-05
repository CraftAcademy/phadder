# Project Unify

This repo is for the Back-end Admin interface and API

Mobile client repo: https://github.com/AgileVentures/project_unify_mobile

 Service                 |  Status      |
|------------------------ | ----------------- |
| **Test coverage**         |                  |
| Coveralls (develop)        |  [![Coverage Status](https://coveralls.io/repos/github/AgileVentures/project_unify/badge.svg?branch=develop)](https://coveralls.io/github/AgileVentures/project_unify?branch=develop)   |
| **Continuous integration** |    |
| Semaphore CI (master)       | Not configured|
| Semaphore CI (staging)       | Not configured|
| Semaphore CI (develop)      | [![Build Status](https://semaphoreci.com/api/v1/agileventures/project_unify/branches/develop/badge.svg)](https://semaphoreci.com/agileventures/project_unify)  |
| **Code quality**            |         |
| CodeClimate             | Not configured |
|**Deploys**                |         |
| Develop Server           | [unify-develop.herokuapp.com](http://unify-develop.herokuapp.com/) |
| Staging Server           |Not configured |
| Production Server        | Not configured |
|**Project management**       |         |
|Pivotal Tracker          |[Project Unify](https://www.pivotaltracker.com/n/projects/1525675)|
|**API Documentation**       |         |
| V1 Develop | [unify-develop.herokuapp.com/api-doc](http://unify-develop.herokuapp.com/api-doc)


### Features
#### Main
* User can sign up as a [Mentor](https://en.wiktionary.org/wiki/mentor#English) or [Mentee](https://en.wiktionary.org/wiki/mentee) 
* User can add Skills (Areas of interest) 
* User can search for matches
  * Mentors can serach for Mentees
  * Mentees can search for Mentors and other Mentees

#### Secondary
* User can send messages to other users
* User can access a Facebook timeline for the organisation running the system

### Setup instructions
Fork and clone the repository.

Run `bundle install` inside the projects folder

```shell
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

#### Tests
The admin interface is primarely tested using Cucumber
Unit test are written in RSpec
API-endpoints are tested with Request specs `spec/requests/api/v1`


#### Running the app
```
$ redis-server
$ rails s
```