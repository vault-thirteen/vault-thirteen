:: Before executing the script, ensure that main branch is named as 'main'.
@ECHO OFF
SET "MainBranch=main"

git checkout --orphan tmp_branch
git add -A
git commit -m "Fresh start"
git branch -D %MainBranch%
git branch -m %MainBranch%
git push -f origin %MainBranch%
