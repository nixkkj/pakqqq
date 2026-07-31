:: Made by Quaked
:: TikTok: _Quaked_
:: Discord: https://discord.gg/8NqDSMzYun

@echo off
title Process Destroyer Extreme V2.6
color B

:: Creating PD Extreme Services Reg Backup.
reg export "HKLM\System\CurrentControlSet\Services" "C:\Oneclick Tools\Process Destroyer\Revert\Services_Backup.reg" /y >nul 2>&1
if errorlevel 1 (
    echo [%DATE% %TIME%] PD Extreme Services Reg Backup: Failed to create. >> "C:\Oneclick Logs\Oneclick Log.txt"
) else ( 
    echo [%DATE% %TIME%] PD Extreme Services Reg Backup: Created successfully. >> "C:\Oneclick Logs\Oneclick Log.txt"
)

:: Creating TrustedInstaller Reg Backup.
reg export "HKLM\System\CurrentControlSet\Services\TrustedInstaller" "C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg" /y >nul 2>&1
if errorlevel 1 (
    echo [%DATE% %TIME%] PD Extreme TrustedInstaller Reg Backup: Failed to create. >> "C:\Oneclick Logs\Oneclick Log.txt"
) else ( 
    echo [%DATE% %TIME%] PD Extreme TrustedInstaller Reg Backup: Created successfully. >> "C:\Oneclick Logs\Oneclick Log.txt"
)

:: Creating Windows Installer Reg Backup.
reg export "HKLM\System\CurrentControlSet\Services\msiserver" "C:\Oneclick Tools\Process Destroyer\Revert\Windows_Installer_Backup.reg" /y >nul 2>&1
if errorlevel 1 (
    echo [%DATE% %TIME%] PD Extreme Windows Installer Reg Backup: Failed to create. >> "C:\Oneclick Logs\Oneclick Log.txt"
) else ( 
    echo [%DATE% %TIME%] PD Extreme Windows Installer Reg Backup: Created successfully. >> "C:\Oneclick Logs\Oneclick Log.txt"
)

:: Process Destroyer Extreme GUI.
cls
chcp 65001 >nul 2>&1
echo ╔═══════════════════════════════════════╗
echo ║ ✅ Running Process Destroyer Extreme. ║
echo ╚═══════════════════════════════════════╝
setlocal enabledelayedexpansion
timeout 2 > nul

:: Count Variables.
set "FoundCount=0"
set "NotFoundCount=0"
set "DeleteCount=0"

:: Windows Services.
set "svc1=AarSvc"
set "svc2=ADPSvc"
set "svc3=AJRouter"
set "svc4=ALG"
set "svc5=AppIDSvc"
set "svc6=AppInfo"
set "svc7=AppMgmt"
set "svc8=AppReadiness"
set "svc9=AppXSvc"
set "svc10=AssignedAccessManagerSvc"
set "svc11=autotimesvc"
set "svc12=AxInstSV"
set "svc13=BcastDVRUserService"
set "svc14=BDESVC"
set "svc15=BFE"
set "svc16=BITS"
set "svc17=BluetoothUserService"
set "svc18=BTAGService"
set "svc19=BthAvctpSvc"
set "svc20=bthserv"
set "svc21=CaptureService"
set "svc22=cbdhsvc"
set "svc23=CDPUserSvc"
set "svc24=CDPSvc"
set "svc25=CertPropSvc"
set "svc26=ClipSVC"
set "svc27=CloudBackupRestoreSvc"
set "svc28=cloudidsvc"
set "svc29=COMSysApp"
set "svc30=ConsentUxUserSvc"
set "svc31=CredentialEnrollmentManagerUserSvc"
set "svc32=CscService"
set "svc33=dcsvc"
set "svc34=defragsvc"
set "svc35=DeviceAssociationBrokerSvc"
set "svc36=DeviceAssociationService"
set "svc37=DevicePickerUserSvc"
set "svc38=DevicesFlowUserSvc"
set "svc39=DevQueryBroker"
set "svc40=diagnosticshub.standardcollector.service"

set "svc42=diagsvc"
set "svc43=DisplayEnhancementService"
set "svc44=DmEnrollmentSvc"
set "svc45=dmwappushservice"
set "svc46=DoSvc"
set "svc47=dot3svc"

set "svc49=DsmSvc"
set "svc50=DsSvc"
set "svc51=DusmSvc"
set "svc52=Eaphost"
set "svc53=EFS"
set "svc54=embeddedmode"
set "svc55=EntAppSvc"

set "svc57=EventSystem"
set "svc58=fdPHost"
set "svc59=FDResPub"
set "svc60=fhsvc"
set "svc61=FontCache"
set "svc62=FrameServer"
set "svc63=FrameServerMonitor"
set "svc64=GameInputSvc"
set "svc65=GraphicsPerfSvc"
set "svc66=gpsvc"
set "svc67=hidserv"
set "svc68=hpatchmon"
set "svc69=HvHost"
set "svc70=icssvc"
set "svc71=IKEEXT"
set "svc72=InstallService"
set "svc73=InventorySvc"
set "svc74=iphlpsvc"
set "svc75=IpxlatCfgSvc"
set "svc76=Keyiso"
set "svc77=KtmRm"
set "svc78=LanmanServer"
set "svc79=LanmanWorkstation"
set "svc80=lfsvc"
set "svc81=LocalKdc"
set "svc82=LicenseManager"
set "svc83=lltdsvc"
set "svc84=lmhosts"
set "svc85=LxpSvc"
set "svc86=MapsBroker"
set "svc87=McpManagementService"
set "svc88=McmSvc"
set "svc89=MessagingService"
set "svc90=midisrv"
set "svc91=MDCoreSvc"
set "svc92=mpssvc"
set "svc93=MSDTC"
set "svc94=MSiSCSI"
set "svc95=msiserver"
set "svc96=NaturalAuthentication"
set "svc97=NcaSvc"
set "svc98=NcbService"
set "svc99=NcdAutoSetup"
set "svc100=Netlogon"
set "svc101=Netman"
set "svc102=NetSetupSvc"
set "svc103=NetTcpPortSharing"
set "svc104=NgcCtnrSvc"
set "svc105=NgcSvc"
set "svc106=NlaSvc"
set "svc107=NPSMSvc"
set "svc108=OneSyncSvc"
set "svc109=p2pimsvc"
set "svc110=p2psvc"
set "svc111=P9RdrService"
set "svc113=PeerDistSvc"
set "svc114=PenService"
set "svc115=perceptionsimulation"
set "svc116=PerfHost"
set "svc117=PhoneSvc"
set "svc118=PimIndexMaintenanceSvc"
set "svc119=pla"

set "svc121=PNRPAutoReg"
set "svc122=PNRPsvc"
set "svc123=PrintDeviceConfigurationService"
set "svc124=PrintNotify"
set "svc125=PrintScanBrokerService"
set "svc126=PrintWorkflowUserSvc"
set "svc127=PushToInstall"
set "svc128=QWAVE"
set "svc129=RasAuto"
set "svc130=RasMan"
set "svc131=refsdedupsvc"
set "svc132=RemoteAccess"
set "svc133=RemoteRegistry"
set "svc134=RetailDemo"
set "svc135=RmSvc"
set "svc136=RpcLocator"
set "svc137=SamSs"
set "svc138=SCardSvr"
set "svc139=ScDeviceEnum"
set "svc140=SCPolicySvc"
set "svc141=SDRSVC"
set "svc142=Schedule"
set "svc143=seclogon"
set "svc144=SecurityHealthService"
set "svc145=SENS"
set "svc146=Sense"
set "svc147=SensorDataService"
set "svc148=SensorService"
set "svc149=SensrSvc"
set "svc150=SEMgrSvc"
set "svc151=SessionEnv"
set "svc152=SgrmBroker"
set "svc153=SharedRealitySvc"
set "svc154=ShellHWDetection"
set "svc155=shpamsvc"
set "svc156=SmsRouter"
set "svc157=smphost"
set "svc158=SNMPTrap"
set "svc159=Spectrum"
set "svc160=Spooler"
set "svc161=SSDPSRV"
set "svc162=ssh-agent"
set "svc163=SstpSvc"
set "svc164=stisvc"
set "svc165=StorSvc"
set "svc166=svsvc"
set "svc167=SystemEventsBroker"
set "svc168=SysMain"
set "svc169=TapiSrv"
set "svc170=TermService"
set "svc171=Themes"
set "svc172=TieringEngineService"
set "svc173=TimeBrokerSvc"
set "svc174=TokenBroker"
set "svc175=TrkWks"
set "svc176=TroubleshootingSvc"
set "svc177=TrustedInstaller"
set "svc178=tzautoupdate"
set "svc179=UdkUserSvc"
set "svc180=UevAgentService"
set "svc181=uhssvc"
set "svc182=UmRdpService"
set "svc183=UnistoreSvc"
set "svc184=upnphost"
set "svc185=UserDataSvc"
set "svc186=VacSvc"
set "svc187=VaultSvc"
set "svc188=vds"
set "svc189=vmicguestinterface"
set "svc190=vmicheartbeat"
set "svc191=vmickvpexchange"
set "svc192=vmicrdv"
set "svc193=vmicshutdown"
set "svc194=vmictimesync"
set "svc195=vmicvmsession"
set "svc196=vmicvss"
set "svc197=W32Time"
set "svc198=WalletService"
set "svc199=WarpJITSvc"
set "svc200=wbengine"
set "svc201=WbioSrvc"
set "svc202=Wcmsvc"
set "svc203=wcncsvc"
set "svc204=WdNisSvc"
set "svc205=WdiServiceHost"
set "svc206=WdiSystemHost"
set "svc207=WebClient"
set "svc208=webthreatdefusersvc"
set "svc209=webthreatdefsvc"
set "svc210=Wecsvc"
set "svc211=WEPHOSTSVC"
set "svc212=wercplsupport"
set "svc213=WerSvc"
set "svc214=WFDSConMgrSvc"
set "svc215=whesvc"
set "svc216=WiaRpc"
set "svc217=WinDefend"
set "svc218=WinHttpAutoProxySvc"
set "svc219=WinRM"
set "svc220=wisvc"
set "svc221=WlanSvc"
set "svc222=wlidsvc"
set "svc223=wlpasvc"
set "svc224=WManSvc"
set "svc225=wmiApSrv"
set "svc226=WMPNetworkSvc"
set "svc227=workfolderssvc"
set "svc228=WpcMonSvc"
set "svc229=WPDBusEnum"
set "svc230=WpnUserService"
set "svc231=WpnService"
set "svc232=wuqisvc"
set "svc233=WSAIFabricSvc"
set "svc234=wscsvc"
set "svc235=WSearch"
set "svc236=WwanSvc"
set "svc237=XblAuthManager"
set "svc238=XblGameSave"
set "svc239=XboxGipSvc"
set "svc240=XboxNetApiSvc"

:: Service Delete Loop.
for /L %%i in (1,1,240) do (
    set "svc=!svc%%i!"
    reg query "HKLM\SYSTEM\CurrentControlSet\Services\!svc!" >nul 2>&1
    if !errorlevel! equ 0 (
        set /A "FoundCount+=1"
        echo [%DATE% %TIME%] !FoundCount!: Found !svc!. >> "C:\Oneclick Logs\Extra\Process Destroyer Extreme Log.txt"
        echo ✔  Deleting !svc!.
        reg delete "HKLM\SYSTEM\CurrentControlSet\Services\!svc!" /f >nul 2>&1
        reg query "HKLM\SYSTEM\CurrentControlSet\Services\!svc!" >nul 2>&1
        if !errorlevel! equ 0 (
            set /A "DeleteCount+=1"
            echo [%DATE% %TIME%] !DeleteCount!: Failed to delete !svc!. >> "C:\Oneclick Logs\Extra\Process Destroyer Extreme Log.txt"
        ) else (
            set /A "DeleteCount+=1"
            echo [%DATE% %TIME%] !DeleteCount!: Successfully deleted !svc!. >> "C:\Oneclick Logs\Extra\Process Destroyer Extreme Log.txt"
        )
    ) else (
        set /A "NotFoundCount+=1"
        echo [%DATE% %TIME%] !NotFoundCount!: !svc! not found. >> "C:\Oneclick Logs\Extra\Process Destroyer Extreme Log.txt"
    )
)

:: Set Software Protection to Manual. (Needed for Windows Activation)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sppsvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1

:: Removing Mpssvc and PolicyAgent. (SC Config, need to disable these services and mpssvc may not delete)
sc delete mpssvc >nul 2>&1
sc delete PolicyAgent >nul 2>&1
sc delete SharedAccess >nul 2>&1

:: Rename Ctfmon, BackgroundTaskHost, and TextInputHost.
taskkill /f /im ctfmon.exe >nul 2>&1
REN "C:\Windows\System32\ctfmon.exe" "ctfmon.exee" >nul 2>&1
taskkill /f /im backgroundTaskHost.exe >nul 2>&1
REN "C:\Windows\System32\backgroundTaskHost.exe" "backgroundTaskHost.exee" >nul 2>&1
taskkill /f /im TextInputHost.exe >nul 2>&1
REN "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TextInputHost.exe" "TextInputHost.exee" >nul 2>&1

:: Close.
echo ✔  Closing in 3 seconds...
timeout 3 > nul
exit
