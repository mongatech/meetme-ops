# Events API

---

## Table of Contents

1. [Create Event](#create-event)
2. [Delete Event](#delete-event)
3. [Get Event](#get-event)
4. [Invite to Event](#invite-to-event)
5. [Join Event](#join-event)
6. [Update Event](#update-event)

## Endpoints

### Create Event <a name="create-event"></a>

**Route:** `/events/create`

**Method:** `post`

**Sample Request:**

```
{
	"title": "Birthday Party",
	"thumbnail": "blob1234",
	"description": "My 21st birthday party..."
	"address_line_1": "12345 Some Street"
	"address_line_2": "APT 000"
	"address_line_3": "",
	"city": "Some City",
	"state": "SS",
	"zip_5": "12345",
	"start_time": "9:00 AM 01/01/2001",
	"end_time": "12:00 AM 01/02/2001"
}
```

**Sample Response:**

```
{
	"event_id": 123,
	"status": "success",
	"message": "Event successfully created"
}
```

**Response Details:**

* `event_id`: ID of the newly created event used as a reference in other endpoints.
* `status`: Status of the request. Can be one of the following: success, failure, error.
* `message`: A message providing additional details for the status.

### Delete Event <a name="delete-event"></a>

**Route:** `/events/delete`

**Method:** `post`

**Sample Request:**

```
{
	"event_id": 123
}
```

**Sample Response:**

```
{
	"status": "success",
	"message": "Event successfully deleted"
}
```

**Response Details:**

* `status`: Status of the request. Can be one of the following: success, failure, error.
* `message`: A message providing additional details for the status.

### Get Event <a name="get-event"></a>

**Route:** `/events/[id]`

**Method:** `get`

**Sample Request:**

```
http://localhost:8000/api/v1/events/123
```

**Sample Response:**

```
{
	"status": "success",
	"message": "Event retrieved successfully",
	"event_id": 123,
	"title": "Birthday Party",
	"thumbnail": "blob1234",
	"description": "My 21st birthday party..."
	"address_line_1": "12345 Some Street"
	"address_line_2": "APT 000"
	"address_line_3": "",
	"city": "Some City",
	"state": "SS",
	"zip_5": "12345",
	"start_time": "9:00 AM 01/01/2001",
	"end_time": "12:00 AM 01/02/2001"
	
}
```

**Response Details:**

* `status`: Status of the request. Can be one of the following: success, failure, error.
	* Event attributes are only provided if the status is `success`
* `message`: A message providing additional details for the status.

### Invite to Event <a name="invite-to-event"></a>

**Route:** `/events/invite`

**Method:** `post`

**Sample Request:**

```
{
	"event_id": 123,
	"friend_ids": [1, 2],
	"group_ids": [3, 4],
	"visibility": "private"
}
```

*Note:*

* `visibility`: Can either be public or private. Private will require an invite for a user to view it.
* If friends are part of the groups being invited, only a single invite will be sent to that friend.

**Sample Response:**

```
{
	"status": "success",
	"message": "Invites sent successfully"
}
```

**Response Details:**

* `status`: Status of the request. Can be one of the following: success, failure, error.
* `message`: A message providing additional details for the status.

### Join Event <a name="join-event"></a>

**Route:** `/events/join`

**Method:** `post`

**Sample Request:**

```
{
	"event_id": 123
}
```

**Sample Response:**

```
{
	"status": "success",
	"message": "Event joined successfully"
}
```

**Response Details:**

* `status`: Status of the request. Can be one of the following: success, failure, error.
	* An event can only be joined if its visibility is `public`
* `message`: A message providing additional details for the status.

### Update Event <a name="update-event"></a>

**Route:** `/events/update`

**Method:** `post`

**Sample Request:**

```
{
	"id": 123,
	"title": "Birthday Party Updated"
}
```

*Note:* Any attribute used to create the time can be provided in this request to update the event. 

**Sample Response:**

```
{
	"status": "success",
	"message": "Event successfully updated"
}
```

**Response Details:**

* `status`: Status of the request. Can be one of the following: success, failure, error.
* `message`: A message providing additional details for the status.

