SELECT co.first_name,
       co.last_name,
	   co.email,
	   (ca.goal-ca.pledged) AS "Remaining Goal Amount"
INTO email_contacts_remaining_goal_amount
FROM "contacts" AS co
JOIN "campaign" AS ca
ON (co.contact_id=ca.contact_id)
WHERE ca.outcome='live'
ORDER BY "Remaining Goal Amount" DESC;

-- Check the table
SELECT *FROM email_contacts_remaining_goal_amount;

