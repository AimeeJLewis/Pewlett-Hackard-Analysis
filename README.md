# Pewlett-Hackard-Analysis
## Overview of the Analysis
The purpose of this analysis was to help Pewlett-Hackard determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program by creating queries and utilizing SQL database.  
## Results
- When first reviewing the retirees by title, we noticed that this query resulted in many employees being duplicated due to holding multiple positions within the company.
![Image 5-4-22 at 1 30 PM](https://user-images.githubusercontent.com/101950175/166821158-cdd54a87-e55a-4992-b808-0f24845d17d9.png)
- The duplicate employees were able to be removed by using a DISTINCT ON statement which left us with the employees most recent title within the company.
![Image 5-4-22 at 1 35 PM](https://user-images.githubusercontent.com/101950175/166822548-b0199d87-bbcd-4eef-86b3-bcb489ea502c.png)
- Majority of the retirees held 'Senior' positions within Pewlett-Hackard.
![Image 5-4-22 at 1 37 PM](https://user-images.githubusercontent.com/101950175/166822480-dc682b03-24f4-4051-8563-e99397a03470.png)
- All of the employees whose birth year is 1965 was placed into a mentorship eligibility list.![Image 5-4-22 at 1 40 PM](https://user-images.githubusercontent.com/101950175/166822316-cec7df0e-8585-4f8b-a227-426e9f0a8dd4.png)
