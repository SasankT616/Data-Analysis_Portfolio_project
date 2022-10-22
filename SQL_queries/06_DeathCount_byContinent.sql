
-- Death Count by Continent

--Select * 
--from [Portfolio Project]..CovidDeaths

Select location, Max(cast(total_deaths as int)) as death_count
from [Portfolio Project]..CovidDeaths
Where continent is null
group by location
order by death_count desc