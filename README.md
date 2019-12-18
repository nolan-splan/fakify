## Fakify
An API that generates simple fake user data as JSON.
Please note this is a personal project not intended for heavy external use.

### Installation / Usage
Step 1:

* Clone this repository
* `git clone https://github.com/nsplan/fakify`

Step 2:

* run `bundle install`

Step 3:

* start rails server
* `cd path/to/fakify && rails s`

### Endpoints
* /users
will return 100 randomly generated users

* /users/:id
will return 1 randomly generated user

### Example Response
```javascript
fetch('http://localhost:3000/users/1')
  .then(res => res.json())
  .then(json => console.log(json))

[
  {
    id: 83
    first_name: "Stefania"
    middle_name: "Mills"
    last_name: "Rowe"
    username: "rowe_stefania"
    email: "stefania_rowe@fakify.info"
  }
]
```