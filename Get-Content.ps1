$host.ui.RawUI.WindowTitle = "tail powershell"
# equivalente a comando "tail -f" de linux
Get-Content -Path "\\10.1.3.171\c$\Program Files (x86)\Lansweeper\Service\errorlog.txt" -Tail 0 -Wait
