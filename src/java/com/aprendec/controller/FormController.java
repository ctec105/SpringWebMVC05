package com.aprendec.controller;

import com.aprendec.model.Persona;
import com.aprendec.model.PersonaValidar;
import java.util.LinkedHashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("form.htm")
public class FormController {
    
    private PersonaValidar personaValidar;

    public FormController() {
        this.personaValidar = new PersonaValidar();
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView form(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("form");
        mav.addObject("persona", new Persona());
        return mav;
    }
    
    //recibimos y validamos los datos d enuestro formulario
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView form(@ModelAttribute("persona") Persona p, BindingResult result, SessionStatus status){
        this.personaValidar.validate(p, result);
        
        if (result.hasErrors()){
            //volvemos al formulario porque los datos ingresados no son correctos
            ModelAndView mav = new ModelAndView();
            mav.setViewName("form");
            mav.addObject("persona", new Persona());
            return mav;
        }else{
              // acá entramos si el usuario ingresó bien los datos
              ModelAndView mav = new ModelAndView();
              mav.setViewName("exito");
              mav.addObject("nombre", p.getNombre());
              mav.addObject("correo", p.getCorreo());
              mav.addObject("pais", p.getPais());
              return mav;
        }
    }
    
    // método para poblar un select
    @ModelAttribute("paisLista")
    public Map<String, String> listadoPaises(){
        Map<String, String> pais = new LinkedHashMap<>();
        pais.put("1", "Perú");
        pais.put("2", "Chile");
        pais.put("3", "Colombia");
        pais.put("4", "Bolivia");
        return pais;
    }
    
}
