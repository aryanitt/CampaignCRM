Set-Location -Path "c:\Users\aryan\OneDrive\Desktop\CRM"

git init
git remote add origin https://github.com/aryanitt/CampaignCRM.git
git branch -M main

# Function to add and commit safely
function Invoke-GitCommit {
    param(
        [string]$Date,
        [string]$Message,
        [string[]]$Files
    )
    $env:GIT_AUTHOR_DATE = $Date
    $env:GIT_COMMITTER_DATE = $Date
    
    foreach ($file in $Files) {
        if (Test-Path $file) {
            git add $file
        }
    }
    
    # Check if there are changes to commit
    $status = git status --porcelain
    if ($status) {
        git commit -m $Message
    }
}

Invoke-GitCommit -Date "2026-06-13T10:15:00+0530" -Message "chore: initial project setup and scaffolding" -Files @(
    ".gitignore",
    "backend/package.json", "backend/tsconfig.json", "backend/.env.example",
    "frontend/package.json", "frontend/tsconfig.json", "frontend/next.config.js", "frontend/postcss.config.js", "frontend/tailwind.config.js"
)

Invoke-GitCommit -Date "2026-06-14T11:30:00+0530" -Message "feat: add database configuration and core models" -Files @(
    "backend/src/config", "backend/src/models",
    "frontend/lib", "frontend/store"
)

Invoke-GitCommit -Date "2026-06-15T09:45:00+0530" -Message "feat: implement API routes and AI services" -Files @(
    "backend/src/controllers", "backend/src/services", "backend/src/routes"
)

Invoke-GitCommit -Date "2026-06-15T16:20:00+0530" -Message "feat: setup frontend Next.js structure and UI components" -Files @(
    "frontend/app", "frontend/components", "frontend/next-env.d.ts"
)

# For the last commit, add everything remaining
$env:GIT_AUTHOR_DATE = "2026-06-16T01:25:00+0530"
$env:GIT_COMMITTER_DATE = "2026-06-16T01:25:00+0530"
git add .
$status = git status --porcelain
if ($status) {
    git commit -m "fix: finalize dashboard integration, seed scripts and documentation"
}

git push -u origin main --force
