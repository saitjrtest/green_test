require 'date'
require 'awesome_print'

def push(date)
  gitdate = date.strftime("%a %b %d %X %Y %z -0400")
  10.times do
    cmd = "echo '#{Time.now}' > 'tmp';
      git add .;
      export GIT_AUTHOR_DATE='#{gitdate}';
      export GIT_COMMITTER_DATE='#{gitdate}';
      git commit -m 'update';
      git push origin master"
    system cmd
    sleep(0.5)
  end
end

push(Date.new(2017, 11, 14))
push(Date.new(2017, 11, 16))
push(Date.new(2018, 5, 21))
push(Date.new(2017, 5, 28))
push(Date.new(2017, 6, 4))
push(Date.new(2017, 5, 29))
push(Date.new(2017, 6, 5))
push(Date.new(2017, 6, 6))
push(Date.new(2017, 5, 31))
push(Date.new(2017, 6, 7))
push(Date.new(2017, 5, 25))
push(Date.new(2017, 6, 1))
push(Date.new(2017, 6, 8))