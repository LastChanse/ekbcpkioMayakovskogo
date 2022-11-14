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
    public static void startSession(Label sessionInfo) {
        double[] timeMin = {0}; //Чтобы внутри события был доступен, делаем в виде массива.
        int[] timeSec = {Config.timeSession};
        if (Config.timeSession >= 60) {
            timeMin[0]=Config.timeSession/60;
            timeMin[0]--;
            timeSec[0] = Config.timeSession - ((int) timeMin[0]) * 60;
        }
        sessionInfo.setText("Время сеанса: " + (int) (timeMin[0]+1)+":00");
        Timeline timeline = new Timeline (
                new KeyFrame(
                        Duration.millis(1000), //1000 мс = 1 сек
                        ae -> {
                            --timeSec[0];
                            if (timeSec[0] < 10) {
                                sessionInfo.setText("Время сеанса: " + (int) timeMin[0]+":0"+timeSec[0]);
                            } else {
                                sessionInfo.setText("Время сеанса: " + (int) timeMin[0]+":"+timeSec[0]);
                            }
                            if ((timeMin[0] == Config.timeWarningSession/60) && (timeSec[0] == Config.timeWarningSession - (Config.timeWarningSession/60)*60)) {
                                Alert alert = new Alert(Alert.AlertType.WARNING);

                                alert.setTitle("Внимание");
                                if (timeSec[0] == 0) {
                                    alert.setHeaderText("Время сеанса истечёт через "+((int) (Config.timeWarningSession/60))+" минут");
                                } else {
                                    alert.setHeaderText("Время сеанса истечёт через "+((int) (Config.timeWarningSession/60))+" минут в"+timeSec[0]+"секунд");
                                }

                                alert.show();
                            }

                            if ((timeMin[0] <= 0) && (timeSec[0] <= 0)) {
                                finishSession(sessionInfo);
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

        timeline.setCycleCount(Config.timeSession); // Ограничим число повторений
        timeline.play(); //Запускаем
    }

    private static void finishSession(Label sessionInfo) {
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
                    sceneUtils.changeScene(sessionInfo.getScene(), "login-view.fxml", null);
                });
                timer.cancel();
            }
        }, 1000, 1000);
    }
}
