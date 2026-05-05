WITH donation_counts AS (
    SELECT
        assignment_id,
        COUNT(donation_id) AS num_total_donations
    FROM
        donations
    GROUP BY
        assignment_id
),
ranked_assignments AS (
    SELECT
        a.assignment_name,
        a.region,
        a.impact_score,
        dc.num_total_donations,
        ROW_NUMBER() OVER (PARTITION BY a.region ORDER BY a.impact_score DESC) AS rank_in_region
    FROM
        assignments a
    JOIN
        donation_counts dc ON a.assignment_id = dc.assignment_id
    WHERE
        dc.num_total_donations > 0
)
SELECT
    assignment_name,
    region,
    impact_score,
    num_total_donations
FROM
    ranked_assignments
WHERE
    rank_in_region = 1
ORDER BY
    region ASC;