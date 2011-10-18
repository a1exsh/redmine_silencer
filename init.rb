require 'redmine'
require 'redmine_silencer/issue_hooks.rb'
require 'redmine_silencer/view_hooks.rb'

Redmine::Plugin.register :redmine_silencer do
  name 'Redmine Silencer plugin'
  author 'Alex Shulgin'
  description 'This is a plugin for Redmine'
  version '0.0.1'
#  url 'http://example.com/path/to/plugin'
#  author_url 'http://example.com/about'
end
