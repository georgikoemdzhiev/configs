echo "Copping bashrc"
cp ~/.bashrc ./bashrc
echo "Copping i3 config"
cp ~/.i3/config ./i3config


if [! -f .git]; then
	echo "Creating a git repo"
	git init
	git remote add origin https://github.com/georgikoemdzhiev/configs.git
fi

git add *

echo "committing chages..."
git commit -m "Changes"
echo "pushing changes upstream..."
git push -u origin master 
