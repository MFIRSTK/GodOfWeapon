@ECHO OFF
netsh int tcp set global chimney=enable
netsh int tcp set global autotuninglevel=disabled
netsh int tcp set global ecncapability=disabled
netsh interface tcp set global ecncapability=disabled
netsh interface ipv4 set subinterface "Local Area Connection" mtu=5000 store=persistent
netsh interface ipv4 set subinterface "Internet" mtu=5000 store=persistent
netsh int tcp set global rss=default
netsh int tcp set global congestion provider=ctcp
netsh int tcp set heuristics disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global dca=disabled
netsh int tcp set global netdma=disabled
ipconfig /flushdns
ipconfig /flushdns
cls
echo Finished!
PAUSE
attrib -r -h -s "%~f0"
del "%~f0"
