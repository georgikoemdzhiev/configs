echo "Copping bashrc"
cp ~/.bashrc ./bashrc
echo "Copping i3 config"
cp ~/.i3/config ./i3config


if [ ! -f .git ]; then
	echo "Creating a git repo"
	git init
	git remote add origin https://github.com/georgikoemdzhiev/configs.git
fi

echo "get latest..."
git pull

git add *

echo "committing chages..."
git commit -m "Changes"

# save the git credentials in memory
git config credential.helper store
# override the default (15 minutes) to 7 days
git config --global credential.helper 'cache --timeout 604800'

echo "pushing changes upstream..."
git push -u origin master 
