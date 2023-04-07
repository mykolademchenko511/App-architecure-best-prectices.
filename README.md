# App-architecure-best-prectices.
Movies app built conforming to the best practices.  
Built during the livestream tutorial by [Vincent Pradeilles](https://www.youtube.com/live/_HL-Jz6Stic?feature=share) 
# Preview:
https://user-images.githubusercontent.com/119513590/230644201-2ff9a22a-9e0d-4ad8-923b-37a2fd4349a8.mp4
# Done in this project:
Type Extensions - to separate delegate/datasource methods, group together related methods, improve code readability and organization.  
Result Type - to exclude scenarios which doesn't make sense/impossible, that can come from backend as a result. Handle both .success and .failure cases.  
Variable type - include basic reactive programming in project.  
MVVM Patterm -  improve the separation of concerns and make code more testable, maintainable, and scalable.
Dependency Injection -  decoupling  code from its dependencies, by providing them externally, rather than having code create them directly. We need it
to implement mock data into our project, and easily switch between Mock services and real backend services. Implement ViewControllerProvider
to provide either static properties or static methods to instantiate dynamically a given VC 
Mocks - connect our app to fake local backend to test and see how our app handles different reponses from server.
Tests - verify the behavior of individual units or components of code, such as networking functions, methods, or classes, in isolation from the rest of app.
(e.i. test how Service interacts with ViewModel)



