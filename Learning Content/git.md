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