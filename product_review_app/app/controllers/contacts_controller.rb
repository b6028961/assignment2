class ContactsController < ApplicationController
  
    def new
      @contact = Contact.new
    end
  
    def create
      @contact = Contact.new(contact_params)
      
      if @contact.save
        ContactsMailer.general_message(@contact).deliver
        redirect_to static_pages_home_path
      else
        render :new
      end
    end

    private

    def contact_params
        params.require(:contact).permit(:name, :email, :message)
    end
      
  end