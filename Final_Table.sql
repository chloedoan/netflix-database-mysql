SELECT t.*, c.country, d.director, l.listed_in, r.description, av.averageRating, av.numVotes
FROM netflix2.titles t
LEFT JOIN netflix2.country_cleaned c
  ON t.show_id = c.show_id
LEFT JOIN netflix2.director d 
  ON t.show_id = d.show_id
LEFT JOIN netflix2.listed_in l
  ON t.show_id = l.show_id
LEFT JOIN netflix2.rating_description r 
  ON t.rating = r.rating
LEFT JOIN netflix2.avgRating av 
  ON t.show_id = av.show_id
LIMIT 26000
