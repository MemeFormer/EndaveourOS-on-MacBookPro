# EndaveourOS-on-MacBookPro
Personal checklist for my dual boot
### Note:
https://forum.endeavouros.com/t/tip-enable-magic-sysrq-key-reisub/7576
## looking good so far

```
[liveuser@eos-2025.03.19 ~]$ lsmod | grep -e applesmc -e coretemp
coretemp               20480  0
applesmc               32768  0
[liveuser@eos-2025.03.19 ~]$ nano SystemCheck.sh
[liveuser@eos-2025.03.19 ~]$ chmod +x SystemCheck.sh
[liveuser@eos-2025.03.19 ~]$ ./SystemCheck.sh 
=== System Information ===
 Static hostname: EndeavourOS
       Icon name: computer-laptop
         Chassis: laptop 💻
      Machine ID: 81ec6458b415432e87d89ce4882bb511
         Boot ID: 7656e17e4bbe4dbba0c4ae838a279acb
Operating System: EndeavourOS
          Kernel: Linux 6.13.7-arch1-1
    Architecture: x86-64
 Hardware Vendor: Apple Inc.
  Hardware Model: MacBookPro11,1
Firmware Version: 478.0.0.0.0
   Firmware Date: Fri 2023-01-13
    Firmware Age: 2y 3month 4w

Linux EndeavourOS 6.13.7-arch1-1 #1 SMP PREEMPT_DYNAMIC Thu, 13 Mar 2025 18:12:00 +0000 x86_64 GNU/Linux
NAME="EndeavourOS"
PRETTY_NAME="EndeavourOS"
ID="endeavouros"
ID_LIKE="arch"
BUILD_ID=rolling
ANSI_COLOR="38;2;23;147;209"
HOME_URL="https://endeavouros.com"
DOCUMENTATION_URL="https://discovery.endeavouros.com"
SUPPORT_URL="https://forum.endeavouros.com"
BUG_REPORT_URL="https://forum.endeavouros.com/c/general-system/endeavouros-installation"
PRIVACY_POLICY_URL="https://endeavouros.com/privacy-policy-2"
LOGO="endeavouros"

=== CPU Details ===
Architecture:                         x86_64
CPU op-mode(s):                       32-bit, 64-bit
Address sizes:                        39 bits physical, 48 bits virtual
Byte Order:                           Little Endian
CPU(s):                               4
On-line CPU(s) list:                  0-3
Vendor ID:                            GenuineIntel
Model name:                           Intel(R) Core(TM) i7-4578U CPU @ 3.00GHz
CPU family:                           6
Model:                                69
Thread(s) per core:                   2
Core(s) per socket:                   2
Socket(s):                            1
Stepping:                             1
CPU(s) scaling MHz:                   26%
CPU max MHz:                          3500.0000
CPU min MHz:                          800.0000
BogoMIPS:                             6000.20
Flags:                                fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm cpuid_fault epb pti ssbd ibrs ibpb stibp tpr_shadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid xsaveopt dtherm ida arat pln pts vnmi md_clear flush_l1d
Virtualization:                       VT-x
L1d cache:                            64 KiB (2 instances)
L1i cache:                            64 KiB (2 instances)
L2 cache:                             512 KiB (2 instances)
L3 cache:                             4 MiB (1 instance)
NUMA node(s):                         1
NUMA node0 CPU(s):                    0-3
Vulnerability Gather data sampling:   Not affected
Vulnerability Itlb multihit:          KVM: Mitigation: Split huge pages
Vulnerability L1tf:                   Mitigation; PTE Inversion; VMX conditional cache flushes, SMT vulnerable
Vulnerability Mds:                    Mitigation; Clear CPU buffers; SMT vulnerable
Vulnerability Meltdown:               Mitigation; PTI
Vulnerability Mmio stale data:        Unknown: No mitigations
Vulnerability Reg file data sampling: Not affected
Vulnerability Retbleed:               Not affected
Vulnerability Spec rstack overflow:   Not affected
Vulnerability Spec store bypass:      Mitigation; Speculative Store Bypass disabled via prctl
Vulnerability Spectre v1:             Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Vulnerability Spectre v2:             Mitigation; Retpolines; IBPB conditional; IBRS_FW; STIBP conditional; RSB filling; PBRSB-eIBRS Not affected; BHI Not affected
Vulnerability Srbds:                  Mitigation; Microcode
Vulnerability Tsx async abort:        Not affected
model name      : Intel(R) Core(TM) i7-4578U CPU @ 3.00GHz

=== Memory Details ===
               total        used        free      shared  buff/cache   available
Mem:            15Gi       4.2Gi       8.1Gi       939Mi       4.5Gi        11Gi
Swap:             0B          0B          0B
MemTotal:       16282172 kB
MemFree:         8473732 kB
MemAvailable:   11878872 kB
Buffers:            3184 kB
Cached:          4558360 kB
SwapCached:            0 kB
Active:          5636480 kB
Inactive:        1107528 kB
Active(anon):    3144688 kB
Inactive(anon):        0 kB
Active(file):    2491792 kB
Inactive(file):  1107528 kB
Unevictable:      637480 kB
Mlocked:             168 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Zswap:                 0 kB
Zswapped:              0 kB
Dirty:                 0 kB
Writeback:             0 kB
AnonPages:       2807316 kB
Mapped:           577984 kB
Shmem:            962488 kB
KReclaimable:     124036 kB
Slab:             240596 kB
SReclaimable:     124036 kB
SUnreclaim:       116560 kB
KernelStack:       18128 kB
PageTables:        51024 kB
SecPageTables:      2056 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     8141084 kB
Committed_AS:   10492620 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       54480 kB
VmallocChunk:          0 kB
Percpu:             3024 kB
HardwareCorrupted:     0 kB
AnonHugePages:    550912 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
FileHugePages:      2048 kB
FilePmdMapped:         0 kB
CmaTotal:              0 kB
CmaFree:               0 kB
Unaccepted:            0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      152176 kB
DirectMap2M:     9191424 kB
DirectMap1G:     7340032 kB

=== Disk Details ===
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0   2.6G  1 loop /run/archiso/airootfs
sda      8:0    0 233.8G  0 disk 
├─sda1   8:1    0   200M  0 part 
└─sda2   8:2    0 233.6G  0 part 
sdb      8:16   0 232.9G  0 disk 
├─sdb1   8:17   0   100M  0 part 
├─sdb2   8:18   0    39G  0 part 
├─sdb3   8:19   0 146.5G  0 part 
└─sdb4   8:20   0  47.3G  0 part 
sdc      8:32   1  59.5G  0 disk 
├─sdc1   8:33   1   2.8G  0 part /run/archiso/bootmnt
└─sdc2   8:34   1   172M  0 part 
Filesystem      Size  Used Avail Use% Mounted on
dev             7.7G     0  7.7G   0% /dev
run             7.8G   15M  7.8G   1% /run
/dev/sdc1       2.8G  2.8G     0 100% /run/archiso/bootmnt
cowspace         10G  256M  9.8G   3% /run/archiso/cowspace
/dev/loop0      2.6G  2.6G     0 100% /run/archiso/airootfs
airootfs         10G  256M  9.8G   3% /
tmpfs           7.8G     0  7.8G   0% /dev/shm
tmpfs           7.8G  5.3M  7.8G   1% /tmp
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-networkd.service
tmpfs           1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
tmpfs           1.6G  116K  1.6G   1% /run/user/1000

=== Network Interfaces ===
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 6c:40:08:99:b9:a8 brd ff:ff:ff:ff:ff:ff
    inet 172.20.10.5/28 brd 172.20.10.15 scope global dynamic noprefixroute wlan0
       valid_lft 2524sec preferred_lft 2524sec
    inet6 2a02:3037:462:495a:d2bc:34b1:a713:3988/64 scope global noprefixroute 
       valid_lft forever preferred_lft forever
    inet6 2a02:3037:468:3b62:c785:83a4:a9eb:caf6/64 scope global noprefixroute 
       valid_lft forever preferred_lft forever
    inet6 fe80::5843:9a7c:3c5d:541d/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
./SystemCheck.sh: line 38: iwconfig: command not found

=== Wireless and Bluetooth ===
0: phy0: Wireless LAN
        Soft blocked: no
        Hard blocked: no
1: hci0: Bluetooth
        Soft blocked: no
        Hard blocked: no
Bus 001 Device 003: ID 0a5c:4500 Broadcom Corp. BCM2046B1 USB 2.0 Hub (part of BCM2046 Bluetooth)
Bus 001 Device 009: ID 05ac:8289 Apple, Inc. Bluetooth Host Controller

=== Graphics Details ===
00:02.0 VGA compatible controller: Intel Corporation Haswell-ULT Integrated Graphics Controller (rev 09)
OpenGL renderer string: Mesa Intel(R) Iris(R) Graphics 5100 (HSW GT3)

=== Temperatures and Sensors ===
applesmc-isa-0300
Adapter: ISA adapter
Right Side  : 1296 RPM  (min = 1299 RPM, max = 6199 RPM)
TA0P:          +36.8°C  
TB0T:         -127.0°C  
TB1T:          +29.5°C  
TB2T:          +26.5°C  
TBXT:         -127.0°C  
TC0C:          +48.0°C  
TC0E:          +48.2°C  
TC0F:          +48.8°C  
TC0P:          +45.2°C  
TC1C:          +46.0°C  
TCGC:          +47.0°C  
TCSA:          +46.0°C  
TCXC:          +49.0°C  
TH0A:          +39.5°C  
TH0B:          +39.5°C  
TH0C:          +38.5°C  
TH0F:          -45.5°C  
TH0R:          -45.5°C  
TH0V:          +37.0°C  
TH0a:          +39.5°C  
TH0b:          +39.5°C  
TH0c:          +38.5°C  
THSP:         -127.0°C  
TM0P:          +40.0°C  
TMLB:         -127.0°C  
TPCD:          +55.0°C  
TW0P:         -127.0°C  
Th1H:          +38.0°C  
Ts0P:          +25.5°C  
Ts0S:          +33.2°C  
Ts1S:          +32.0°C  

coretemp-isa-0000
Adapter: ISA adapter
Package id 0:  +49.0°C  (high = +100.0°C, crit = +100.0°C)
Core 0:        +49.0°C  (high = +100.0°C, crit = +100.0°C)
Core 1:        +46.0°C  (high = +100.0°C, crit = +100.0°C)

BAT0-acpi-0
Adapter: ACPI interface
in0:           7.76 V  
temp:         +29.7°C  
curr1:         0.00 A  (avg =  +0.00 A)


=== Performance Snapshot ===
top - 02:46:56 up  2:56,  1 user,  load average: 0.40, 0.69, 0.74
Tasks: 226 total, 1 running, 225 sleep, 0 d-sleep, 0 stopped, 0 zombie
%Cpu(s):  4.6 us,  9.2 sy,  0.0 ni, 86.2 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st 
MiB Mem :  15900.6 total,   8273.5 free,   4297.9 used,   4584.2 buff/cache     
MiB Swap:      0.0 total,      0.0 free,      0.0 used.  11602.7 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  13201 liveuser  20   0   10936   5596   3548 R  16.9   0.0   0:00.17 top
      1 root      20   0   22788  14856   9960 S   0.0   0.1   0:18.65 systemd
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.01 kthreadd
      3 root      20   0       0      0      0 S   0.0   0.0   0:00.00 pool_wo+
      4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
      5 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
      6 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
      7 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
      9 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
     12 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
     14 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tas+
     15 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tas+
     16 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tas+

=== Power Management ===
./SystemCheck.sh: line 65: tlp-stat: command not found
Full
0

=== Loaded Kernel Modules ===
applesmc               32768  0
bluetooth            1097728  38 btrtl,btmtk,btintel,btbcm,bnep,btusb,rfcomm
crc16                  12288  1 bluetooth
apple_mfi_fastcharge    16384  0
rfkill                 40960  8 bluetooth,cfg80211
hid_apple              28672  0
tar: Removing leading `/' from member names
/home/liveuser/system_report/
/home/liveuser/system_report/system_overview.txt
System report generated in ~/system_report
[liveuser@eos-2025.03.19 ~]$ cat ~/system_report ; cat /home/liveuser/system_report/system_overview.txt

cat: /home/liveuser/system_report: Is a directory
=== System Information ===
 Static hostname: EndeavourOS
       Icon name: computer-laptop
         Chassis: laptop 💻
      Machine ID: 81ec6458b415432e87d89ce4882bb511
         Boot ID: 7656e17e4bbe4dbba0c4ae838a279acb
Operating System: EndeavourOS
          Kernel: Linux 6.13.7-arch1-1
    Architecture: x86-64
 Hardware Vendor: Apple Inc.
  Hardware Model: MacBookPro11,1
Firmware Version: 478.0.0.0.0
   Firmware Date: Fri 2023-01-13
    Firmware Age: 2y 3month 4w

Linux EndeavourOS 6.13.7-arch1-1 #1 SMP PREEMPT_DYNAMIC Thu, 13 Mar 2025 18:12:00 +0000 x86_64 GNU/Linux
NAME="EndeavourOS"
PRETTY_NAME="EndeavourOS"
ID="endeavouros"
ID_LIKE="arch"
BUILD_ID=rolling
ANSI_COLOR="38;2;23;147;209"
HOME_URL="https://endeavouros.com"
DOCUMENTATION_URL="https://discovery.endeavouros.com"
SUPPORT_URL="https://forum.endeavouros.com"
BUG_REPORT_URL="https://forum.endeavouros.com/c/general-system/endeavouros-installation"
PRIVACY_POLICY_URL="https://endeavouros.com/privacy-policy-2"
LOGO="endeavouros"

=== CPU Details ===
Architecture:                         x86_64
CPU op-mode(s):                       32-bit, 64-bit
Address sizes:                        39 bits physical, 48 bits virtual
Byte Order:                           Little Endian
CPU(s):                               4
On-line CPU(s) list:                  0-3
Vendor ID:                            GenuineIntel
Model name:                           Intel(R) Core(TM) i7-4578U CPU @ 3.00GHz
CPU family:                           6
Model:                                69
Thread(s) per core:                   2
Core(s) per socket:                   2
Socket(s):                            1
Stepping:                             1
CPU(s) scaling MHz:                   26%
CPU max MHz:                          3500.0000
CPU min MHz:                          800.0000
BogoMIPS:                             6000.20
Flags:                                fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm cpuid_fault epb pti ssbd ibrs ibpb stibp tpr_shadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid xsaveopt dtherm ida arat pln pts vnmi md_clear flush_l1d
Virtualization:                       VT-x
L1d cache:                            64 KiB (2 instances)
L1i cache:                            64 KiB (2 instances)
L2 cache:                             512 KiB (2 instances)
L3 cache:                             4 MiB (1 instance)
NUMA node(s):                         1
NUMA node0 CPU(s):                    0-3
Vulnerability Gather data sampling:   Not affected
Vulnerability Itlb multihit:          KVM: Mitigation: Split huge pages
Vulnerability L1tf:                   Mitigation; PTE Inversion; VMX conditional cache flushes, SMT vulnerable
Vulnerability Mds:                    Mitigation; Clear CPU buffers; SMT vulnerable
Vulnerability Meltdown:               Mitigation; PTI
Vulnerability Mmio stale data:        Unknown: No mitigations
Vulnerability Reg file data sampling: Not affected
Vulnerability Retbleed:               Not affected
Vulnerability Spec rstack overflow:   Not affected
Vulnerability Spec store bypass:      Mitigation; Speculative Store Bypass disabled via prctl
Vulnerability Spectre v1:             Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Vulnerability Spectre v2:             Mitigation; Retpolines; IBPB conditional; IBRS_FW; STIBP conditional; RSB filling; PBRSB-eIBRS Not affected; BHI Not affected
Vulnerability Srbds:                  Mitigation; Microcode
Vulnerability Tsx async abort:        Not affected
model name      : Intel(R) Core(TM) i7-4578U CPU @ 3.00GHz

=== Memory Details ===
               total        used        free      shared  buff/cache   available
Mem:            15Gi       4.2Gi       8.1Gi       939Mi       4.5Gi        11Gi
Swap:             0B          0B          0B
MemTotal:       16282172 kB
MemFree:         8473732 kB
MemAvailable:   11878872 kB
Buffers:            3184 kB
Cached:          4558360 kB
SwapCached:            0 kB
Active:          5636480 kB
Inactive:        1107528 kB
Active(anon):    3144688 kB
Inactive(anon):        0 kB
Active(file):    2491792 kB
Inactive(file):  1107528 kB
Unevictable:      637480 kB
Mlocked:             168 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Zswap:                 0 kB
Zswapped:              0 kB
Dirty:                 0 kB
Writeback:             0 kB
AnonPages:       2807316 kB
Mapped:           577984 kB
Shmem:            962488 kB
KReclaimable:     124036 kB
Slab:             240596 kB
SReclaimable:     124036 kB
SUnreclaim:       116560 kB
KernelStack:       18128 kB
PageTables:        51024 kB
SecPageTables:      2056 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     8141084 kB
Committed_AS:   10492620 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       54480 kB
VmallocChunk:          0 kB
Percpu:             3024 kB
HardwareCorrupted:     0 kB
AnonHugePages:    550912 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
FileHugePages:      2048 kB
FilePmdMapped:         0 kB
CmaTotal:              0 kB
CmaFree:               0 kB
Unaccepted:            0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      152176 kB
DirectMap2M:     9191424 kB
DirectMap1G:     7340032 kB

=== Disk Details ===
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0   2.6G  1 loop /run/archiso/airootfs
sda      8:0    0 233.8G  0 disk 
├─sda1   8:1    0   200M  0 part 
└─sda2   8:2    0 233.6G  0 part 
sdb      8:16   0 232.9G  0 disk 
├─sdb1   8:17   0   100M  0 part 
├─sdb2   8:18   0    39G  0 part 
├─sdb3   8:19   0 146.5G  0 part 
└─sdb4   8:20   0  47.3G  0 part 
sdc      8:32   1  59.5G  0 disk 
├─sdc1   8:33   1   2.8G  0 part /run/archiso/bootmnt
└─sdc2   8:34   1   172M  0 part 
Filesystem      Size  Used Avail Use% Mounted on
dev             7.7G     0  7.7G   0% /dev
run             7.8G   15M  7.8G   1% /run
/dev/sdc1       2.8G  2.8G     0 100% /run/archiso/bootmnt
cowspace         10G  256M  9.8G   3% /run/archiso/cowspace
/dev/loop0      2.6G  2.6G     0 100% /run/archiso/airootfs
airootfs         10G  256M  9.8G   3% /
tmpfs           7.8G     0  7.8G   0% /dev/shm
tmpfs           7.8G  5.3M  7.8G   1% /tmp
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-networkd.service
tmpfs           1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
tmpfs           1.6G  116K  1.6G   1% /run/user/1000

=== Network Interfaces ===
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 6c:40:08:99:b9:a8 brd ff:ff:ff:ff:ff:ff
    inet 172.20.10.5/28 brd 172.20.10.15 scope global dynamic noprefixroute wlan0
       valid_lft 2524sec preferred_lft 2524sec
    inet6 2a02:3037:462:495a:d2bc:34b1:a713:3988/64 scope global noprefixroute 
       valid_lft forever preferred_lft forever
    inet6 2a02:3037:468:3b62:c785:83a4:a9eb:caf6/64 scope global noprefixroute 
       valid_lft forever preferred_lft forever
    inet6 fe80::5843:9a7c:3c5d:541d/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever

=== Wireless and Bluetooth ===
0: phy0: Wireless LAN
        Soft blocked: no
        Hard blocked: no
1: hci0: Bluetooth
        Soft blocked: no
        Hard blocked: no
Bus 001 Device 003: ID 0a5c:4500 Broadcom Corp. BCM2046B1 USB 2.0 Hub (part of BCM2046 Bluetooth)
Bus 001 Device 009: ID 05ac:8289 Apple, Inc. Bluetooth Host Controller

=== Graphics Details ===
00:02.0 VGA compatible controller: Intel Corporation Haswell-ULT Integrated Graphics Controller (rev 09)
OpenGL renderer string: Mesa Intel(R) Iris(R) Graphics 5100 (HSW GT3)

=== Temperatures and Sensors ===
applesmc-isa-0300
Adapter: ISA adapter
Right Side  : 1296 RPM  (min = 1299 RPM, max = 6199 RPM)
TA0P:          +36.8°C  
TB0T:         -127.0°C  
TB1T:          +29.5°C  
TB2T:          +26.5°C  
TBXT:         -127.0°C  
TC0C:          +48.0°C  
TC0E:          +48.2°C  
TC0F:          +48.8°C  
TC0P:          +45.2°C  
TC1C:          +46.0°C  
TCGC:          +47.0°C  
TCSA:          +46.0°C  
TCXC:          +49.0°C  
TH0A:          +39.5°C  
TH0B:          +39.5°C  
TH0C:          +38.5°C  
TH0F:          -45.5°C  
TH0R:          -45.5°C  
TH0V:          +37.0°C  
TH0a:          +39.5°C  
TH0b:          +39.5°C  
TH0c:          +38.5°C  
THSP:         -127.0°C  
TM0P:          +40.0°C  
TMLB:         -127.0°C  
TPCD:          +55.0°C  
TW0P:         -127.0°C  
Th1H:          +38.0°C  
Ts0P:          +25.5°C  
Ts0S:          +33.2°C  
Ts1S:          +32.0°C  

coretemp-isa-0000
Adapter: ISA adapter
Package id 0:  +49.0°C  (high = +100.0°C, crit = +100.0°C)
Core 0:        +49.0°C  (high = +100.0°C, crit = +100.0°C)
Core 1:        +46.0°C  (high = +100.0°C, crit = +100.0°C)

BAT0-acpi-0
Adapter: ACPI interface
in0:           7.76 V  
temp:         +29.7°C  
curr1:         0.00 A  (avg =  +0.00 A)


=== Performance Snapshot ===
top - 02:46:56 up  2:56,  1 user,  load average: 0.40, 0.69, 0.74
Tasks: 226 total, 1 running, 225 sleep, 0 d-sleep, 0 stopped, 0 zombie
%Cpu(s):  4.6 us,  9.2 sy,  0.0 ni, 86.2 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st 
MiB Mem :  15900.6 total,   8273.5 free,   4297.9 used,   4584.2 buff/cache     
MiB Swap:      0.0 total,      0.0 free,      0.0 used.  11602.7 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  13201 liveuser  20   0   10936   5596   3548 R  16.9   0.0   0:00.17 top
      1 root      20   0   22788  14856   9960 S   0.0   0.1   0:18.65 systemd
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.01 kthreadd
      3 root      20   0       0      0      0 S   0.0   0.0   0:00.00 pool_wo+
      4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
      5 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
      6 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
      7 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
      9 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
     12 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker+
     14 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tas+
     15 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tas+
     16 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tas+

=== Power Management ===
Full
0

=== Loaded Kernel Modules ===
applesmc               32768  0
bluetooth            1097728  38 btrtl,btmtk,btintel,btbcm,bnep,btusb,rfcomm
crc16                  12288  1 bluetooth
apple_mfi_fastcharge    16384  0
rfkill                 40960  8 bluetooth,cfg80211
hid_apple              28672  0
[liveuser@eos-2025.03.19 ~]$ 
```
