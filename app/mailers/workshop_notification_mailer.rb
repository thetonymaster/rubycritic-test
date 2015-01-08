class WorkshopNotificationMailer < ActionMailer::Base
  # helper WorkshopNotificationHelper

  def workshop_notification(workshop, all_emails)
    @workshop = workshop
    mail(
      from: 'kardex@crowdint.com',
      to: all_emails,
      subject: 'Kardex: A new workshop was published!'
    )
  end
end
