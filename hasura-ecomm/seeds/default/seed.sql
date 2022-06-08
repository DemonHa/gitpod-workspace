INSERT INTO "public"."users" ("id", "name")

-- Describe the dataset:
SELECT
  CONCAT('u', "t") AS "id",
  CONCAT('User', "t") AS "name"

-- Set the size of the dataset:
FROM generate_series(1, 30) AS "t"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "userss_pkey"
DO UPDATE SET "name" = EXCLUDED."name";

INSERT INTO "public"."rooms"
("id", "user_id", "name")

-- Describe the dataset:
SELECT
  CONCAT('r', "p") AS "id",
  -- randomic user_id (u1...u30)
  CONCAT('u', floor(random() * (30 - 1 + 1) + 1)) AS "user_id",
  CONCAT('Room', "p") AS "name"

-- Set the size of the dataset:
FROM generate_series(1, 100) AS "p"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "rooms_pkey"
DO UPDATE SET
  "user_id" = EXCLUDED."user_id";

INSERT INTO "public"."messages"
("id", "user_id", "room_id", "message")

-- Describe the dataset:
SELECT
  CONCAT('m', "m") AS "id",
  -- randomic user_id (u1 .. u30)
  CONCAT('u', floor(random() * (30 - 1 + 1) + 1)) AS "user_id",
  -- randomic room_id (r1 .. r100)
  CONCAT('r', floor(random() * (100 - 1 + 1) + 1)) AS "room_id",
  CONCAT('Message example', "m") AS "message"

-- Set the size of the dataset:
FROM generate_series(1, 200) AS "m"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "messages_pkey"
DO UPDATE SET
  "user_id" = EXCLUDED."user_id",
  "room_id" = EXCLUDED."room_id",
  "message" = EXCLUDED."message"
