class MonasMailer < ActionMailer::Base

  def notification sub
    @sub = sub
    mail subject: "Mona's got a new subscriber!",
              to: "info@monasburgers.com",
            from: "Superman <superman@monasburgers.com>"
  end

  def confirmation sub
    @sub = sub
    mail subject: "Thank you for signing up!",
              to: sub.email,
            from: "Mona's Burgers and Shakes <info@monasburgers.com>"
  end
end
