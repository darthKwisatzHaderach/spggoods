class SignInPage
  include PageObject
  
  page_url "http://test:interesnee@test.interesnee.ru/admin"

  text_field(:user_email, :name => "email")
  text_field(:password, :name => "password")

  div(:login, :css => ".big-blue-button.float-right.mr68")

end