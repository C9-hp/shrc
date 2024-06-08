if [ -d  "/home/c9/Documents/obsidian" ]; then cd /home/c9/Documents/obsidian
elif [ -d "/storage/emulated/0/Documents/obsidian" ]; then cd /home/c9/Documents/obsidian
else echo we dont know where the repo is ; fi
echo "entered $(pwd)" ; 
# SYNCING REPO 
git add -A; git commit -am "obsidin synced" 1> /dev/null ; echo commited successfully.
git pull 1> /dev/null; echo Local branch is up to date now. 
git push
