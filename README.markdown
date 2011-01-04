Admin Task Lister
=================

This is a Ruby on Rails plugin that will list rake tasks in the 'admin'
namespace when a non-development console is started. The use case is
repetitive tasks that get performed on the console are replaced with
rake tasks to ensure all the steps are followed. This plugin serves
to remind anyone jumping onto the console of the task available.

It is compatible with Rails 2 and 3

Sample output:

    % ./script/console
    Loading production environment (Rails 2.3.5)
    Admin rake tasks available:
    rake admin:users:create  # Create a new user account

## Installation

Assuming you're using git this plugin is best installed as a git submodule:

    git submodule add git://github.com/tricycle/admin-task-lister.git vendor/plugins/admin-task-lister

