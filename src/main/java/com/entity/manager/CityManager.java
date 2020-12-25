package com.entity.manager;

import com.entity.City;
import com.repository.CityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityManager {

    @Autowired
    private CityRepository cityRepository;

    public City save(City city) {
        return cityRepository.save(city);
    }

    public City getCity(Long cityId) {
        return cityRepository.getOne(cityId);
    }

    public List<City> getAllCity() {
        return cityRepository.findAll();
    }
}
