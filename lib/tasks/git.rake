namespace :git do
  desc "Remove removed files"
  task :remove do
    system("for i in $(git status | grep deleted | awk '{print $3}'); do git rm $i; done")
  end
  task :undelete do
    system("for i in $(git status | grep deleted | awk '{print $3}'); do git checkout $i; done")
  end

end