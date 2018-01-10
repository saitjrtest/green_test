require 'date'

startdate = Date.new(2018, 1, 10)
gitdate = startdate.strftime("%a %b %d %X %Y %z -0400")

system(
        {
          "GIT_AUTHOR_DATE" => gitdate,
          "GIT_COMMITTER_DATE" => gitdate
        },
        "echo '123' > 'tmp';
        git add tmp;
        git commit -m 'update';
        git push"
      )
