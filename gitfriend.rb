
loop do
  puts "------------------"
  puts "Hi Arbi, here's your gitfriend!"
  puts "which branch are you working on?"

  puts "master or another one?"
  branch = gets.chomp

  exit if branch == "goodbye"
  puts "REMEMBER: never commit to master" if branch == "master"

  if branch == "master"
    puts "------------------"
    puts "REMEMBER: Every feature (or every fix, anything new from master) is a new branch"
    puts "are you just starting to work on a new feature? [type 'yes' or 'no']"
    answer_master_new = gets.chomp
    if answer_master_new == "yes"
      puts "1 - 'git pull origin master' to get the most recent version of the master"
      puts "2 - 'git checkout -b new-branch-name' to start a new timeline"
    else answer_master_new == "no"
      puts "are you in master branch to get master updates that you don't have in the local branch you are working on? [type 'yes' or 'no']"
      answer_master_updates = gets.chomp

      if answer_master_updates == "yes"
        puts "1 - 'git pull origin master' to get the most recent version of the master"
        puts "2 - 'git checkout local-branch-name' to go back to your local branch"
        puts "3 - 'git merge master' to merge your local branch with the updated version of the master"
        puts "Do you have any conflict? [type 'yes' or 'no']"
        answer_branch_conflict = gets.chomp

        if answer_branch_conflict == "yes"
          puts "Don't PANIC :)"
          # puts "1 - 'gco master' - 'git pull origin master' - 'gco branch_name' - 'git merge master'"
          puts "1 - open sublime and solve the conflicts (locate them with CMD + SHIFT + F and look for '<<<<<')"
          puts "2 - 'ga .' and 'git commit --no-edit', if you finished working, you can push the branch and merge your pull request"
        end

      end
    end

  else
    puts "------------------"
    puts "REMEMBER: Never re-use branches"
    puts "check you git status - it has to be clean"
    puts "are you done with your feature? [type 'yes' or 'no']"
    answer_branch_new = gets.chomp
    if answer_branch_new == "yes"
      puts "1 - 'ga .' and 'git commit -m a-meaningful-message' the 'git push origin name_of_the_branch'"
      puts "2 - 'hub browse' to check if you can create your pull request. do you have any conflict? [type 'yes' or 'no']"
      answer_branch_conflict = gets.chomp
      if answer_branch_conflict == "yes"
        puts "Don't PANIC :)"
        puts "1 - 'gco master' then 'git pull origin master' to have the latest master."
        puts "2 - 'gco the-branch-i-am-working-on', then `git merge master` to integrate the master changes."
        puts "3 - open sublime and solve the conflicts (locate them with CMD + SHIFT + F and look for '<<<<<'"
        puts "4 - 'ga .' and 'git commit --no-edit', if you finished working, you can push the branch and merge your pull request"
        puts "5 - 'gco master' - 'git pull origin master' and you can start a new feature 'gco -b name_of_the_branch'"
      else
      # if answer_branch_conflict == "yes"
      #   puts "Don't PANIC :)"
      #   puts "1 - 'gco master' - 'git pull origin master' - 'gco branch_name' - 'git merge master'"
      #   puts "2 - open sublime and solve the conflicts (locate them with CMD + SHIFT + F and look for '<<<<<'"
      #   puts "3 - 'ga .' and 'git commit --no-edit', if you finished working, you can push the branch and merge your pull request"
      #   puts "4 - 'gco master' - 'git pull origin master' and you can start a new feature 'gco -b name_of_the_branch'"
      # else
      puts "merge the pull request"
      puts "'gco master' - 'git pull origin master' and you can start a new feature 'gco -b name_of_the_branch'"
    end
  else
    puts "keep coding!"
  end
end


end


# current_branch = `git rev-parse --abbrev-ref HEAD`
# has_uncommited_work = !!`git status`.strip["Changes not staged for commit"]

# puts "#{current_branch}" # can be "master", "navbar", etc
# puts "#{has_uncommited_work}" # can be true or false
