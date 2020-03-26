Param($SolutionName, $WebAppName, $LibName)

function Create-Project
{
	Param($SolutionName, $WebAppName, $LibName)
	
	New-Item $SolutionName -ItemType "directory"
	Set-Location -Path $SolutionName
	dotnet new solution
	New-Item $WebAppName -ItemType "directory"
	Set-Location -Path $WebAppName
	dotnet new mvc
	Set-Location -Path "../"
	New-Item $LibName -ItemType "directory"
	Set-Location -Path $LibName
	dotnet new classlib
	Set-Location -Path "../$WebAppName"
	dotnet add reference "../$LibName/$LibName.csproj"
	Set-Location -Path "../"
	dotnet sln add "$WebAppName/$WebAppName.csproj"
	dotnet sln add "$LibName/$LibName.csproj"
	dotnet build .\$SolutionName.sln
	Set-Location -Path "$WebAppName"
	dotnet run
}

Create-Project -SolutionName $SolutionName -WebAppName $WebAppName -LibName $LibName