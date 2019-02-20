package com.xrom.ssh.security;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.ArrayList;
import java.util.List;

public class PokedexAuthenticationProvider implements AuthenticationProvider {

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String username = authentication.getName();
        String password = (String) authentication.getCredentials();
		
		if (username.equals("Jarvis")) {
			List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			authorities.add(new SimpleGrantedAuthority("supreme user"));
			return new UsernamePasswordAuthenticationToken(new User(username, password, authorities), password, authorities);
		}
		else if (username.equals("Xinyan")) {
			List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			authorities.add(new SimpleGrantedAuthority("common user"));
			return new UsernamePasswordAuthenticationToken(new User(username, password, authorities), password, authorities);
		}
		else{
			List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			authorities.add(new SimpleGrantedAuthority("visiter"));
			return new UsernamePasswordAuthenticationToken(new User(username, password, authorities), password, authorities);
		}
	}

	@Override
	public boolean supports(Class<?> clazz) {
		return true;
	}
}
