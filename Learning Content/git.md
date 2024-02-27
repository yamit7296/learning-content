## Setup SSH

ls -al ~/.ssh - Check existing SSH key

ssh-keygen -t rsa -b 4096 -C "your_email@example.com" - Generate new ssh key 

eval "$(ssh-agent -s)" - Add ssh private key to agent

ssh-add ~/.ssh/<identiry-file>

cat ~/.ssh/id_rsa.pub - see the ssh key and copy to github ssh 

ssh -T git@github.com - Test your connection

---

### Check diff between last 2 commits

git diff HEAD^ HEAD

---

### Apply patch file
git apply <file.patch>

---

### Revert the applied patch
git apply -R <file.patch>

---

### Divergent branches

git fetch --all
git reset --hard origin/<branch-name>

---

### Create a patch file

git format-patch -1 HEAD - Patch of last one commit

---