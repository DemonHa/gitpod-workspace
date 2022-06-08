CREATE VIEW "public"."message_live" AS

SELECT * FROM
  (
     SELECT
       r.id,
       r.name,
       count(m.*)
     FROM messages m
     LEFT JOIN rooms r
     ON r.id = m.room_id
     GROUP BY r.id, r.name
  )
  as agg_rooms,
  LATERAL
     (
        SELECT m.message, m.created_at, users.name AS user_name
        FROM      messages m
        LEFT JOIN users ON users.id=m.user_id
        WHERE    m.room_id = agg_rooms.id
        ORDER BY m.created_at DESC
        LIMIT 1
     )
AS last_messages