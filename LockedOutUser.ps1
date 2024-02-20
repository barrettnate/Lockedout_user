
function LockedoutUser{
    Write-Host "Check if AD user is locked out or password is expired." -ForegroundColor Green
    $userName = read-host -Prompt "What is the username to check? "
    try{
        get-aduser $userName -prop lockedout, passwordexpired -ErrorAction Stop
    }
    catch{
        Write-Host "User not found."
    }
}
function Run_Script{
    do {
        #Your script logic here
        LockedoutUser
        Write-Host " Press 'x' to exit or any other key to continue.`n" -ForegroundColor Green
    
        #Wait for user input
        $input = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

    } while ($input.Character -ne 'x')

    Write-Host "You have exited the script." -ForegroundColor Red
}

Run_Script
