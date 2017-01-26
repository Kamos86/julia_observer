class ErrorLogMailer < ApplicationMailer
  def log_email bad_class, bad_slug
    @bad_object = {
      type: bad_class,
      slug: bad_slug
    }

    subject = "[Error] Bad "

    if bad_slug.present?
      subject += "#{ @bad_object[:type] }: "
      subject += "#{ @bad_object[:slug] }"
    else
      subject += @bad_object[:type].pluralize
    end

    @log_file = tail "./log/#{Rails.env}.log", 200

    mail_to = ENV['ADMIN_EMAIL']
    mail_to ||= 'test@example.com' unless Rails.env.production?

    mail(to: mail_to, subject: subject)
  end
end
