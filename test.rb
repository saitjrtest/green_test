require 'date'

def push(date)
  gitdate = date.strftime("%a %b %d %X %Y %z -0400")
  10.times do
    cmd = "echo '123' > 'tmp';
      git add .;
      export GIT_AUTHOR_DATE='#{gitdate}';
      export GIT_COMMITTER_DATE='#{gitdate}';
      git commit -m 'update';
      git push origin master"
    system cmd
    sleep(0.5)
  end

  system("git rm tmp;
    git commit -m 'delete';
    git push origin master")
end

c = [
  [0, 0, 0],
  [1, 1, 1],
  [1, 0, 0],
  [1, 0, 0],
  [1, 0, 0],
  [1, 1, 1],
  [0, 0, 0],
]

# push()

start = Date.new(2017, 11, 05)

(c.count * c.first.count).times do |i|
  o = c[i % c.count][i / c.count]
  if o == 1
    push_date = Date.new(2017, 11, 05) + i
    puts push_date
    push(push_date)
  end
end

# 0 3 6 9 12 15
# 1 4 7

# c.flatten.each_with_index do |o, i|
#   if o == 1
    # push_date = Date.new(2017, 11, 05) + i
    # puts push_date
    # push(push_date)
#   end
# end