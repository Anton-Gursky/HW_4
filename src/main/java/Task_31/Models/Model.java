package Task_31.Models;

import Task_31.Entities.User;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Model {

    private static Model instance = new Model();

    private List<User> model;

    public static Model getInstance(){
        return instance;
    }

    private Model(){
        model = new ArrayList<>();
    }

    public void add(User user){
        model.add(user);
    }

    public List<String> list(){
        return model.stream().map(User::getName).collect(Collectors.toList());
    }

    public List<String > listSurnames(){
        return model.stream().map(User::getSurname).collect(Collectors.toList());
    }
}
