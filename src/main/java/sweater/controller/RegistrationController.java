package sweater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import sweater.domain.Role;
import sweater.domain.User;
import sweater.repos.UserRepo;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {

    private final UserRepo userRepo;

    public RegistrationController(UserRepo userRepo) {
        this.userRepo = userRepo;
    }

    @GetMapping("/registration")
    public String registration(){
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model){
        User userFromDB = userRepo.findByUsername(user.getUsername());

        if(userFromDB != null){
            model.put("message", "User exists!");
            return "registration";
        }

        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);

        return "redirect:/login";
    }
}
