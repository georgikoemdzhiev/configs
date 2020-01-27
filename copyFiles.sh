echo "Copping bashrc"
cp ~/.bashrc ./bashrc
echo "Copping i3 config"
cp ~/.i3/config ./i3config

git add *

echo "committing chages..."
git commit -m "Changes"
echi "pushing changes upstream..."
git push 
