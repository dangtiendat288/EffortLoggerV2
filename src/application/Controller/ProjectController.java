package application.Controller;

import java.net.URL;
import java.util.ResourceBundle;

import application.Entity.Project;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

public class ProjectController implements Initializable{
	@FXML private TableView<Project> projectTableView;
	@FXML private TableColumn<Project, Integer> IDColumn;
	@FXML private TableColumn<Project, String> nameColumn;
	@FXML private TableColumn<Project, Integer> LCS1Column;
//	@FXML private TableColumn<Project, Integer> LCS2Column;
//	@FXML private TableColumn<Project, Integer> LCS3Column;
//	@FXML private TableColumn<Project, Integer> LCS4Column;
//	@FXML private TableColumn<Project, Integer> LCS5Column;
//	@FXML private TableColumn<Project, Integer> LCS6Column;
//	@FXML private TableColumn<Project, Integer> LCS7Column;
//	@FXML private TableColumn<Project, Integer> LCS8Column;
//	@FXML private TableColumn<Project, Integer> LCS9Column;
//	@FXML private TableColumn<Project, Integer> LCS10Column;
//	@FXML private TableColumn<Project, Integer> LCS11Column;
//	@FXML private TableColumn<Project, Integer> LCS12Column;
//	@FXML private TableColumn<Project, Integer> LCS13Column;
//	@FXML private TableColumn<Project, Integer> LCS14Column;
//	@FXML private TableColumn<Project, Integer> LCS15Column;
//	@FXML private TableColumn<Project, Integer> LCS16Column;
//	@FXML private TableColumn<Project, Integer> LCS17Column;
//	@FXML private TableColumn<Project, Integer> LCS18Column;
//	@FXML private TableColumn<Project, Integer> LCS19Column;
//	@FXML private TableColumn<Project, Integer> LCS20Column;
//	@FXML private TableColumn<Project, Integer> LCS21Column;
//	@FXML private TableColumn<Project, Integer> LCS22Column;
//	@FXML private TableColumn<Project, Integer> LCS23Column;
//	@FXML private TableColumn<Project, Integer> LCS24Column;
//	@FXML private TableColumn<Project, Integer> LCS25Column;
	
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		// Set up the columns in the table
		IDColumn.setCellValueFactory(new PropertyValueFactory<Project, Integer>("ID"));
		nameColumn.setCellValueFactory(new PropertyValueFactory<Project, String>("name"));
		LCS1Column.setCellValueFactory(new PropertyValueFactory<Project, Integer>("LCS1"));
		
		//load dummy data
		projectTableView.setItems(getProjects());
	}
	
	public ObservableList<Project> getProjects(){
		ObservableList<Project> projects = FXCollections.observableArrayList();
		projects.add(new Project(1,"EffortLoggerV3"));
		projects.add(new Project(2,"EffortLoggerV4"));
		projects.add(new Project(3,"EffortLoggerV5"));
		projects.add(new Project(4,"EffortLoggerV6"));
		
		return projects;
		
	}
}