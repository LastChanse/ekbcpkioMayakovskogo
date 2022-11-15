package com.example.ekbcpkiomayakovskogo.Utils;

import com.example.ekbcpkiomayakovskogo.LoginController;
import com.example.ekbcpkiomayakovskogo.Models.History;
import com.example.ekbcpkiomayakovskogo.Models.User;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.scene.Scene;
import javafx.scene.control.Alert;

import java.sql.*;
import java.time.ZoneId;

public class DBUtils {

    public static User logInUser(Scene scene, String login, String password) {
        User user = new User();
        String statusId = new String();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(Config.DBUrl, Config.DBUser, Config.DBPassword);
            preparedStatement = connection.prepareStatement("SELECT * FROM sotrudnics WHERE Login=?");
            preparedStatement.setString(1, login);
            resultSet = preparedStatement.executeQuery();

            if (!resultSet.isBeforeFirst()) {
                AlertUtils.showAlert("Предоставленные учетные данные неверны", Alert.AlertType.ERROR);
            } else {
                while (resultSet.next()) {
                    user.setLogin(resultSet.getString("Login"));
                    user.setPassword(resultSet.getString("Password"));
                    user.setFio(resultSet.getString("FIO"));
                    statusId = resultSet.getString("Dolshnosts_idDolshnost");
                    if (user.getPassword().equals(password)) {
                        try {
                            PreparedStatement prSt = connection.prepareStatement("SELECT * FROM dolshnosts WHERE idDolshnost=?");
                            prSt.setString(1, statusId);

                            ResultSet resSet = prSt.executeQuery();

                            resSet.next();

                            user.setStatus(resSet.getString("NameDolshnost"));

                        } catch (SQLException e) {
                            AlertUtils.showAlert("Не удалось получить данные о должности из базы данных", Alert.AlertType.ERROR);
                            throw new RuntimeException(e);
                        }
                        return user;
                    } else {
                        AlertUtils.showAlert("Предоставленные учетные данные неверны", Alert.AlertType.ERROR);
                    }
                }
            }
        } catch (SQLException e) {
            AlertUtils.showAlert("Ошибка подключения к базе данных", Alert.AlertType.ERROR);
            e.printStackTrace();
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return null;
    }

    public ObservableList<History> getHistoryList() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ObservableList<History> historyList = FXCollections.observableArrayList();

        try {
            connection = DriverManager.getConnection(Config.DBUrl, Config.DBUser, Config.DBPassword);
            preparedStatement = connection.prepareStatement("SELECT V.idVxod, V.DateTime, V.TypeVxod, S.Login FROM session1.vxod V, session1.sotrudnics S WHERE V.sotrudnics_idSotrudnic=S.idSotrudnic");

            resultSet = preparedStatement.executeQuery();

            if (!resultSet.isBeforeFirst()) {
                AlertUtils.showAlert("Предоставленные учетные данные неверны", Alert.AlertType.ERROR);
            } else {
                while (resultSet.next()) {
                    historyList.add(new History(
                            resultSet.getInt("idVxod"),
                            resultSet.getString("DateTime"),
                            resultSet.getString("Login"),
                            resultSet.getString("TypeVxod")
                    ));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return historyList;
    }

    public ObservableList<History> getHistoryList(String searchLogin) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ObservableList<History> historyList = FXCollections.observableArrayList();
        ObservableList<History> filteredItems = FXCollections.observableArrayList();

        try {
            connection = DriverManager.getConnection(Config.DBUrl, Config.DBUser, Config.DBPassword);
            preparedStatement = connection.prepareStatement("SELECT V.idVxod, V.DateTime, V.TypeVxod, S.Login FROM session1.vxod V, session1.sotrudnics S WHERE V.sotrudnics_idSotrudnic=S.idSotrudnic");
            resultSet = preparedStatement.executeQuery();

            if (!resultSet.isBeforeFirst()) {
                AlertUtils.showAlert("Предоставленные учетные данные неверны", Alert.AlertType.ERROR);
            } else {
                while (resultSet.next()) {
                    historyList.add(new History(
                            resultSet.getInt("idVxod"),
                            resultSet.getString("DateTime"),
                            resultSet.getString("Login"),
                            resultSet.getString("TypeVxod")
                    ));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        if (!historyList.isEmpty() && !(historyList == null)) {
            for (History li: historyList)
                if (li.getLogin().contains(searchLogin))
                    filteredItems.add(li);
        }

        return filteredItems;
    }
}
