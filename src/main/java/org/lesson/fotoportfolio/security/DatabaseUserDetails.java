package org.lesson.fotoportfolio.security;

import org.lesson.fotoportfolio.model.Role;
import org.lesson.fotoportfolio.model.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class DatabaseUserDetails implements UserDetails {
//    per implementare un interfaccia devo implementare anche tutti i suoi metodi
//    GrantedAuthority e' la superinterfaccia <? va bene qualunque model basta che estenda GrantedAuthority '
    private final Integer id;
    private final String username;
    private final String password;

    private final Set<GrantedAuthority> authorities;
//    ho bisogno del costruttore ma al posto dei parametri soliti passo un oggetto User e setto i campi grazie a user.get...()

    public DatabaseUserDetails(User user) {
        this.id = user.getId();
        this.username = user.getEmail();
        this.password = user.getPassword();
//    creo un hashset (L'ordine degli elementi nell'insieme potrebbe variare, poiché un HashSet non mantiene un ordine specifico degli elementi.)
        this.authorities = new HashSet<>();
//        itero sui ruoli e li trasformi in authorities

        for (Role role : user.getRoles()){
            authorities.add(new SimpleGrantedAuthority(role.getName()));
        }
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
