# Users API

---

## Table of Contents

1. [Create User](#create-user)
2. [Delete User](#delete-user)
3. [Get User](#get-user)
4. [Update User](#update-user)

## Endpoints

### Create User <a name="create-user"></a>

**Route:** `/users/create`

**Method:** `post`

**Sample Request:**

```
{
	"first_name": "Agam",
	"last_name": "Sidhu",
	"email": "agam@agam.com"
	"username": "agam123"
}
```

**Sample Response:**

```
{
	"user_id": 123,
	"status": "success",
	"message": "User successfully created"
}
```

**Response Details:**

* `user_id`: ID of the newly created user used as a reference in other endpoints.
* `status`: Status of the request. Can be one of the following: success, failure, error.
* `message`: A message providing additional details for the status.

### Delete User <a name="delete-user"></a>

**Route:** `/users/delete`

**Method:** `post`

**Sample Request:**

```
{
	"user_id": 123
}
```

**Sample Response:**

```
{
	"status": "success",
	"message": "User successfully deleted"
}
```

**Response Details:**

* `status`: Status of the request. Can be one of the following: success, failure, error.
* `message`: A message providing additional details for the status.

### Get User <a name="get-user"></a>

**Route:** `/users/[id]`

**Method:** `get`

**Sample Request:**

```
http://localhost:8000/api/v1/users/123
```

**Sample Response:**

```
{
	"status": "success",
	"message": "User retrieved successfully",
	"user_id": 123,
	"first_name": "Agam",
	"last_name": "Sidhu",
	"email": "agam@agam.com"
	"username": "agam123"
}
```

**Response Details:**

* `status`: Status of the request. Can be one of the following: success, failure, error.
	* User attributes are only provided if the status is `success`
* `message`: A message providing additional details for the status.


### Update User <a name="update-user"></a>

**Route:** `/users/update`

**Method:** `post`

**Sample Request:**

```
{
	"id": 123,
	"first_name": "Thomas"
}
```
**Sample Response:**

```
{
	"status": "success",
	"message": "User successfully updated"
}
```

**Response Details:**

* `status`: Status of the request. Can be one of the following: success, failure, error.
* `message`: A message providing additional details for the status.
