class MonasMailer < ActionMailer::Base

  def confirmation(sub)
    @sub = sub
    mail :subject => "Mona's got a new subscriber!",
         :to      => ["knowhere@gmail.com", "dnns77@gmail.com"],
         :from    => "Superman <superman@monasburgers.com>"
  end
end
