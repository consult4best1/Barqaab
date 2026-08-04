WITH BlockGrouped AS (
    -- Step 1: Create a unique block ID for each S to E sequence
    -- Every time an 'S' is encountered, it increments the block count.
    SELECT 
    *,
        /*id, 
        gps_no, 
        s_e, 
        x, 
        y,*/
        COUNT(CASE WHEN s_e = 'S' THEN 1 END) OVER(ORDER BY id) AS block_id
    FROM TestTbl
),
Distances AS (
    -- Step 2: Calculate the distance from the current row to the next row
    -- We exclude the 'E' row from generating a distance forward by checking s_e.
    SELECT 
    *,
        /*id, 
        gps_no, 
        s_e, 
        x, 
        y,
        block_id,*/
        CASE 
            WHEN s_e = 'E' THEN 0
            ELSE SQRT(POWER(LEAD(x) OVER(PARTITION BY block_id ORDER BY id) - x, 2) + 
                      POWER(LEAD(y) OVER(PARTITION BY block_id ORDER BY id) - y, 2))
        END AS next_node_dist
    FROM BlockGrouped
),
BlockTotals AS (
    -- Step 3: Sum the distances inside each block
    SELECT 
    *,
       /* id, 
        gps_no, 
        s_e, 
        x, 
        y,*/
        SUM(next_node_dist) OVER(PARTITION BY block_id) AS total_block_distance
    FROM Distances
)
-- Step 4: Display only the 'E' rows with their total block distances
SELECT
*
    /*
    id,
    gps_no,
    s_e,
    x,
    y,
    total_block_distance,
    case s_e when 'e' then total_block_distance else null end newdst
    */
FROM BlockTotals
--WHERE s_e = 'E'
ORDER BY id;

/*
1.4142135623731	    1.4142135623731
1063.48859890457	1063.48859890457
*/