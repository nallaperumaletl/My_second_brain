sometimes This will works:
```bash
nalla@nallaperumal-aspire:~/Documents/GitHub/My_second_brain$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	deleted:    .gitignore
	modified:   .obsidian/plugins/obsidian-git/data.json
	modified:   .obsidian/workspace.json
	modified:   11 - git/Ubuntu fix Obsidian.md

```

```bash
git restore .
```
This command will restore everything and will be sync..