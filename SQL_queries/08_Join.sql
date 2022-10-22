
-- Join covid deaths and covid vaccinations

--select * from [Portfolio Project]..CovidDeaths  CD
--join [Portfolio Project]..CovidVaccinations  CV
--on cd.location = cv.location and cd.date = cv.date
--where cd.continent is not null
--order by 1,2

select CD.continent, CD.location, CD.date, CD.population, CV.new_vaccinations 
from [Portfolio Project]..CovidDeaths  CD
join [Portfolio Project]..CovidVaccinations  CV
on cd.location = cv.location and cd.date = cv.date
where cd.continent is not null
order by 1,2