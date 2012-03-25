module Push2heroku
  class Git
    def current_branch
      result = %x{git branch}.split("\n")
      if result.empty?
        raise "It seems your app is not a git repo"
      else
        result.select { |b| b =~ /^\*/ }.first.split(" ").last.strip.downcase
      end
    end

    def current_user
      `git config user.name`.chop!.downcase
    end
  end
end
