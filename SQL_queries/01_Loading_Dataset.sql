--Select *
--From [Portfolio Project].dbo.CovidDeaths

--Select *
--From [Portfolio Project].dbo.CovidVaccinations

Select location, date, total_cases,new_cases, total_deaths, population
From [Portfolio Project]..CovidDeaths
order by 1,2