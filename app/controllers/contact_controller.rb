class ContactController < ApplicationController
  def index
    @contact = Contact.new
    render :action => 'index'
  end
  
  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action => 'confirm'
    else 
      render :action => 'index'
    end
  end
  
  def thanks
    @contact = Contact.new(contact_params)
    if params[:back]
        render :action => 'index'
    else
      ContactMailer.received_email(@contact).deliver_now
      render :action => 'thanks'
    end
  end    
  
  private
   def contact_params
    params.require(:contact).permit(
    :name,  #代表者名
    :tel, #電話番号
    :email, #メールアドレス
    :message    
    )
  end
end
