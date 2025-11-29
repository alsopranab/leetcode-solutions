SELECT P.firstName, P.lastName, A.city, A.state
FROM Person AS P
left join Address AS A ON P.personId=A.personId;

