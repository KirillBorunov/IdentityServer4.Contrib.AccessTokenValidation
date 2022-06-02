Remove-Item *.nupkg
nuget pack ./source/AccessTokenValidation/AccessTokenValidation.csproj -Build -properties Configuration=Release -IncludeReferencedProjects
pause