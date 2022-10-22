
-- Rolling Sum of Vaccinations & CTE

--select CD.continent, CD.location, CD.date, CD.population, CV.new_vaccinations,
--sum(convert(int,cv.new_vaccinations)) over (partition by CD.location order by cd.location, cd.date) as PeopleVaccinated
--from [Portfolio Project]..CovidDeaths  CD
--join [Portfolio Project]..CovidVaccinations  CV
--on cd.location = cv.location and cd.date = cv.date
--where cd.continent is not null
--order by 1,2

-- Using CTE FOR Vaccination Rate

With VaccPerc(continent,location,date,population,new_vaccinations,PeopleVaccinated) 
as
(
select CD.continent, CD.location, CD.date, CD.population, CV.new_vaccinations,
sum(convert(int,cv.new_vaccinations)) over (partition by CD.location order by cd.location, cd.date) as PeopleVaccinated
from [Portfolio Project]..CovidDeaths  CD
join [Portfolio Project]..CovidVaccinations  CV
on cd.location = cv.location and cd.date = cv.date
where cd.continent is not null
)
--Select * , (PeopleVaccinated/population)*100 as Vaccination_Rate
--from VaccPerc 

