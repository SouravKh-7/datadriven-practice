SELECT
  cm.channel,
  cm.content,
  et.severity
FROM chat_msgs AS cm
INNER JOIN err_tracks AS et
  ON SUBSTR(cm.sent_at, 1, 7) = SUBSTR(
    et.first_at,
    1,
    7
    )
WHERE cm.content LIKE '%latency%'
OR cm.content LIKE '%down%'
OR cm.content LIKE '%back%'
OR cm.content LIKE '%pipeline%'
