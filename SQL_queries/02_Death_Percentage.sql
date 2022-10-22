
-- Total Cases vs Total Deaths in a specific location

Select location, date, total_cases,total_deaths,(total_deaths/ total_cases)*100 as Death_Percentage
From [Portfolio Project]..CovidDeaths
where location like '%India%'
order by 1,2