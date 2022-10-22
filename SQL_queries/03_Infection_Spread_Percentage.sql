
-- Total cases VS Population

Select location, date, total_cases,total_deaths,population, (total_cases/population)*100 as Spread_Percentage, (total_deaths/total_cases)*100 as Death_Percentage
From [Portfolio Project]..CovidDeaths
where location like '%India%'
order by 1,2