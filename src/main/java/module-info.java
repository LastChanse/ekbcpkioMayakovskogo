module com.example.ekbcpkiomayakovskogo {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.web;
    requires java.sql;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires org.kordamp.ikonli.javafx;
    requires org.kordamp.bootstrapfx.core;
    requires eu.hansolo.tilesfx;

    opens com.example.ekbcpkiomayakovskogo to javafx.fxml;
    exports com.example.ekbcpkiomayakovskogo;
    exports com.example.ekbcpkiomayakovskogo.Models;
}