1select
2round(ifnull(
3(select count(*) from (select distinct requester_id,accepter_id from RequestAccepted ) as r)
4/
5(select count(*) from (select distinct sender_id,send_to_id from FriendRequest) as f),
60),2)
7as accept_rate