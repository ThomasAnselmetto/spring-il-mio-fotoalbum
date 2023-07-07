package org.lesson.fotoportfolio.repository;

import org.lesson.fotoportfolio.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User,Integer> {
//    metodo che recuper uno username tramite email(che abbiammo settato come usertname)
   Optional<User> findByEmail(String email);

}
