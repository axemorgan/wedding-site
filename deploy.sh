echo "Removing existing public/ dir"
rm -rf public/

hugo

echo "Removing existing docker volume"
sudo rm -rf /docker-volumes/wedding-site/public/

echo "Copying to docker volume"
sudo cp -R public/ /docker-volumes/wedding-site/
