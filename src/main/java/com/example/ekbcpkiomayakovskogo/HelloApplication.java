package com.example.ekbcpkiomayakovskogo;

import com.example.ekbcpkiomayakovskogo.Utils.Config;
import com.example.ekbcpkiomayakovskogo.Utils.SceneUtils;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.scene.text.Font;
import javafx.stage.Stage;

import java.io.IOException;

public class HelloApplication extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("login-view.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 800, 600);
        LoginController lc = fxmlLoader.getController();
        lc.getSelfController(lc);
        SceneUtils su = new SceneUtils();
        su.deleteDefaultMenu(stage, scene);

        stage.setMaxHeight(600);
        stage.setMaxWidth(800);
        stage.setMinHeight(600);
        stage.setMinWidth(800);
        stage.getIcons().add(Config.appIcon);
        stage.setTitle(Config.appName);
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args) {
        launch();
    }
}