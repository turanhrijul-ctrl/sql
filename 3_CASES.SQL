select
    count(job_id) as no_of_jobs,
    Case 
        when job_location = 'New York, NY' then 'local'
        when job_location = 'Anywhere' then 'remote'
        else 'onsite'
    End as location_category

from job_postings_fact 

WHERE

    job_title_short = 'Data Analyst'

GROUP BY location_category

;