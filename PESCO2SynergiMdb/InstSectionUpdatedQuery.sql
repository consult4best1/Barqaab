WITH BlockIdentifier AS (
    -- Step 1: Create a unique block ID for each s-to-e group using a running sum
    SELECT 
        id,
        gps_no,
        x,
        y,
        s_e,
        SUM(CASE WHEN s_e = 's' THEN 1 ELSE 0 END) OVER (ORDER BY id) AS block_id
    from TestTbl
),
BlockBoundaries AS (
    -- Step 2: Extract the FromNodeID and ToNodeID for each block
    SELECT 
        id,
        gps_no,
        x,
        y,
        s_e,
        block_id,
        MAX(CASE WHEN s_e = 's' THEN gps_no END) OVER (PARTITION BY block_id) AS FromNodeID,
        MAX(CASE WHEN s_e = 'e' THEN gps_no END) OVER (PARTITION BY block_id) AS ToNodeID
    FROM BlockIdentifier
), 
DistanceCalculation AS (
    -- Step 3: Calculate the distance from the current row to the next row within the same block
    SELECT 
        id,
        gps_no,
        x,
        y,
        s_e,
        block_id,
        FromNodeID,
        ToNodeID,
        CASE 
            -- Do not calculate distance starting from the 'e' row
            WHEN s_e = 'e' THEN 0 
            ELSE SQRT(POWER(LEAD(x) OVER (PARTITION BY block_id ORDER BY id) - x, 2) + 
                      POWER(LEAD(y) OVER (PARTITION BY block_id ORDER BY id) - y, 2))
        END AS segment_distance
    FROM BlockBoundaries
)
-- Step 4: Output final columns and calculate the total sum for the 'e' row
SELECT 
    id,
    gps_no,
    x,
    y,
    s_e,
    case s_e when 'E' THEN FromNodeID else null end FromNodeID,
    case s_e when 'E' THEN ToNodeID else null end ToNodeID,
    
    CASE 
        WHEN s_e = 'e' 
            THEN SUM(segment_distance) OVER (PARTITION BY block_id)
            ELSE null
    END AS distance 

FROM DistanceCalculation
ORDER BY id;

