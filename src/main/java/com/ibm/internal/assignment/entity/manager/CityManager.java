package com.ibm.internal.assignment.entity.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.internal.assignment.entity.City;
import com.ibm.internal.assignment.repository.CityRepository;

@Service
public class CityManager {
@Autowired
private CityRepository cityRepository;

public City save(City city)
{
	return cityRepository.save(city);
}

public City getCity(Long cityId)
{
	return cityRepository.getOne(cityId);
}

public List<City>  getAllCity()
{
	return cityRepository.findAll();
}
}
