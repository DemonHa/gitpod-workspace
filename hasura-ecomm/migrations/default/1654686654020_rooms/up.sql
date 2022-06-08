CREATE TABLE IF NOT EXISTS "public"."rooms" (
  "id" TEXT,
  "user_id" TEXT NOT NULL,
  "name" TEXT NOT NULL,
  "created_at" TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  CONSTRAINT "rooms_pkey" PRIMARY KEY ("id"),
  CONSTRAINT "rooms_user_id_fkey"
  FOREIGN KEY (user_id) REFERENCES "public".users(id)
);