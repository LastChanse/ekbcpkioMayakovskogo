package com.example.ekbcpkiomayakovskogo;

import com.example.ekbcpkiomayakovskogo.Models.User;
import com.example.ekbcpkiomayakovskogo.Utils.SessionUtils;
import javafx.fxml.FXML;
import javafx.scene.control.*;

public class MainController {

    @FXML
    private Button exitBtn;

    @FXML
    public Label userInfo;

    public void setUser(User user) {
        userInfo.setText(user.getFio()+"\nДолжность: "+user.getStatus());
        SessionUtils.startSession(user, userInfo);
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
