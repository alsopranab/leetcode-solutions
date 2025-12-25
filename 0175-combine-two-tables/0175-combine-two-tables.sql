SELECT firstName, lastName, city, state
    FROM Person p
    LEFT JOIN Address A
        ON p.personId=A.personId;
        