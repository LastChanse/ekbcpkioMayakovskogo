package com.example.ekbcpkiomayakovskogo;


import com.example.ekbcpkiomayakovskogo.Models.History;
import com.example.ekbcpkiomayakovskogo.Models.User;
import com.example.ekbcpkiomayakovskogo.Utils.Config;
import com.example.ekbcpkiomayakovskogo.Utils.DBUtils;
import com.example.ekbcpkiomayakovskogo.Utils.SceneUtils;
import com.example.ekbcpkiomayakovskogo.Utils.SessionUtils;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.GridPane;

public class MainController {

    @FXML
    private Button exitBtn;

    /**
     * Top panel
     */
    @FXML
    public Label userInfo;

    @FXML
    public Label sessionInfo;

    @FXML
    private ImageView avatar;

    @FXML
    private Button logOutBtn;

    @FXML
    private Label pageTitle;

    @FXML
    private GridPane pgProducts;

    @FXML
    private GridPane pgOrders;

    @FXML
    private GridPane pgVhodHistory;

    @FXML
    private GridPane pgAppInfo;


    @FXML
    private Button goToProductsBtn;

    @FXML
    private Button goToOrdersBtn;

    @FXML
    private Button goToVhodHistoryBtn;

    @FXML
    private Button goToAppInfoBtn;


    @FXML
    private Button historySearchBtn;
    @FXML
    private TextField historySearchField;

    @FXML
    private TableView<History> tableVhodHistory;
    @FXML
    private TableColumn<History,String> historyTimeCol;
    @FXML
    private TableColumn<History,String> historyLoginCol;
    @FXML
    private TableColumn<History,String> historyTypeCol;
    @FXML
    ObservableList<History> historyList = FXCollections.observableArrayList();

    @FXML
    public void initialize() {
        refreshTableHistoryList();
    }

    private void refreshTableHistoryList() {
        DBUtils db = new DBUtils();
        historyList = db.getHistoryList();
        historyTimeCol.setCellValueFactory(new PropertyValueFactory<>("time"));
        historyLoginCol.setCellValueFactory(new PropertyValueFactory<>("login"));
        historyTypeCol.setCellValueFactory(new PropertyValueFactory<>("type"));
        tableVhodHistory.setItems(historyList);
    }

    private void refreshTableHistoryList(String searchLogin) {
        DBUtils db = new DBUtils();
        historyList = db.getHistoryList(searchLogin);
        historyTimeCol.setCellValueFactory(new PropertyValueFactory<>("time"));
        historyLoginCol.setCellValueFactory(new PropertyValueFactory<>("login"));
        historyTypeCol.setCellValueFactory(new PropertyValueFactory<>("type"));
        tableVhodHistory.setItems(historyList);
    }

    public void setUser(User user) {
        avatar.setImage(new Image(Config.resourcesPath+"drawables/"+user.getFio().split(" ")[0]+".jpeg"));
        userInfo.setText(user.getFio()+"\nДолжность: "+user.getStatus());
        SessionUtils.startSession(sessionInfo);
    }

    @FXML
    private void logOut() {
        new SceneUtils().changeScene(exitBtn.getScene(), "login-view.fxml", null);
    }

    @FXML
    private void exit() {
        System.exit(0);
    }

    @FXML
    private void handleClicks(ActionEvent event) {
        if (event.getSource() == logOutBtn) {
            new SceneUtils().changeScene(exitBtn.getScene(), "login-view.fxml", null);
        }
        if (event.getSource() == goToProductsBtn) {
            pageTitle.setText("Товары");
            pgProducts.toFront();
        }
        if (event.getSource() == goToOrdersBtn) {
            pageTitle.setText("Заказы");
            pgOrders.toFront();
        }
        if (event.getSource() == goToVhodHistoryBtn) {
            pageTitle.setText("История входов");
            pgVhodHistory.toFront();
        }
        if (event.getSource() == goToAppInfoBtn) {
            pageTitle.setText("О приложении");
            pgAppInfo.toFront();
        }
        if (event.getSource() == historySearchBtn) {
            refreshTableHistoryList(historySearchField.getText());
        }
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

    @FXML
    private void selectedLogOutBtn() {
        logOutBtn.setStyle("-fx-background-color: #aaaa;");
    }

    @FXML
    private void unselectedLogOutBtn() {
        logOutBtn.setStyle("-fx-background-color: #0000;");
    }
}
