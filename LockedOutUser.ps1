
function LockedoutUser{
    Write-Host "Check if AD user is locked out or password is expired." -ForegroundColor Green
    $userName = read-host -Prompt "What is the username to check? "

    get-aduser $userName -prop lockedout, passwordexpired

}

LockedoutUser
while($true){LockedoutUser
}