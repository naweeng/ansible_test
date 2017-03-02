
GIT_REVISION=`git rev-parse HEAD`

git diff-tree --name-only HEAD | grep test1

$? || exit 0

# Trigger second job
curl 'http://build.indix.tv/go/api/pipelines/riemannDeploy/schedule[materials[https://github.com/naweeng/ansible_test.gi]t=$GIT_REVISION]' -u 'naween:naween321' -H 'Confirm: true' -X POST
