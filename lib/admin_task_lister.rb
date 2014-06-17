class AdminTaskLister

  def self.list_admin_tasks
    @listed ||= list_tasks_with_rake
  end

protected

  def self.list_tasks_with_rake
    if !Rails.env.development? && is_irb?
      puts "\e[36m\e[1mAdmin rake tasks available:\e[0m"
      system('rake', '--silent', '--tasks', '^admin')
      puts "\e[36m\e###############################################################"
      puts "PLEASE USE THE ABOVE TASKS FOR DATA MANIPULATION/ADDITION"
      puts "There is a required workflow for making changes to data and"
      puts "using these tasks will x that you follow it."
      puts "#############################################################\e[0m"
    end
    true
  end

  def self.is_irb?
    $0 == 'irb' || $0 == 'script/rails'
  end

end
