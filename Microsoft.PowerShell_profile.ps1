set-location c:\projects
# Load posh-git example profile
. 'C:\tools\poshgit\dahlbyk-posh-git-c39da78\profile.example.ps1'

Rename-Item Function:\Prompt PoshGitPrompt -Force
function Prompt() {if(Test-Path Function:\PrePoshGitPrompt){++$global:poshScope; New-Item function:\script:Write-host -value "param([object] `$object, `$backgroundColor, `$foregroundColor, [switch] `$nonewline) " -Force | Out-Null;$private:p = PrePoshGitPrompt; if(--$global:poshScope -eq 0) {Remove-Item function:\Write-Host -Force}}PoshGitPrompt}

$env:path += ";c:\Program Files\MongoDB\Server\3.2\bin"

set-alias vi 'C:\Program Files (x86)\vim\vim80\vim.exe'
set-alias vim 'C:\Program Files (x86)\vim\vim80\vim.exe'
set-alias man get-help -option allscope
set-alias lsa ls-all -option allscope
set-alias cdl cd-ls -option allscope 
set-alias cls scroll-screen -option allscope

function alert($time=0)
{
    sleep($time)
    [console]::beep(1000, 400)
}

function edit-profile()
{
    vi $profile
}
function ls-all($path)
{
    $i = gci $path
    $i += gci $path -hidden
    $i | sort mode -desc
}

function cd-ls($path)
{
    set-location $path
    ls-all
}

function gitl($n) 
{
   if ($n) {
        git log -n $n --graph --decorate
    }
    else {
        git log --graph --all --decorate
    }
}
function touch($file)
{
    echo $null >> $file
}

function scroll-screen($leaveRows){
    if ($leaveRows) {
        [system.console]::setwindowposition(0, [system.console]::cursortop - $leaveRows - 1)
    }
    else {
        [system.console]::setwindowposition(0, [system.console]::cursortop)
    }
}
mode con cols=150 
yacta
