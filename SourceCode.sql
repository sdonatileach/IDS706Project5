
SELECT count(*) count_of_rows,
         count(distinct id) count_of_listings
FROM denver_listings ;

CREATE table listings_cleaned as
SELECT id,
name,
         price,
         room_type,
         neighbourhood,
         last_review,
         sum(number_of_reviews) all_reviews
FROM denver_listings
WHERE neighbourhood is NOT null
        AND neighbourhood NOT LIKE '3%'
        AND price > 0
GROUP BY  id, name, price, room_type, neighbourhood, last_review
ORDER BY  id ;

SELECT count(*) count_of_rows,
         count(distinct id) count_of_listings
FROM listings_cleaned ;

SELECT 
name,
id,
         price,
         room_type,
         neighbourhood,
         all_reviews,
         last_review
FROM listings_cleaned
GROUP BY  name, id, price, room_type, neighbourhood, all_reviews, last_review
ORDER BY  price DESC limit 10 ;

SELECT id,
         price,
         room_type,
         neighbourhood,
         all_reviews
FROM listings_cleaned
GROUP BY
id,
         price,
         room_type,
         neighbourhood,
         all_reviews
ORDER BY  all_reviews DESC limit 10 ;