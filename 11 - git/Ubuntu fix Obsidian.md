
[How do I force git pull to overwrite local files?](https://www.git-tower.com/learn/git/faq/git-force-pull)
check the above link to clear the issue on Ubuntu Sync.

# Step 1: Cleaning Up the Working Copy
First, you'll need to make sure your working copy doesn't contain these conflicting changes anymore. There are two ways to achieve this:

### a) Saving Local Changes on a Stash
If you want to preserve your local changes, you can safely store them on a Stash. They will be available in case you want them back at a later point.
```bash
git stash --include-untracked
```

### b) Discarding Local Changes
If you are sure that you don't need them anymore, you can discard your local changes completely:
```bash
git reset --hard
```
If you also have untracked / new files, you will have to use the "git clean" command to get rid of these, too:

```bash
git clean -fd
```
Please be careful with these commands: discarding local changes and untracked files cannot be undone!

### Step 2: Pull Again
After you have cleaned up any local changes / untracked files that would have been overwritten, the pull will finally work:
```bash
git pull
```
Auto-Stashing in Tower
If you're using the Tower Git client, you’ll notice that it helps you avoid these situations: whenever you have uncommitted local changes present and want to perform an action like Pull, Checkout or Merge, Tower will automatically offer to store these changes safely on a Stash.

This way, you neither have to take any extra steps nor do you have to think about this anymore.
