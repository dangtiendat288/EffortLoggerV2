package application.Controller;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.ResourceBundle;
import java.util.stream.Collectors;

import application.Database.mysqlconnect;
import application.Controller.ELEController;
import application.Entity.Effort;
import application.Entity.EffortCategory;
import application.Entity.LifeCycleStep;
import application.Entity.Project;
import application.Util.EffortTimer;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.paint.Color;


public class PPController2 implements Initializable{
	@FXML private ChoiceBox<String> storyChoiceBox;
	@FXML private ChoiceBox<String> LCSChoiceBox;
	@FXML private ChoiceBox<String> descriptionChoiceBox;
	@FXML private TextField averagePointTextField;
		
//	@FXML private Button startBtn;	
		
	ObservableList<Project> listS;
	
	ObservableList<LifeCycleStep> listLCS;
	
    ObservableList<String> listD;  
    
	Connection conn = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    
    public void updateStoryChoiceBox(){        
             		        
     	//load data from MySQL
    	listS = mysqlconnect.getProjects();
    	List<String> projectChoices = listS.stream()
                .map(project -> project.getName()) // get each project's name
                .collect(Collectors.toList());    	
        storyChoiceBox.getItems().addAll(projectChoices);        
        storyChoiceBox.getSelectionModel().selectFirst();        
    }        
    
    public void updateLCSChoiceBox(){        
        
    	//load data from MySQL
    	listLCS = mysqlconnect.getLCSs();
    	List<String> LCSChoices = listLCS.stream()
                .map(LCS -> LCS.getName()) // get each project's name
                .collect(Collectors.toList());
        LCSChoiceBox.getItems().addAll(LCSChoices);
        LCSChoiceBox.getSelectionModel().selectFirst();
    }
//    
    public void updateDescriptionChoiceBox(){        
        
    	//load data from MySQL
    	listD = mysqlconnect.getEffortChoices();    	
        descriptionChoiceBox.getItems().addAll(listD);
        descriptionChoiceBox.getSelectionModel().selectFirst();
    }  
    
    
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		updateStoryChoiceBox();
		updateLCSChoiceBox();
		updateDescriptionChoiceBox();
		
		
		// assume this is the average
		averagePointTextField.setText(mysqlconnect.THE_AVERAGE_FROM_THE_SERVER);
				
	}
}
