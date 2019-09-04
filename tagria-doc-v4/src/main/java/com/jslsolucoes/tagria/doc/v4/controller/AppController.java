
package com.jslsolucoes.tagria.doc.v4.controller;

import java.time.LocalDateTime;

import javax.inject.Inject;

import org.apache.commons.lang3.RandomStringUtils;

import com.jslsolucoes.tagria.doc.v4.repository.PersonRepository;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;

@Controller
public class AppController {

    private Result result;
    private PersonRepository pessoaRepository;

    public AppController() {

    }

    @Inject
    public AppController(Result result, PersonRepository pessoaRepository) {
	this.result = result;
	this.pessoaRepository = pessoaRepository;
    }

    @Path("/")
    public void index() {

    }
    
    @Path("/app/other")
    public void other() {
	
    }

    @Path("/app/playground")
    public void playground() {
	this.result.include("booleanValue", Boolean.TRUE);
	this.result.include("persons", pessoaRepository.listAll(3));
	this.result.include("totalResults", 3);
	this.result.include("dateTime", LocalDateTime.now());
	this.result.include("descriptions", RandomStringUtils.randomNumeric(14));
	this.result.include("myValue", 12345L);
    }

    @Path("/app/ajax")
    public void ajax(String input1) {
	this.result.use(Results.json()).from(input1, "field").serialize();
    }

    @Path("/app/ajax/list")
    public void ajaxList() {
	this.result.use(Results.json()).withoutRoot().from(pessoaRepository.listAll()).serialize();
    }

    @Path("/app/autoComplete")
    public void autoComplete() {
	
    }
   
}
