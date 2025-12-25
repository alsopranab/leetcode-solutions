SELECT firstName, lastName, city, state
    FROM Person p
    LEFT JOIN Address A
       USING(personId);
       
