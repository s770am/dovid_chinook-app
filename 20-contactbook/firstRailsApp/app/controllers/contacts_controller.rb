class ContactsController < ApplicationController

    def index
        @contacts = Contact.all
    end

    def show
        @contact = Contact.find(params[:id])
    end

    def create
        @contact = Contact.new(contact_params) 
        # @contact.fname = params[:contact][:fname]
        # @contact.lname = params[:contact][:lname]
        # @contact.email = params[:contact][:email]
        # @contact.notes = params[:contact][:notes]

        if @contact.save 
            redirect_to contacts_url
        else 
            render :new
        end

        #    render plain: "In the create method #{params}" 
    end

    def new
        @contact = Contact.new
    end

    def edit
        @contact = Contact.find(params[:id])
    end

    def update
        @contact = Contact.find(params[:id])

        if @contact.update(contact_params)
            redirect_to contact_url
        else 
            render :edit
        end
    end

    def destroy
        @contact = Contact.find(params[:id])
        @contact.destroy
        redirect_to contacts_url
    end

    private
    def contact_params
        params.require(:contact).permit(:fname, :lname, :email, :notes)
    end

    
end
