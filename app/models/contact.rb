
class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\W\.%\+\-]+)@([\W\-]+\.)+([\W]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers 
    {
    :subject => "Contact Form",
    :to => "kwilliamson0232@gmail.com",
    :from => %("#{name}" <#{email}>)
    } 
  end
end