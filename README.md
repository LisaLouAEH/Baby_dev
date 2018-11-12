# Projet 'landing page' en intégrant une stucture rails  
  
*0* Créa d'une nouvelle app rails  
  
*1* génération de 4 controller :  
* users  
* sessions  
* articles  
* static_pages  
  
*2* génération de 2 models :  
* user  
* article  
  
*3* ```rails db:create```  
  
*4* paramétrage des models et tables :  
* model user/  
  * format 'first_name' et 'last_name'  
  * format 'email', unique, downcases, regex.  
  * secure password  
  * has_many :articles  
  
* table users/  
  * t.string :first_name 
  * t.string :last_name
  * t.string :email, unique: true
  * t.string :password_digest
  * t.string :img_path

* model article/  
  * belongs_to :user  
  
* table articles/  
  * t.string :title  
  * t.integer :user_id  
  * t.text :content  
  * t.string :link  
  
*5* ```rails db:migrate```  
  
*6* créa methode UsersController  
  * index (@user = User.all) --> vers index.html (page listant les users)  
  * new (@user = User.new) --> vers new.html (formulaire d'inscritption)  
  * create (@user = User.create(params....) + redirect_to login_path de sessioncontroller) --> login.html (page de connection a une session)  
  * update (/) --> vers update.html (pour modifier son profil)  
  * delete (/) --> vers delete.html (supprimer son compte)  
  
*7* créa des views correspondants au UsersController  
  * index.html  
  * new.html  
  * update.html  
  * delete.html  
  
*8* Créa méthode SessionsController  
  * 