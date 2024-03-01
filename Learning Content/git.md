## Setup SSH

- Check existing SSH key
```
ls -al ~/.ssh
```
- Generate new ssh key 
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com" 
```
- Add ssh private key to agent
```
eval "$(ssh-agent -s)" && ssh-add ~/.ssh/<identiry-file>
```
- see the ssh key and copy to github ssh 
```
cat ~/.ssh/<identiry-public-file>
```
- Test your connection
```
ssh -T git@github.com
```

---

### Check diff between last 2 commits
```
git diff HEAD^ HEAD
```
---

### Apply patch file
```
git apply <file.patch>
```
---

### Revert the applied patch
```
git apply -R <file.patch>
```
---

### Divergent branches
```
git fetch --all
git reset --hard origin/<branch-name>
```
---

### Create a patch file
```
git format-patch -<last-n-commit> HEAD
```
---


### Create new PR from old commit

1. git checkout main && git pull
2. git log --oneline - will see all the commit
3. git checkout -b feature-branch <commit-hash>   // Commit hash from which you started doing changes
4. git rebase main
5. git checkout main
6. git reset --hard <initial-commit-hash>

Push both branch and create pull request and share with me
