-- What are the column names?
SELECT * 
FROM users
LIMIT 10;
 
-- Find the email addresses and birthdays of users whose 
-- birthday is between 1980-01-01 and 1989-12-31.
SELECT email, birthday
FROM users
WHERE birthday BETWEEN '1980-01-01' AND '1989-12-31'
LIMIT 10;
   
-- Find the emails and creation date of users 
-- whose created_at date matches this condition.
SELECT email, created_at
FROM users
WHERE created_at < '2017-05-01'
LIMIT 10;

-- Find the emails of the users who received the ‘bears’ test.
SELECT email
FROM users
WHERE test = 'bears'
LIMIT 10;

-- Find all the emails of all users who 
-- received a campaign on website BBB.
SELECT email, campaign
FROM users
WHERE campaign ='AAA-1'
  OR campaign = 'AAA-2'
  OR campaign='BBB-1'
  OR campaign='BBB-2'
LIMIT 10;

-- Find all the emails of all users who received ad copy 2 in 
-- their campaign.
SELECT email
FROM users
WHERE campaign LIKE '%-2'
LIMIT 10;

-- Find the emails for all users who received both a campaign and a test. 
-- These users will have non-empty entries in the 
-- campaign and test columns.
SELECT email
FROM users
WHERE campaign IS NOT NULL 
  AND test IS NOT NULL
LIMIT 10;
