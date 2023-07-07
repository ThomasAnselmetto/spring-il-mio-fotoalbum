package org.lesson.fotoportfolio.api;

import org.lesson.fotoportfolio.model.Photo;
import org.lesson.fotoportfolio.repository.PhotoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("api/v1/photos")
public class PhotoRestController {
    @Autowired
    private PhotoRepository photoRepository;

    @GetMapping
    public List<Photo> index(){
        return photoRepository.findAll();
    }
}
