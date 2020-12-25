package com.entity.manager;

import com.entity.Court;
import com.repository.CourtRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourtManager {

    @Autowired
    private CourtRepository courtRepository;

    public Court save(Court court) {
        return courtRepository.save(court);
    }

    public Court getCase(Long courtId) {
        return courtRepository.getOne(courtId);
    }

    public List<Court> getAllCourt() {
        return courtRepository.findAll();
    }

}
