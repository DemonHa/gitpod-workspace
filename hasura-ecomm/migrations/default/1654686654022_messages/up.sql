CREATE TABLE IF NOT EXISTS "public"."messages" (
  "id" TEXT,
  "user_id" TEXT NOT NULL,
  "room_id" TEXT NOT NULL,
  "message" TEXT NOT NULL,
  "created_at" TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  CONSTRAINT "messages_pkey" PRIMARY KEY ("id"),
  CONSTRAINT "messages_user_id_fkey"
  FOREIGN KEY (user_id) REFERENCES "public".users(id),
  CONSTRAINT "messages_room_id_fkey"
  FOREIGN KEY (room_id) REFERENCES "public".rooms(id)
)
