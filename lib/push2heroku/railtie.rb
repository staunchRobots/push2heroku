module Push2heroku
  class Engine < Rails::Engine

    rake_tasks do
      desc "pushes to heroku"
      task :push2heroku => :environment do
        Base.process
      end
    end

  end
end

