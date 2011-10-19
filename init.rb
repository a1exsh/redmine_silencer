require 'redmine'
require 'redmine_silencer/issue_hooks.rb'
require 'redmine_silencer/view_hooks.rb'

Redmine::Plugin.register :redmine_silencer do
  name 'Redmine Silencer plugin'
  author 'Alex Shulgin <ash@commandprompt.com>'
  description 'A Redmine plugin to suppress issue email notifications.'
  version '0.0.1'
#  url 'http://example.com/path/to/plugin'
#  author_url 'http://example.com/about'

  permission :suppress_mail_notifications, {}
end
