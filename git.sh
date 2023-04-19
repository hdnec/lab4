#1.1
git commit
git commit
#1.2
git branch bugFix
git checkout bugFix
#1.3
git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix
#1.4
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main
#2.1
git checkout C4
#2.2
git checkout bugFix^
#2.3
git branch -f main C6
git checkout HEAD~1
git branch -f bugFix HEAD~1
#2.4
git reset HEAD~1
git checkout pushed
git revert HEAD
#3.1
git cherry-pick C3 C4 C7
#3.2
git rebase -i overHere --solution-ordering C3,C5,C4
#4.1
git rebase -i main --solution-ordering C4
git rebase bugFix main
#4.2
git rebase -i HEAD~2 --solution-ordering C3,C2
git commit --amend
git rebase -i HEAD~2 --solution-ordering C2'',C3'
git rebase caption main
#4.3
git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3
#4.4
git tag v1 side~1
git tag v0 main~2
git checkout v1
#4.5
git commit
#5.1
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main
#5.2
git branch bugWork main^^2^
#5.3
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2
#distant
#1.1
git clone
#1.2
git commit
git checkout o/main
git commit
#1.3
git fetch
#1.4
git pull
#1.5
git clone
git fakeTeamwork 2
git commit
git pull
#1.6
git commit
git commit
git push
#1.7
git clone
git fakeTeamwork
git commit
git pull --rebase
git push
#1.8
git reset --hard o/main
git checkout -b feature C2
git push origin feature
#2.1
git fetch
git rebase o/main side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git push
#2.2
git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push
#2.3
git checkout -b side o/main
git commit
git pull --rebase
git push
#2.4
git push origin main
git push origin foo
#2.5
git push origin main^:foo
git push origin foo:main
#2.6
git fetch origin main~1:foo
git fetch origin foo:main
git checkout foo
git merge main
#2.7
git push origin :foo
git fetch origin :bar
#2.8
git pull origin bar:foo
git pull origin main:side