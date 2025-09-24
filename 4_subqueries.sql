select * from ( -- subquery starts here

    select *
    from job_postings_fact
    WHERE extract(MONTH from job_posted_date) = 1
) as january_jobs;

-- subquery ends here