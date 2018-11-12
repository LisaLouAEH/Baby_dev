class UsersController < ApplicationController
    def index 
        #liste de tout les users
        @users = User.all 
    end

    def new 
        # formulaire de sign-up
        @user = User.new
    end

    def create 
        # requete post pour enregistrer en DB le nouvel utilisateur
        # redirect vers la page log in de SessionsController
        @user =  User.create(password: params[:user][:password],
             first_name: params[:user][:first_name], 
             last_name: params[:user][:last_name], 
             email: params[:user][:email], 
             img_path: params[:user][:img_path])
        redirect_to login_path
    end 

    def update 
        # saisie des modifications profil/ envoie en db/
        # redirige vers la page profil
    end

    def delete 
        # supprimer son compte
    end
end
