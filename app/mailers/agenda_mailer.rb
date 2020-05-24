  
class AgendaMailer < ApplicationMailer
    def delete_agenda_mail(agenda)
      @agenda = agenda
      members_id = agenda.team.members.ids
      members_email = User.where(id:members_id).pluck(:email)
      mail to: members_email , subject: I18n.t('views.messages.delete_agenda')
    end
  end