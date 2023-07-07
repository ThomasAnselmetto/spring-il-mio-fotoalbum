package org.lesson.fotoportfolio.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfiguration {
/* per definire un authenticationProvider ho bisogno di:
    -uno UserDetailsService
    -un PasswordEncoder

 */


//    UserDetailsService
@Bean
    DatabaseUserDetailsService userDetailsService(){
    return new DatabaseUserDetailsService();
}

//PasswordEncoder(deduce l'algoritmo di encoding dalla stringa della psw stessa)
@Bean
    PasswordEncoder passwordEncoder(){
    return PasswordEncoderFactories.createDelegatingPasswordEncoder();
}

@Bean
    DaoAuthenticationProvider authenticationProvider(){
//    creo un nuovo oggetto di tipo DAO che unifichera' gli elementi settati nei Bean sopra(userDetailsService e PasswordEncoder)'
DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
    authProvider.setUserDetailsService(userDetailsService());
    authProvider.setPasswordEncoder(passwordEncoder());
    return authProvider;

}

    @Bean
    SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        // definisco la catena di filtri
        http.authorizeHttpRequests()
                .requestMatchers("/categories").hasAuthority("ADMIN")
                .requestMatchers("/photos/edit/**").hasAuthority("ADMIN")
                .requestMatchers("/photos/create").hasAuthority("ADMIN")
                .requestMatchers("/photos/**").hasAnyAuthority("ADMIN", "USER")
                .requestMatchers(HttpMethod.POST, "/photos/**").hasAuthority("ADMIN")
                .requestMatchers("/**").permitAll()
                .and().formLogin()
                .and().logout();
        // disabilitiamo csfr per poter invocare le api da Postman
        http.csrf().disable();
        return http.build();
}}
