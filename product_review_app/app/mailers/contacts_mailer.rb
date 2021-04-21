class ContactsMailer < ActionMailer::Base
  default from: "b6028961@hallam.shu.ac.uk"
  
  def general_message(contact)
    @contact = contact
    mail( :to => "b6028961@hallam.shu.ac.uk", :subject => "You Have a Message From Your Website", :body => "Hi")
  end
end 