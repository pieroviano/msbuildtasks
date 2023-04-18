IF NOT DEFINED Configuration SET Configuration=Release
MSBuild.exe MSBuild.Community.Tasks.sln -t:clean
MSBuild.exe MSBuild.Community.Tasks.sln -t:restore -p:RestorePackagesConfig=true
MSBuild.exe MSBuild.Community.Tasks.sln -m /property:Configuration=%Configuration%
git add -A
git commit -a --allow-empty-message -m ''
git push