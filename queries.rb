# return all heroes
SELECT * FROM heroes;

# return the oldest hero
    #sort the data 
    #limit
SELECT heroes.name 
FROM heroes
ORDER BY heroes.created ASC
LIMIT 1;

# return all heroes in order by created year, most recent first
SELECT heroes.name, heroes.created
FROM heroes
ORDER BY heroes.created ASC
LIMIT 1;


# return count of heroes in each franchise
# which table? 
SELECT franchise.name, COUNT(franchise.id)
FROM franchises
INNER JOIN heroes 
ON franchises.id = heroes.franchise_id
GROUP BY franchise.name;
# return ordered list of franchises by number of heroes, highest to lowest

# return the franchise with the most number of heroes

# return all heroes created between 1963-1975

# return all heroes created between 1963-1975 in order by created date 

# return all heroes in the X-MEN franchise

#return the franchises name and hero count where the hero count is greater than 2

#return the franchise name, hero count in a franchise, and the average year the hero was created in a franchise.
