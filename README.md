This Laravel application provides an API endpoint for user registration, user login, shop creation, shop list, shop update, shop delete & category creation

## Dependencies

This Laravel application requires the following dependencies:

- PHP >= 8.0.2
- Laravel Framework >= 9.x
- Composer (for dependency management)

## Setup

1. Clone the repository.
2. Install dependencies using Composer:
   ```bash
   composer install
   ```
3. Configure your environment variables (database connection, etc.).
4. Migrate the database:
   ```bash
   php artisan migrate
   ```

# User Registration Endpoint

## Endpoint

- **URL:** `/api/register`
- **HTTP Method:** `POST`

## Request Payload

The registration endpoint expects a JSON payload with the following fields:

- `name` (string, required): The name of the user.
- `email` (string, required): The email address of the user.
- `password` (string, required): The password chosen by the user. (min 16 characters)
- `password_confirmation` (string, required): Confirmation of the password.

Example JSON payload:

```json
{
  "name": "Test Test",
  "email": "test@test.test",
  "password": "passwordpassword",
  "password_confirmation": "passwordpassword"
}
```

# User Login Endpoint

## Endpoint

- **URL:** `/api/login`
- **HTTP Method:** `POST`

## Request Payload

The login endpoint expects a JSON payload with the following fields:

- `email` (string, required): The email address of the user.
- `password` (string, required): The password of the user.

Example JSON payload:

```json
{
  "email": "test@test.test",
  "password": "passwordpassword"
}
```

## Response

- **Success Response:**
  - **Status Code:** 200 OK
  - **Response Body:**
    ```json
    {
      "token": "token_value",
    }
    ```
  - **Explanation:** Upon successful login, a token is returned. This token can be used to authenticate subsequent requests to protected endpoints.
- **Error Response:**
  - **Status Code:** 401 Unauthorized
  - **Response Body:**
    ```json
    {
      "error": "Unauthorized"
    }
    ```
	(Example error response when login credentials are incorrect)
	

# Category Creation Endpoint

## Endpoint

- **URL:** `/api/categories`
- **HTTP Method:** `POST`

## Request Payload

This endpoint allows users to create new categories.

## Authentication
This endpoint requires authentication using Laravel Sanctum. Users must include a valid authentication token in the request header to authorize the creation of a new category.

Example request header:

```
Authorization: Bearer token_value
Content-Type: application/json
```

- `name` (string, required): The name of the category to be created.

Example JSON payload:

```json
{
  "name": "Technology"
}
```

## Response

- **Success Response:**
  - **Status Code:** 201 Created
  - **Response Body:**
    ```json
    {
		"message": "Category creation was successful",
		"category": {
			"id": 1,
			"name": "Technology",
			"created_at": "2024-02-19T12:00:00Z",
			"updated_at": "2024-02-19T12:00:00Z"
		}
	}
    ```
- **Error Response:**
  - **Status Code:** 402 Unprocessable Entity
  - **Response Body:**
    ```json
    {
		"message": "The given data was invalid.",
		"errors": {
			"name": [
				"The name field is required."
			]
		}
	}
    ```

# Shop Endpoints

This document provides an overview of the endpoints available for managing shops in the AgroApps PC backend.

## Authentication

Some endpoints require authentication using Laravel Sanctum. Users must include a valid bearer token in the request header to access authenticated endpoints.

**Example request header:**
```
Authorization: Bearer your_token_here
Content-Type: application/json
```

## Available Endpoints

### 1. Shop List Endpoint

Retrieve a list of shops. If the user is authenticated, only the shops created by that user will be returned. Otherwise, all shops will be returned. The endpoint supports filtering and pagination.

- **URL:** `/api/shops`
- **Method:** `GET`
- **Query Parameters:**
  - `city` (optional): Filter shops by city.
  - `category_id` (optional): Filter shops by category_id.
  - `page` (optional): The page number for pagination. Default is 1.
- **Responses:** Success response with paginated list of shops or error response if unauthorized.

**Example request:**
```
GET /api/shops?city=Thessaloniki&category_id=1&page=1
```

### 2. Shop Creation Endpoint

Create a new shop. This endpoint is available only for authenticated users.

- **URL:** `/api/shops`
- **Method:** `POST`
- **Payload:** JSON payload containing shop details.
- **Authentication:** Required (Bearer token).
- **Responses:** Success response with the created shop data or error response if validation fails or unauthorized.

**Example request:**
```
POST /api/shops
Content-Type: application/json

{
  "name": "New Shop",
  "description": "Description of the new shop",
  "city": "Thessaloniki",
  "open_hours": "09:00 - 17:00",
  "category_id": "1",
  "address": "Test str"
}
```

### 3. Shop Update Endpoint

Update an existing shop. This endpoint is available only for authenticated users who own the shop.

- **URL:** `/api/shops/{shop_id}`
- **Method:** `PUT`
- **Path Parameters:** `shop_id` (required) - The ID of the shop to be updated.
- **Payload:** JSON payload containing updated shop details.
- **Authentication:** Required (Bearer token).
- **Responses:** Success response with the updated shop data or error response if validation fails, shop not found, or unauthorized.

**Example request:**
```
PUT /api/shops/123
Content-Type: application/json

{
  "name": "Updated Shop Name",
  "description": "Updated description of the shop",
  "city": "Thessaloniki",
  "open_hours": "09:00 - 17:30",
  "address": "Test str 2"
}
```

### 4. Shop Deletion Endpoint

Delete an existing shop. This endpoint is available only for authenticated users who own the shop.

- **URL:** `/api/shops/{shop_id}`
- **Method:** `DELETE`
- **Path Parameters:** `shop_id` (required) - The ID of the shop to be deleted.
- **Authentication:** Required (Bearer token).
- **Responses:** Success response if the shop is deleted successfully or error response if shop not found or unauthorized.

**Example request:**
```
DELETE /api/shops/123
```