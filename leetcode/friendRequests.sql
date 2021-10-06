WITH t1 AS
(
    SELECT DISTINCT sender_id,send_to_id
    FROM friend_request
), t2 AS 
(
    SELECT DISTINCT requester_id,accepter_id 
    FROM request_accepted
) 

SELECT IFNULL((
    SELECT DISTINCT
    ROUND ((SELECT COUNT (*) FROM t2)/(SELECT COUNT(*) FROM t1),2) FROM t1,t2
),0) 'accept_rate';