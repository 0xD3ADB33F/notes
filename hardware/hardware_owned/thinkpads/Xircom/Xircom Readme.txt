	     Xircom RealPort Ethernet 10/100 + Modem 56
		   Software Release Version 2.20
			  May 1, 1998

=======================================================================

Thank you for purchasing the Xircom RealPort Ethernet 10/100 + Modem
56 Adapter (REM56G-100). Xircom has done everything to ensure that our
adapters are compatible with the widest range of notebook PCs possible.
Xircom is equally committed to customer satisfaction and timely 
response to the needs and concerns of our customers.

If you have compatibility issues related to your specific environment,
or require additional information, please refer to your Xircom 
RealPort Ethernet 10/100 + Modem 56 User's Guide.  

Remember to register your Xircom adapter to receive information about
future software upgrades and new products.


CONTENTS
========
   1) Xircom RealPort Ethernet 10/100 + Modem 56 Characteristics
   2) Release Notes/Known Limitations
   3) Machine Specific Notes
   4) Modem Script Files
   5) Xircom Technical Support


1) XIRCOM RealPort ETHERNET ADAPTER 10/100 + MODEM 56 CHARACTERISTICS
   ==================================================================
   This release of the Xircom RealPort Ethernet Adapter 10/100 + 
   Modem 56 supports the following features:

   -Integrated Ethernet, modem and telephone pass-thru connectors.  

   -Auto-negotiation of either 10Mbps or 100Mbps Ethernet networks 
    with simultaneous modem connections.   

   -Full suite of network driver support - Allows 10Mbps or 100Mbps
    connections across a wide range of operating systems and networks,
    including native 32-bit NDIS3 driver support for Windows 95 and
    Windows NT.

   -K56Flex modem technology which allows access to information and
    e-mail on corporate networks, the Internet, and other online
    services at speeds up to 56Kbps over standard phone lines. K56Flex
    enables speeds up to 56Kbps when data is downloaded. Upstream data
    sent from the user travels at the standard V.34 rate. The modems
    at both ends of the connection must support K56Flex in order to
    achieve 56K speeds. 

   -Flash ROM upgrade capability to the future ITU V.90 standard.
    
   -Please see the Xircom Web site (http://www.xircom.com) for the 
    latest modem software for your REM56G-100. 

   -HotSwap support - Supports easy replacement of one card with 
    another while power is on, as well as the ability to gracefully
    disconnect from the network.


   -Models available:

    - REM56G-100BTX


2)  RELEASE NOTES/KNOWN LIMITATIONS
    ===============================

    The drivers supplied with the REM56G-100 are completely 
    compatible with the CreditCard Ethernet 10/100 + Modem 56.
    Windows 95/NT will recognize the RealPort 10/100 + Modem
    56 as a CreditCard 10/100 + Modem 56.     

    This release of the RealPort Ethernet 10/100 + Modem 56
    Adapter contains updated modem script files which are 
    located on the Windows 3.x Installation diskette. Consult
    the SCRIPTS.TXT file located in the SCRIPTS subdirectory
    on that diskette for further details.
      
    
    Supported Environments
    ----------------------    

     The following driver types are included with this release:

     -NDIS3 Driver for Microsoft Windows NT (Ver. 3.51, 4.0) 
      and Windows 95 (CEM56.SYS)
     -NDIS4 Driver for Microsoft Windows NT 4.0 and Windows
      95(OSR2), and Windows 98 (CEM56N4.SYS)
     -32 bit Novell Client driver and installation support files 
      for Novell Client 32 (Windows 95, Windows NT 4.0, and 
      DOS/Windows 3.x) (XCEM.LAN, CEM56LAN.INF, XCEM.LDI) 
     -OS/2 ODI Driver (XCEMODI.OS2)
     -OS/2 NDIS2 Driver (XCEMNDIS.OS2)
     -DOS ODI Driver (XCEMODI.COM)
     -DOS NDIS2 Driver (XCEMNDIS.EXE)
     -Packet Driver (XCEMPD.COM)
     -Diagnostic test program (XCEMTEST.EXE)
     -Modem test program (MDMTESTW.EXE)
     -Modem Enabler (CMENABLE.COM)

    The following features are available in this release:

    -Support for unattended installation to a domain server under
     Windows NT.  For specific instructions on how to implement this
     feature, please refer to the On-Line help file (WIN95NT.HLP) 
     supplied on the Windows 95/NT Installation Disk. This file is also 
     copied over to the Xircom 16-bit Utilites Program Group during
     installation. 

    -An NDIS4 Compliant Driver (CEM56N4.SYS) for use with Windows NT 
     4.0, Windows 95 (OSR2), and Windows 98. This driver is located 
     in the NDIS4 subdirectory on the Windows 95/NT Installation Disk.

    -NOTE: The first release of Windows 95 (which is normally referred 
     to as Windows 95 "Retail" or Windows 95A) does not support the 
     NDIS4 driver. In this environment, the NDIS3 driver (CEM56.SYS) 
     located in the root directory on the Windows 95/NT Installation
     diskette must be used.

    -Novell Client 32 .INF files for Windows 95 and Windows NT, as
     well as a Client 32 .LDI file for Windows 3.x and DOS

    -OS/2 ODI and NDIS2 drivers

     Known Limitations    
     -----------------

     -In order to achieve 56Kbps connects, there can be only one
      digital to analog conversion between the connecting modems.
      Also, the modems at both ends of the call must be K56Flex
      compatible to achieve 56K speeds; otherwise a standard V.34
      connection (maximum 33.6Kpbs) will be negotiated. Current FCC 
      regulations limit download speeds of the modem to 53Kbps.

     -Full-duplex Ethernet transmission is only supported on 10Mbps
      networks. This feature is only available when the Adapter is
      connected to switched full-duplex 10Mbps Ethernet hubs.
	
     -In order to connect to a 100Base-TX Ethernet network, Category
      5 unshielded twisted pair (UTP) network cable terminating in a
      male RJ-45 connector must be connected to a 100Mbps hub or 
      switch. Check with your LAN Administrator if you are not certain
      of your network speed and infrastructure.

     -Under OEM Service Release Version 2 of Win95 (OSR2), the multi-
      function parent device may be displayed under the Modem category
      in addition to the modem device. The modem device string is:
      "Modem of Xircom 16-bit 100+56". The other device listed 
      represents the parent multifunction device. 

     -When using QmodemPro in DOS with XCEMODI.COM in SHAREIRQ mode, 
      modem performance will be slow. Xircom recommends using MODE IO 
      to improve performance.

     -Using Windows NT 4.0 with Microsoft Service Pack 1 may cause 
      some portable PCs to lock up on Shutdown or Restart. Updating 
      to Microsoft Service Pack 3 resolves this issue.     

     -If you experience intermittent times where the modem will not
      respond to an AT Command while running CMENABLE.COM on a 
      portable that uses the TI1130 PCMCIA Controller, run XCEMTEST
      and choose the test function to determine the IRQ the card is
      using and run CMENABLE COMIRQ=x where x is the IRQ determined
      by XCEMTEST. See the User's Guide for additional information 
      on using XCEMTEST. 
      
     -The COM Port Monitor Utility (XCOMMON) must be launched prior
      to any communication applications for it to function.
    
     -On some computers running Windows NT 4.0, if NT networking 
      functionality has not already been installed, lockup and/or 
      "blue screen" symptoms may be encountered when installing the 
      REM56G-100 adapter along with networking. This has been
      observed primarily on computers that support CardBus. The
      following workarounds for this situation have been found to
      be successful:

      Solution 1

      Perform the installation of Windows NT networking and the 
      REM56G-100 adapter WITHOUT the REM56G-100 actually present in
      the computer. Assign resources that are appropriate for
      your computer. Once the installation process has completed,
      shut down the computer and insert the REM56G-100 adapter in
      the computer and then reboot. 

      Solution 2

      When initially installing networking, choose the "MS Loopback 
      Adapter" from the adapter list instead of installing the
      REM56G-100 at this time. Once networking is installed, reboot
      the computer, remove the "MS Loopback Adapter" from the
      configuration, and install the REM56G-100 according to the
      instructions in your User's Guide.

      Solution 3

      In some cases it is necessary to install the REM56G-100 while 
      installing networking for the purposes of joining a Domain. 
      This is true in the case of an unattended installation to
      an NT domain server. In such cases, download the latest
      version of PCMCIA.SYS (pcmfix-i.exe). At the time of this
      publication this file can be obtained at the following URL: 

      ftp.microsoft.com/bussys/winnt/winnt-public/fixes/usa/nt40/
      hotfixes-postSP3/pcm-fix/

      Rename the existing PCMCIA.SYS_ located in the \I386 directory. 
      Copy the updated version to the \I386 directory. See the 
      On-Line Help file for additional information.

      In a case in which Windows NT has already been installed but 
      networking has not and the need exists to join a domain in 
      this manner, overwrite the PCMCIA.SYS file that currently 
      exists in the \%systemroot%\system32\drivers directory with 
      the new one. You should then be able to install the REM56G-100 
      while installing networking without difficulty. 

     -PCMCIA adapters may feel hot to the touch after prolonged 
      periods of normal use in some environments. This is normal
      and is not known to affect operation of the Xircom card,
      the host computer, or any other peripheral device. However,
      to avoid discomfort, use caution when removing the card
      from your computer after extended use (see your computer
      manual for removal procedures).
 

3)   MACHINE SPECIFIC NOTES
     ======================

     ThinkPad 760ED
     --------------
   
     -Xircom recommends disabling the IR port and built-in modem,
      then using interrupt 9. ThinkPad utilities that aid in
      configuring the 760ED are available from IBM's web site.     

     ThinkPad 760XD
     -------------------
   
     -Xircom recommends disabling the IR and Serial ports, then using
      COM1 for the Xircom modem and interrupt 9. IBM's internal MWave
      modem should be placed at COM2.
     
     Toshiba Portege 660CDT
     ---------------------- 

     -All Xircom references under CardWork in the Registry and all
      Tranxit references in the SYSTEM.INI must be removed for proper
      installation using the CEM56.SYS. 

     -Card and Socket Services (CS/SS) must also be removed from the
      CONFIG.SYS.

     Panasonic CF-62
     ----------------

     -When using XCEMODI.COM or XCEMNDIS.EXE in a DOS/Win 3.x 
      environments, CS/SS needs to be loaded for the Adapter to
      be recognized.

     -When using CEM56.SYS under NT 4.0, the driver fails to 
      initialize.

     NEC 6050
     ---------

     -When using XCEMODI.COM or XCEMNDIS.EXE in DOS/Win 3.x
      environments, Xircom recommends adding the keyword
      MODE IO in the PROTOCOL.INI or NET.CFG.

     NEC 2400
     ---------

     -When using CEM56.SYS under Windows 95 or NT 4.0, the Plug
      & Play setting in the BIOS must be set to: NO.

     NEC 6000 and 6030
     -----------------

     -Xircom recommends disabling the IR port.     

     -When using the XCEMNDIS.EXE or XCEMODI.COM under Windows
      3.x with CS/S, Xircom recommends going to the CardWiz 
      directory, executing config.exe, selecting Modem Card 
      Configurations, and changing the interrupt number of com4
      (currently 11), to int=9.      

     -When using the XCEMNDIS.EXE or XCEMODI.COM under Windows
      3.x without CS/S, Xircom recommends setting the Modem to
      load at com4 in the PROTOCOL.INI or NET.CFG.

     NEC 6050NT
     ----------

     -When using CEM56.SYS under NT 4.0 with Service Pack 1 using 
      CardWizard, the driver will fail to initialize. Xircom 
      recommends removing CardWizard. 

     Sharp 9020
     -----------

    -When using CEM56.SYS under Windows 95, remark out the Tranxit 
     references in the SYSTEM.INI. Also, remove the SXIRC027.INF and
     NETXIR.INF from the \windows\system\inf directory. 

     Sharp PC-8650
     -------------

     -When using XCEMODI.COM in DOS/Win 3.x environments, C/SS needs
      to be loaded for the driver to initialize. CMENABLE.COM will not
      load.
    
4) MODEM SCRIPT FILES
   ==================

   Modem script files are located on the Windows 3.x Installation Disk 
   under A:\Scripts. See SCRIPTS.TXT for additional installation
   instructions for these modem script files. 
     

5) XIRCOM TECHNICAL SUPPORT
   ========================

   To obtain technical support for your Xircom product, please call or 
   send a facsimile to the appropriate number listed below.

   Access the Xircom TechLine quick-search database of problem
   solutions at up to 14400 bps, No parity, 8 data bits, 1 stop bit
   (N-8-1). Use ANSI for your terminal emulation (you must have 
   ANSI.SYS loaded on your system to use the Xircom KnowledgeLine).

   Access the Xircom INFOSYS BBS at up to 14400 bps (28800 in the 
   U.S.), No parity, 8 data bits, 1 stop bit (N-8-1). Use ANSI, TTY, 
   or NONE for your terminal emulation as the Xircom BBS PCs do not 
   support DEC VT-type terminal emulations.

XIRCOM CORPORATE               North and South America
-----------------------------------------------------------------------
Xircom, Inc.                Sales Support ............. (800) 438-4526
Corporate Headquarters      Sales Support ............. (805) 376-9300
2300 Corporate Center Dr.   Technical Support ......... (805) 376-9200
Thousand Oaks, CA  91320    24-Hr KnowledgeLine ....... (805) 375-7202
.                           24-Hr Documents-by-Fax .... (800) 775-0400
.                           24-Hr Documents-by-Fax .... (805) 376-9020
.                           24-Hr Fax - Corporate ..... (805) 376-9311
Shipping Address:           24-Hr Fax - Sales Support . (805) 376-9220
2101 Corporate Center Dr.   24-Hr Fax - Tech Support .. (805) 376-9100
Thousand Oaks, CA  91320    24-Hr Data Lines - BBS .... (805) 376-9130
.                           24-Hr E-mail ............... cs@xircom.com
.                           24-Hr Internet...... http://www.xircom.com
.                           HOURS (Sales): 8 a.m. to 5 p.m., Mon-Fri
.                           HOURS (Tech):  5 a.m. to 6 p.m., Mon-Fri

XIRCOM EUROPE               Europe, Middle East, and Africa
-----------------------------------------------------------------------
Xircom Europe N.V.          Sales Support ....... +32/(0)3 450.08.11
King Square                 24-Hr Documents-by-Fax+32/(0)3 450.08.00
De Villermontstraat 16      24-Hr Fax ............+32/(0) 70 233 306
2550 Kontich, Belgium       24-Hr Data Lines - BBS+32/(0) 70 233 163
.                           Technical Support Telephone Numbers
.                              Native English.....+32/(0) 70 233 307
.                              Native German......+32/(0) 70 233 850
.                              Native French......+32/(0) 70 233 851
.                              Native Dutch.......+32/(0) 70 233 852
.                           TechLine On Line......+32/(0) 70 233 711
.                           24-Hr E-mail.......... eurots@xircom.com
.                           24-Hr Internet.....http://www.xircom.com
.                           HOURS (Sales): 9:00 to 17:00, Mon-Thu;
.                                          to 16:00, Fri
.                           HOURS (Tech): 9:00 to 18:00, Mon-Fri

Regional Sales and Marketing Offices
------------------------------------
Xircom France sarl            Sales Support........ +33/(1) 34.63.09.40
41Bis Avenue de L-Europe      24-Hr Fax ........... +33/(1) 34.63.09.41
BP 264
78147 Velizy Cedex, France

Xircom AB                     Sales Support....... +46/(0) 8 590.332.80
I Infracity                   24-Hr Fax .......... +46/(0) 8 590.717.81
Kanalvagen 10C
19461 Upplands Vasby, Sweden

Xircom Deutschland Gmbh       Sales Support...... +49/(0) 89 46.23.02.0
Bretonischer Ring 16          24-Hr Fax ........ +49/(0) 89 46.23.02.10
85630 Grassbrunn/Technopark
Deutschland

Xircom UK Ltd                 Sales Support....... +44/(0) 1256.332.552
Worting House, Basingstoke    24-Hr Fax .......... +44/(0) 1256.332.553
Hampshire RG23 8PY
UK

XIRCOM ASIA PACIFIC           Asia Pacific
-----------------------------------------------------------------------
Xircom Asia Pacific (Pte)     Sales Support............ +65  323 1511
76 Shenton Way                Technical Support........ +65  323 3404
Unit #06-01                   24-Hr Fax ............... +65  224 3313
Singapore 079119              24-Hr Data Lines - BBS .. +65  323 0455
.                             24-Hr Internet....http://www.xircom.com
.                             24-Hr Email....http://asiats@xircom.com
.                             HOURS:  9:00 to 17:00, Mon-Fri

Regional Sales and Marketing Office
-----------------------------------
Xircom Australia               Sales Support......... +612 9911 7790
Level 20, 99 Walker Street     Customer Support...... +61(02)9911 7794
North Sydney, NSW              24-Hr Fax............. +612 9911 7796
Australia 2060                 24-Hr Data Lines - BBS.  +612 9911 7758
			       24-Hr Email....http://aunzts@xircom.com


WORLDWIDE ELECTRONIC SUPPORT
-----------------------------------------------------------------------
Go To Xircom..............Microsoft Network
cs@xircom.com.............Email to US Tech Support 
eurots@xircom.com.........Email to European Tech Support
asiats@xircom.com.........Email to Asia/Pacific Tech Support
aunzts@xircom.com.........Email to Australian/New Zealand Tech Support
sales@xircom.com..........Email to Xircom Sales
ideas@xircom.com..........Email to "Ideas" Suggestion Box
-----------------------------------------------------------------------

Thank you for making Xircom a part of your network.

Xircom acknowledges all tradenames and trademarks used in this document
as the property of their respective owners.

==============================end======================================
