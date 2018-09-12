class InquiryMailer < ActionMailer::Base
  default from: "no-reply@hewller.com"   # 送信元アドレス
  default to: "mini.naruchan.ningyou@gmail.com"     # 送信先アドレス

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'We have received an inquiry.')
  end
end