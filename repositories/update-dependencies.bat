GOPROXY=direct go get -u ./...
go mod tidy
go mod vendor
git commit -m "dependencies update"
git push
gh . newpatch
git push --tags
