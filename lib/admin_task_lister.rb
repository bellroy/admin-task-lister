class AdminTaskLister
  
  def self.list_admin_tasks
    @listed ||= list_tasks_with_rake
  end

protected

  def self.list_tasks_with_rake
    if not Rails.env.development? and is_irb?
      puts "\e[36m\e[1mAdmin rake tasks available:\e[0m"
      system('rake', '--silent', '--tasks', '^admin')
    end
    true
  end

  def self.is_irb?
    $0 == 'irb' || $0 == 'script/rails'
  end

end
