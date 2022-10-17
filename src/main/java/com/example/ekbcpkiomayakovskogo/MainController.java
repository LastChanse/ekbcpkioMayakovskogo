package com.example.ekbcpkiomayakovskogo;


import com.example.ekbcpkiomayakovskogo.Models.User;
import com.example.ekbcpkiomayakovskogo.Utils.Config;
import com.example.ekbcpkiomayakovskogo.Utils.SessionUtils;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;

public class MainController {

    @FXML
    private Button exitBtn;

    @FXML
    public Label userInfo;

    @FXML
    public Label sessionInfo;

    @FXML
    private ImageView avatar;

    public void setUser(User user) {
        avatar.setImage(new Image(Config.resourcesPath+"drawables/"+user.getFio().split(" ")[0]+".jpeg"));
        userInfo.setText(user.getFio()+"\nДолжность: "+user.getStatus());
        SessionUtils.startSession(sessionInfo);
    }

    @FXML
    private void exit() {
        System.exit(0);
    }

    // Actions

    @FXML
    private void selectedExitBtn() {
        exitBtn.setStyle("-fx-background-color: #aaaa;");
    }

    @FXML
    private void unselectedExitBtn() {
        exitBtn.setStyle("-fx-background-color: #0000;");
    }
}
