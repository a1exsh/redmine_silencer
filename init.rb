require 'redmine'
require 'redmine_silencer/issue_hooks.rb'
require 'redmine_silencer/view_hooks.rb'

Dispatcher.to_prepare :redmine_silencer do
  require_dependency 'journal.rb'
  require_dependency 'journal_observer.rb'

  # Redmine-1.1 compatibility
  unless Journal.new.respond_to? :notify?
    Journal.send(:include, RedmineSilencer::JournalPatch)
    JournalObserver.send(:include, RedmineSilencer::JournalObserverPatch)
  end
end

Redmine::Plugin.register :redmine_silencer do
  name 'Redmine Silencer plugin'
  author 'Alex Shulgin <ash@commandprompt.com>'
  description 'A Redmine plugin to suppress issue email notifications.'
  version '0.1.0'
  url 'https://github.com/commandprompt/redmine_silencer'
  requires_redmine '1.1.0'

  permission :suppress_mail_notifications, {}
end
