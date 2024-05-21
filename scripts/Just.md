Thanks. I have gone through the link you shared. One part which seems confusing to me is, if I do only git pull, the commits could come from master branch as well right, but we need the new changes from test branch only. 

– [Eli Johnes](https://stackoverflow.com/users/5062281/eli-johnes "341 reputation")

 [Jul 1, 2022 at 12:29](https://stackoverflow.com/questions/72828833/git-pull-command#comment128636965_72829019) 

- 2
    
    @EliJohnes: you generally _don't_ want to use `git fetch --all`: that means _all remotes_, not all branches. (It already fetches all branches.) It's not harmful, it's just unnecessary, and people think it will affect `git pull` in ways that, well, it won't. Hence the "generally don't do it" advice. (If you know all about fetch and remotes, and really do want to fetch from all remotes, feel free to use it—although I'd generally recommend using `git remote update` here instead.) 
    
    – [torek](https://stackoverflow.com/users/1256452/torek "470,739 reputation")
    
     [Jul](https://stackoverflow.com/questions/72828833/git-pull-command#comment128641269_72829019)

Thanks. I have gone through the link you shared. One part which seems confusing to me is, if I do only git pull, the commits could come from master branch as well right, but we need the new changes from test branch only. 

– [Eli Johnes](https://stackoverflow.com/users/5062281/eli-johnes "341 reputation")

 [Jul 1, 2022 at 12:29](https://stackoverflow.com/questions/72828833/git-pull-command#comment128636965_72829019) 

- 2
    
    @EliJohnes: you generally _don't_ want to use `git fetch --all`: that means _all remotes_, not all branches. (It already fetches all branches.) It's not harmful, it's just unnecessary, and people think it will affect `git pull` in ways that, well, it won't. Hence the "generally don't do it" advice. (If you know all about fetch and remotes, and really do want to fetch from all remotes, feel free to use it—although I'd generally recommend using `git remote update` here instead.) 
    
    – [torek](https://stackoverflow.com/users/1256452/torek "470,739 reputation")
    
     [Jul](https://stackoverflow.com/questions/72828833/git-pull-command#comment128641269_72829019)

git remote add origin https://github.com/nallaperumaletl/My_second_brain.git
git branch -M main
git push -u origin main