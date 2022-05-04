# Pewlett-Hackard-Analysis
## Overview of the Analysis
The purpose of this analysis was to help Pewlett-Hackard determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program by creating queries and utilizing SQL database.  
## Results
- When first reviewing the retirees by title, we noticed that this query resulted in many employees being duplicated due to holding multiple positions within the company.
![Image 5-4-22 at 1 30 PM](https://user-images.githubusercontent.com/101950175/166821158-cdd54a87-e55a-4992-b808-0f24845d17d9.png)
- The duplicate employees were able to be removed by using a DISTINCT ON statement which left us with the employees most recent title within the company.
![Image 5-4-22 at 1 30 PM (1)](https://user-images.githubusercontent.com/101950175/166821465-e3bb80ad-2584-4536-a70c-7d88ae464751.png)
- Majority of the retirees held 'Senior' positions within Pewlett-Hackard.
