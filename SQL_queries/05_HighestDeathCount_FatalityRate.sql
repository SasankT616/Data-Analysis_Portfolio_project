
-- Highest Death Count & Fatality Rate

Select location, MAX(cast(total_deaths as int)) as Total_Death_Count , Max(total_cases) as Total_Cases, (MAX(cast(total_deaths as int))/Max(total_cases))*100 As Fatality_Rate
From [Portfolio Project]..CovidDeaths
where continent is not null
group by location
--order by Total_Death_Count desc
order by Fatality_Rate desc