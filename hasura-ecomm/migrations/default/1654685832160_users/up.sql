CREATE TABLE IF NOT EXISTS "public"."users" (
  "id" TEXT,
  "name" TEXT NOT NULL,
  "created_at" TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  CONSTRAINT "userss_pkey" PRIMARY KEY ("id")
)