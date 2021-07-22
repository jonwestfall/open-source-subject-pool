SELECT participant_id, COUNT(*)
FROM (
  SELECT participant_id,completed FROM lime_tokens_77964
  WHERE completed <> "N"
  UNION ALL
  SELECT participant_id,completed FROM lime_tokens_731597
  WHERE completed <> "N"
  UNION ALL
  SELECT participant_id,completed FROM lime_tokens_775549
  WHERE completed <> "N"
  ) as tem
GROUP BY tem.participant_id
ORDER BY tem.participant_id