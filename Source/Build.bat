IF NOT DEFINED Configuration SET Configuration=Release
rmdir /s /q %userprofile%\.nuget\packages\msbuild.community.tasks
del packages\msbuild.community.tasks.*
MSBuild.exe MSBuild.Community.Tasks.sln -t:restore -p:RestorePackagesConfig=true
MSBuild.exe MSBuild.Community.Tasks.sln -m /property:Configuration=%Configuration%
git add -A
git commit -a --allow-empty-message -m ''
git push