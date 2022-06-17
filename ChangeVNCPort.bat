"C:\Program Files\uvnc bvba\UltraVNC\winvnc.exe" -listen %port
net stop uvnc_service
net start uvnc_service
