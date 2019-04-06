class ContactMailer < ActionMailer::Base
    
   default to: 'contact@vincethewalker.com'
   
   def contact_email(name, email, body)
      @name = name
      @email = email
      @body = body
       
       mail(from: email, subject: 'Business Den Contact Form Message')
   end
    
end





    