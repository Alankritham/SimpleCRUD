# SimpleCRUD
Simple CreatReadUpdateDelete based application using Java, JavaScript, JSP, CSS and HTML.

Structure: 

  1. SRC: This has DAO(Data Access Object) and MODEL packages. 
    -> The JDBC connections and the prepared statmenets are accessed from the DAO class which is written in JAVA and SQL 
        queries.
    -> The id, username and password are accessed to other JSP files through the Bean class.
    
  2. WebContent: This has index, html file ; register,edit and view, jsp files ; script, js file.
    -> All the web based programming is performed in this folder.
    Flow: a> Index.html file first requests for a username and password
          b> Add details triggers register.jsp file which retrieves data and establishes JDBC connection by communicating 
            with DAO and MODEL
          c> The Edit button triggers edit.jsp and updates database
          d> The delete button deletes the entries based on their id's in database and on the webpage
          e> The Add button displays a row with edittable textboxes and updating the database
          
          
------------------------------------------------------------------------------------------------------------------------------
