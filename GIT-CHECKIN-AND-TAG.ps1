git pull
git add --all
git commit -m "Ændret endelig status fra REJECTED til REJECTED_FINISHED" 
git push origin
git tag "1.0.0.5"
git push origin --tags
git log --pretty=oneline
