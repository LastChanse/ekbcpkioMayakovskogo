package com.example.ekbcpkiomayakovskogo.Utils;

import com.example.ekbcpkiomayakovskogo.HelloApplication;
import com.example.ekbcpkiomayakovskogo.LoginController;
import com.example.ekbcpkiomayakovskogo.MainController;
import com.example.ekbcpkiomayakovskogo.Models.User;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

import java.io.File;
import java.io.IOException;
import java.net.URL;

public class SceneUtils {

    double xOffset = 0;
    double yOffset = 0;

    public void deleteDefaultMenu(Stage stage, Scene scene) {

        stage.initStyle(StageStyle.DECORATED.UNDECORATED);

        scene.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                xOffset = mouseEvent.getSceneX();
                yOffset = mouseEvent.getSceneY();
            }
        });

        scene.setOnMouseDragged(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                stage.setX(mouseEvent.getScreenX() - xOffset);
                stage.setY(mouseEvent.getScreenY() - yOffset);
            }
        });
    }

    public void changeScene(Scene scene, String fxmlFile, User user) {
        Parent root = new Parent() {};

        if (user != null) {
            try {
                FXMLLoader loader = new FXMLLoader(new URL(Config.resourcesPath+fxmlFile));
                root = loader.load();
                MainController mc = loader.getController();
                mc.setUser(user);
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            try {
                FXMLLoader loader = new FXMLLoader(new URL(Config.resourcesPath+fxmlFile));
                root = loader.load();
                LoginController lc = loader.getController();
                lc.lock(true);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        // FIXME: 16.10.2022 Bug Cannot invoke "javafx.stage.Stage.setMaxHeight(double)" because "stage" is null
        Stage stage = (Stage) scene.getWindow();
        scene = new Scene(root, 800, 600);
        scene.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                xOffset = mouseEvent.getSceneX();
                yOffset = mouseEvent.getSceneY();
            }
        });

        scene.setOnMouseDragged(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                stage.setX(mouseEvent.getScreenX() - xOffset);
                stage.setY(mouseEvent.getScreenY() - yOffset);
            }
        });
        stage.setMaxHeight(600);
        stage.setMaxWidth(800);
        stage.setMinHeight(600);
        stage.setMinWidth(800);
        stage.getIcons().add(Config.appIcon);
        stage.setTitle(Config.appName);
        stage.setScene(scene);
        stage.show();
    }
}
