package org.lesson.fotoportfolio.api;

import jakarta.validation.Valid;
import org.lesson.fotoportfolio.model.Photo;
import org.lesson.fotoportfolio.repository.PhotoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

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
    @GetMapping("/{id}")
    public Photo get(@PathVariable Integer id){
//    se c'e me lo faccio passare dal photoRepo'
        Optional<Photo> photoById = photoRepository.findById(id);
//        quindi setto se e' presente se ho risposta positiva faccio il get in caso contrario lancio eccezione'
        if (photoById.isPresent()) {
            return photoById.get();
        }else{
            throw new ResponseStatusException(HttpStatus.NOT_FOUND);
        }
    }


    //Tendenzialmente al momento non mi servovo tutti i method ma li creo lo stesso dovessero servire in un altro momento
    // servizio per creare un nuovo book, che arriva come JSON nel Request Body
    @PostMapping
    public Photo create(@Valid @RequestBody Photo photo) {
        try {
            return photoRepository.save(photo);
        } catch (RuntimeException e) {
            // manipolo il bindingResult...
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST);
        }
    }
    @PutMapping("/{id}")
    public Photo update(@PathVariable Integer id, @Valid @RequestBody Photo photo) {
        photo.setId(id);
        return photoRepository.save(photo);
    }
    // servizio per cancellare un book preso per id
    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        photoRepository.deleteById(id);
    }
//    servizio della paginazione(passo due parametri che arrivano dalla request)
@GetMapping("/page")
    public Page<Photo> page(
//            @RequestParam(defaultValue = "5") Integer size,
//            @RequestParam(defaultValue = "0") Integer page
Pageable pageable ){
//    creo un pageable a partire da size e page
//    Pageable pageable = PageRequest.of(page,size);
    return photoRepository.findAll(pageable);
}


}
