connect -url tcp:127.0.0.1:3121
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4 210274505443A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4 210274505443A"} -index 0
dow C:/Users/BasileBerckmoes/Documents/GitHub/EmbeddedProcessing/Labo5/lab5/MicroBlaze_Lab3/MicroBlaze_Lab3.sdk/Microblaze_lab5/Debug/Microblaze_lab5.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4 210274505443A"} -index 0
con
