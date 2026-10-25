@echo off
echo ===================================================
echo     PUSH ATTENDANCE APP TO GITHUB
echo ===================================================
echo.
set /p REPO_URL="Enter your GitHub Repository URL (e.g. https://github.com/YOUR_USERNAME/attendance.git): "

if "%REPO_URL%"=="" (
    echo Error: No repository URL provided!
    pause
    exit /b
)

echo.
echo [1/6] Initializing Git...
git init

echo [2/6] Adding Project Files...
git add .

echo [3/6] Creating Initial Commit...
git commit -m "Initial commit - Staff Tracker with iOS GitHub Actions workflow"

echo [4/6] Setting Main Branch...
git branch -M main

echo [5/6] Connecting to GitHub Repository...
git remote remove origin 2>nul
git remote add origin %REPO_URL%

echo [6/6] Uploading to GitHub...
git push -u origin main

echo.
echo ===================================================
echo SUCCESS! Your project is now on GitHub!
echo ===================================================
pause
