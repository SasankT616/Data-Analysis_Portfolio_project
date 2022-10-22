
-- Highest Infection Rate 

Select location,MAX(total_cases),MAX(total_deaths),population, MAX(total_cases/population)*100 as Spread_Percentage, MAX(total_deaths/population)*100 as Death_Percentage
From [Portfolio Project]..CovidDeaths
--where location like '%India%'
group by location, population
order by Spread_Percentage desc
--order by Death_Percentage desc