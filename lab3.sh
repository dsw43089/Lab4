git commit
git commit

git checkout -b bugFix

git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix

git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main

git checkout C4

git checkout bugFix^

git branch -f main c6
git branch -f bugFix c0
git checkout HEAD^

git reset c1
git checkout pushed
git revert c2

git cherry-pick C3 C4 C7

git rebase -i HEAD~4

git rebase -i HEAD~3
git rebase bugFix main

git rebase -i HEAD~2
git commit --amend
git rebase -i HEAD~2
git rebase caption main

git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

git tag v1 C2
git tag v0 C1
git checkout v1

git describe bugFix
git commit

git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main

git branch bugWork main^^2^

git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2 
git branch -f three C2