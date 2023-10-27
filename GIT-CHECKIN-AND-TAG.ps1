git pull
git add --all
git commit -m "Version i produktion" 
git push origin
git tag "1.0.0.4"
git push origin --tags
git log --pretty=oneline
