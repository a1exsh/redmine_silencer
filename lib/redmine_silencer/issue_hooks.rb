module RedmineSilencer
  class IssueHooks < Redmine::Hook::Listener
    def controller_issues_edit_before_save(context)
      update_journal_notify(context[:params], context[:journal])
    end

    def controller_issues_bulk_edit_before_save(context)
      update_journal_notify(context[:params], context[:issue].current_journal)
    end

    private

    def update_journal_notify(params, journal)
      if journal
        journal.notify = false if params && params[:suppress_mail] == '1'
      end
    end
  end
end
