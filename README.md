# Automation with .NET Core CLI

.NET Core has CLI support. In normal development case it is useful to use Visual Studio's powerfull tooling support. But at the time of automation CLI becomes very useful tool. Imagine you need to create same project structure in everyone's machine of your team members. In this case you can use .NET Core CLI to automate the process.

Here I have used .NET Core CLI and PowerShell to create a basic project structure.

Example use

```powershell
Create-Project.ps1 -SolutionName "MySol" -WebAppName "MySol.WebApp1" -LibName "MySol.Lib1"
```
