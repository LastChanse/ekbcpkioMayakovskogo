package com.example.ekbcpkiomayakovskogo;

import com.example.ekbcpkiomayakovskogo.Utils.Config;
import com.example.ekbcpkiomayakovskogo.Utils.DBUtils;
import com.example.ekbcpkiomayakovskogo.Utils.SceneUtils;
import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.util.Duration;
import org.w3c.dom.events.Event;

public class LoginController {
    public boolean lock = false;

    @FXML
    private ImageView logo;

    @FXML
    private TextField loginField;

    @FXML
    private Button authBtn;

    @FXML
    private PasswordField passwordField;

    @FXML
    private TextField passwordTextField;

    @FXML
    private ToggleButton toggleBtn;

    @FXML
    private Button exitBtn;

    @FXML
    private Label errorText;

    @FXML
    public void initialize() {
        // Загружаем кантинки
        // Для логотипа
        logo.setImage(new Image("file:src/main/resources/com/example/ekbcpkiomayakovskogo/drawables/logo.png"));

        // Задаём стартовое изображение переключателя
        toggleBtn.setGraphic(Config.visible);
    }

    @FXML
    private void onTypedPas() {
        passwordTextField.setText(passwordField.getText());
    }

    @FXML
    private void onTypedTextPas() {
        passwordField.setText(passwordTextField.getText());
    }

    @FXML
    private void toggleButtonShowOtHide() {
        if (toggleBtn.isSelected()) {
            toggleBtn.setGraphic(Config.invisible);
            passwordField.setVisible(false);
            passwordTextField.setVisible(true);
        } else {
            toggleBtn.setGraphic(Config.visible);
            passwordField.setVisible(true);
            passwordTextField.setVisible(false);
        }
    }

    @FXML
    private void auth() {
        DBUtils.logInUser(authBtn.getScene(), loginField.getText(), passwordField.getText());
    }

    @FXML
    private void exit() {
        System.exit(0);
    }

    @FXML
    public void lock(boolean on) {
        lock = on;
        if (on) {
            lockAll(true);
            startTimer();
        }
    }

    private void startTimer() {
        int[] timeMin = {Config.timeLockAuthAfterSession}; //Чтобы внутри события был доступен, делаем в виде массива.
        int[] timeSec = {60};
        timeMin[0]--;
        Timeline timeline = new Timeline(
                new KeyFrame(
                        Duration.millis(1000), //1000 мс = 1 сек
                        ae -> {
                            --timeSec[0];

                            if (timeSec[0] < 10) {
                                errorText.setText("Время блокировки: " + timeMin[0] + ":0" + timeSec[0]);
                            } else {
                                errorText.setText("Время блокировки: " + timeMin[0] + ":" + timeSec[0]);
                            }

                            if ((timeMin[0] == 0) && (timeSec[0] == 0)) {
                                errorText.setText("");
                                lockAll(false);
                            }
                            if (timeSec[0] == 0) {
                                if (timeMin[0] >= 0) {
                                    timeSec[0] = 60;
                                    timeMin[0]--;
                                }
                            }
                        }
                )
        );

        timeline.setCycleCount(Config.timeLockAuthAfterSession * 60); // Ограничим число повторений
        timeline.play(); //Запускаем
    }

    private void lockAll(boolean lock) {
        loginField.setDisable(lock);
        passwordField.setDisable(lock);
        passwordTextField.setDisable(lock);
        toggleBtn.setDisable(lock);
        authBtn.setDisable(lock);
    }

    // Actions

    @FXML
    private void activateLoginField() {
            loginField.setStyle("-fx-background-color: #00000000; -fx-border-color: #e31623; -fx-border-width: 0px 0px 2px 0px;");
            passwordField.setStyle("-fx-background-color: #00000000; -fx-border-color: #aaa; -fx-border-width: 0px 0px 2px 0px;");
            passwordTextField.setStyle("-fx-background-color: #00000000; -fx-border-color: #aaa; -fx-border-width: 0px 0px 2px 0px;");
    }


    @FXML
    private void activatePasswordField() {
            loginField.setStyle("-fx-background-color: #00000000; -fx-border-color: #aaa; -fx-border-width: 0px 0px 2px 0px;");
            passwordField.setStyle("-fx-background-color: #00000000; -fx-border-color: #e31623; -fx-border-width: 0px 0px 2px 0px;");
            passwordTextField.setStyle("-fx-background-color: #00000000; -fx-border-color: #e31623; -fx-border-width: 0px 0px 2px 0px;");
    }

    @FXML
    private void activatePasswordTextField() {
            loginField.setStyle("-fx-background-color: #00000000; -fx-border-color: #aaa; -fx-border-width: 0px 0px 2px 0px;");
            passwordField.setStyle("-fx-background-color: #00000000; -fx-border-color: #e31623; -fx-border-width: 0px 0px 2px 0px;");
            passwordTextField.setStyle("-fx-background-color: #00000000; -fx-border-color: #e31623; -fx-border-width: 0px 0px 2px 0px;");
    }

    @FXML
    private void selectedAuth() {
        authBtn.setStyle("-fx-background-color: #d31623;");
    }

    @FXML
    private void unselectedAuth() {
        authBtn.setStyle("-fx-background-color: #e31623;");
    }

    @FXML
    private void selectedToggleBtn() {
        toggleBtn.setStyle("-fx-background-color: #aaaa;");
    }

    @FXML
    private void unselectedToggleBtn() {
        toggleBtn.setStyle("-fx-background-color: #0000;");
    }

    @FXML
    private void selectedExitBtn() {
        exitBtn.setStyle("-fx-background-color: #aaaa;");
    }

    @FXML
    private void unselectedExitBtn() {
        exitBtn.setStyle("-fx-background-color: #0000;");
    }
}