package com.example.ekbcpkiomayakovskogo.Utils;

import com.example.ekbcpkiomayakovskogo.HelloApplication;
import com.example.ekbcpkiomayakovskogo.LoginController;
import com.example.ekbcpkiomayakovskogo.Models.User;
import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.application.Platform;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.stage.Stage;
import javafx.util.Duration;

import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

public class SessionUtils {
    public static void startSession(User globalUser, Label userInfo) {
        int[] timeMin = {Config.timeSession}; //Чтобы внутри события был доступен, делаем в виде массива.
        int[] timeSec = {60};
        userInfo.setText("Добро пожаловать "+globalUser.getFio()+"!\n" +
                "Должность: "+globalUser.getStatus() + " Время сеанса: " + timeMin[0]+":00");
        timeMin[0]--;
        Timeline timeline = new Timeline (
                new KeyFrame(
                        Duration.millis(1000), //1000 мс = 1 сек
                        ae -> {
                            --timeSec[0];
                            if (timeSec[0] < 10) {
                                userInfo.setText("Добро пожаловать "+globalUser.getFio()+"!\n" +
                                        "Должность: "+globalUser.getStatus() + " Время сеанса: " + timeMin[0]+":0"+timeSec[0]);
                            } else {
                                userInfo.setText("Добро пожаловать "+globalUser.getFio()+"!\n" +
                                        "Должность: "+globalUser.getStatus() + " Время сеанса: " + timeMin[0]+":"+timeSec[0]);
                            }
                            if ((timeMin[0] == Config.timeWarningSession) && (timeSec[0] == 0)) {
                                Alert alert = new Alert(Alert.AlertType.WARNING);

                                alert.setTitle("Внимание");
                                alert.setHeaderText("Время сеанса истечёт через "+Config.timeWarningSession+" минут");

                                alert.show();
                            }

                            if ((timeMin[0] <= 0) && (timeSec[0] <= 0)) {
                                finishSession(userInfo);
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

        timeline.setCycleCount(Config.timeSession * 60); // Ограничим число повторений
        timeline.play(); //Запускаем
    }

    private static void finishSession(Label userInfo) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);

        alert.setTitle("Сеанс окончен");
        alert.setHeaderText("Время сеанса закончилось");

        alert.show();
        Timer timer = new Timer();
        timer.scheduleAtFixedRate(new TimerTask() {
            @Override
            public void run() {
                Platform.runLater(() -> {
                    SceneUtils sceneUtils = new SceneUtils();
                    sceneUtils.changeScene(userInfo.getScene(), "login-view.fxml", null);
                });
                timer.cancel();
            }
        }, 1000, 1000);
    }
}
