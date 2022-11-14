package com.example.ekbcpkiomayakovskogo.Utils;

import javafx.scene.image.Image;
import javafx.scene.image.ImageView;

public class Config {
    // Default
    public static String resourcesPath = "file:src/main/resources/com/example/ekbcpkiomayakovskogo/";
    // App
    public static String appName = "Панель управления для сотрудников ЦПКиО им. Маяковского";
    public static String appIconPath = "drawables/icon.png";
    public static Image appIcon = new Image(resourcesPath+appIconPath);
    public static int draggedYZone = 50; // SceneUtils
    // Database
    public static String DBUrl = "jdbc:mysql://localhost:3306/session1";
    public static String DBUser = "root";
    public static String DBPassword = "";
    // Captcha
    public static int captchaLength = 3;
    public static int timeLockAuthWithCaptcha = 10;
    public static int countTryLogin = 2;
    public static int countTryLoginWithCaptcha = 2;
    // Session
    public static int timeSession = 5 * 60;
    public static int timeWarningSession = 3 * 60;
    public static int timeLockAuthAfterSession = 1 * 60;
    // Drawables
    // Show&hide password images
    public static String invisiblePath = "drawables/hidden-eye.png";
    public static String visiblePath = "drawables/eye.png";
    // +constructor Show&hide image views
    public static ImageView invisible = new ImageView(new Image(resourcesPath+invisiblePath, 30, 30, true, true));
    public static ImageView visible = new ImageView(new Image(resourcesPath+visiblePath, 30, 30, true, true));
}
