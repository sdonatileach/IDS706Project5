Project 5
Goal: Use a cloud SQL solution such GCP Big Query, or AWS Athena to Query a Public Dataset and find a useful insight.

I found a dataset from Airbnb with information about listings in Denver, Colorado.  I uploaded the data to an S3 bucket and I queried with AWS Athena.

I started by cleaning the data and ensured there weren't any duplicate rows by aggregating the number of reviews for each listing.

Next, I looked at the most expensive listings and found one for almost $5000 per night without any reviews.  To ensure the reviews data could be trusted, I did another query to sort listings with the most reviews.  This showed me a $100 listing that had over 1000 reviews.

My conclusion from this was how it made sense from a demand standpoint.  More people will be able to afford $100/night, therefore it will have more reviews, and vice versa for the $5000 listing.
