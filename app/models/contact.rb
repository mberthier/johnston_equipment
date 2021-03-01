class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message, validate: true
  attribute :nickname, captcha: true

  def headers
    {
      subject: "Contact Form",
      to: "mja.berthier@gmail.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
