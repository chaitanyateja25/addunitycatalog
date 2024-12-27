# MongoDB Docker Setup

This guide covers the setup and basic administration of MongoDB within a Docker container using Docker Compose. It includes instructions for using environment variables, initializing the database with a root user, and creating additional users with custom roles.

## Getting Started

### Prerequisites

- Docker
- Docker Compose

Ensure Docker and Docker Compose are installed on your system.

### Setup

1. **Create `.env` File**

Create a `.env` file in the same directory as your `docker-compose.yml` to store environment variables:

```bash
ROOT_USERNAME=
ROOT_PASSWORD=
HOST_PORT=
```


2. **Start MongoDB**

Navigate to the directory containing your `docker-compose.yml` and run:

```bash
docker-compose up -d
```


>This command starts a MongoDB instance in detached mode.

### Configuration

    Image: Uses mongo:latest.
    Container Name: mongodb.
    Environment Variables: Utilizes ROOT_USERNAME, ROOT_PASSWORD, HOST_PORT for setup.
    Volumes: Maps mongodb_data to /data/db inside the container for data persistence.

## Creating Roles and Users
Access MongoDB Shell
```bash
docker exec -it mongodb mongo -u ${MONGODB_ROOT_USERNAME} -p ${MONGODB_ROOT_PASSWORD} --authenticationDatabase admin
```

### Create Custom Roles

Within the MongoDB shell:

```javascript
use myDatabase
db.createRole({
  role: "customRole",
  privileges: [
    { resource: { db: "myDatabase", collection: "" }, actions: ["find", "insert", "update"] },
  ],
  roles: []
})

```

### Create User
```javascript
db.createUser({
  user: "customUser",
  pwd: "customPassword",
  roles: [{ role: "customRole", db: "myDatabase" }]
})

```

### Understanding Permissions

Permissions in MongoDB are assigned through roles, which can include actions such as find, insert, update, and delete.

    find: Allows reading documents from a collection.
    insert: Allows inserting new documents into a collection.
    update: Allows modifying existing documents in a collection.
    delete: Allows removing documents from a collection.

For detailed information on MongoDB permissions and role-based access control, consult the [MongoDB documentation](https://www.mongodb.com/docs/manual/core/authorization/).