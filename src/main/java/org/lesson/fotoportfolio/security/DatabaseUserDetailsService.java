package org.lesson.fotoportfolio.security;

import org.lesson.fotoportfolio.model.User;
import org.lesson.fotoportfolio.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DatabaseUserDetailsService implements UserDetailsService {
@Autowired
    UserRepository userRepository;
//devi forzatamente implementare il metodo cyhe come firma... nome(loadUserByUsername) prende in ingresso una stringa (che idealmente e'username ossia il parametro che identifica l'utente) e restitutisce un oggetto di tipo UserDetails cioe' nel caso un istanza di DatabaseUserDetails'

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        devo recuperare uno User da DB a partire dalla Stringa username
        Optional<User> result = userRepository.findByEmail(username);
        if (result.isPresent()) {
            //        costruire uno UserDetails a partire da quello user se l'ho trovato
          return  new DatabaseUserDetails(result.get());//ho preso i dati dal costruttore di DatabaseUserDetails e gli passo il result e l'oggetto e' coerente perche' e' un UserDetails
        } else {
            throw new UsernameNotFoundException("User With email " + username + "Not Found");
        }
    }
}
