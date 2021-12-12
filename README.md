# Pewlett-Hackard Analysis

## Overview

Bobby and I are under contract with Pewlett Hackard to redo their messy and outdated employee database. We began by creating multiple tables via pgAdmin and added those tables into a Postgres database called PH-EmployeeDB. Afterwards, Bobby's manager asked us to put together a list of employees who are nearing retirement, per title, and identify which employees are eligible to participate in a mentorship program that's in the works. The retiring employees in this tentative program will essentially train their own replacements while gradually lessening their workloads until retirement. It's a cool concept, actually. They call this retiring group of employees the "silver tsunami," which is an absolutely awesome name. Who thought of that and when were they fired?

## Results

### Retiring Employees by Title

<img width="171" alt="Retiring_by_Title" src="https://user-images.githubusercontent.com/92264929/145722305-b89e91f3-b5c2-4f8e-9862-3a247c25f974.png"> 

#### *Senior Level Staff

After developing a table of data with retiring employees by title, we determined that "senior" titles represent the largest percentage of positions within Pewlett-Hackard with soon-to-retire employees. "Senior Engineer" (32.5%) and "Senior Staff" (31.3%) positions account for 63.8% of all retiring employees. This finding isn't surprising, as it makes sense that employees employed for the longest amount of time in the company have since been promoted into senior level roles.

#### *Assistant Engineer

Conversely, retiring employees with the entry level position of "Assistant Engineer" account for 1.9% of retiring employees. This finding might suggest that this small percentage of retiring employees haven't been with the company long enough to advance. It could also imply that these employees possess a more limited skill set than their mid and senior level counterparts. But why would Pewlett-Hackard continue to employee under-achieving personnel until retirement? Perhaps this will highlight a subset of employees needing reevaluation to Bobby's supervisor.

#### *Middle of the Pack

Engineers (15.7%), Staff (13.5%), Technique Leaders (5.0%) and Managers (0.002%) account for the middle tier of Pewlett-Hackard roles, and represent a total of approximately 34.3% of Pewlett-Hackard's retiring workforce. Interesting to note: there are only two (2) lower-level managers among a total of 90,398 retiring employees.

### Mentorship Eligibility

<img width="557" alt="Mentorship_Eligibility" src="https://user-images.githubusercontent.com/92264929/145729071-4ff96561-68c2-44e4-b0d8-62e63d43ff4b.png">

#### *Year of the Snake

There are 1,549 employees that are eligible to take part in the mentorship program to be offered by Pewlett-Hackard. This set of individuals represent a humbling 1.7% of all the company's retiring employees. Dan, Bobby's supervisor, asked that only retiring employees in their most recent titles born during the calendar year of 1965 be eligible to participate. Why the exclusivity to employees born that year? Not my business.

## Summary

### Creme de la Creme?

90,398 roles will potentially be affected as soon-to-retire employees at Pewlett-Hackard look towards ending their careers. That said, as there are only 1,549 individuals eligible to participate in the upcoming mentorship pilot, each mentor would be responsible for helping fill approximately 58 positions and bringing these new employees up to speed. I'm not sure how being born in 1965 aids in that quest, but I guess Pewlett-Hackard does.

### Trim the Fat

My personal recommendation is to look further into why there are so many retiring Assistant Engineers. This position, as we understand it, is an entry level tech position within the company. I'd like to perform additional analysis to get a clearer picture of why these individuals haven't been promoted beyond this level. An executive more ruthless than Dan might consider axing these potential retirees before they pull the trigger. I, on the other hand, suggest enrolling a percentage of these Assistant Engineers into the mentorship program, where they would be given the opportunity to prove their worth to the organization as a prerequisite to retirement consideration/ideal retirement terms. Perhaps they can work alongside an appropriate mix of senior retiring staff to ensure the positions will be filled by adequate applicants, using the 'junior level retirees' as a litmus test of skill. If the engineer applicant is capable of better performance than already-employed assistant engineers at PEWLETT HACKARD, then dismissal prior to retirement might be considered. At least, the terms of their retirement might be reconsidered. This sounds harsh, but rewarding laziness with top-shelf retirement packages is akin to a professor fanning the class clown while feeding him grapes.

My **QUERY** to highlight these employees would be the following:

<img width="509" alt="Retiring_Assistant_Engineers_Query" src="https://user-images.githubusercontent.com/92264929/145725631-4727d256-f5aa-457e-9e19-129a1e351a3d.png">

As you'll see, I've even retained the mentorship program qualification of being born in 1965. These 78 employees meet all the requirements of potential mentors while also holding a junior level position prior to retirement. Allow them to prove themselves. The below image of the resulting **TABLE** shows the first ten retiring employees to meet this criteria:

<img width="570" alt="RAE_Table" src="https://user-images.githubusercontent.com/92264929/145725707-e4760485-d775-4727-83b5-e17003da5c1e.png">

My hope is that each of these employees will demonstrate their individual value to the company, and be rewarded by way of ideal retirement terms only after stepping up to the plate for a final assessment to show their worth. After all, Pewlett-Hackard only employs the world's greatest engineers.
