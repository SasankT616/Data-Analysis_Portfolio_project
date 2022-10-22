
-- Global Stats vs Date

--Select * 
--from [Portfolio Project]..CovidDeaths

--Select date, sum(new_cases) as New_Cases, Sum(cast(new_deaths as int)) as New_Deaths, (sum(cast(new_deaths as int)))/(Sum(new_cases))*100 as death_perc
--from [Portfolio Project]..CovidDeaths
--where continent is not null
--group by date
--order by 1,2

Select date, sum(new_cases) as New_Cases, Sum(cast(new_deaths as int)) as New_Deaths, (sum(cast(new_deaths as int)))/(Sum(new_cases))*100 as death_perc
from [Portfolio Project]..CovidDeaths
where continent is not null
group by date
order by death_perc desc