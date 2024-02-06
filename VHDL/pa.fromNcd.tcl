
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name ProgettoTD_Traccia9_Canzolino_Gianluca -dir "D:/ProgettoTD_Traccia9_Canzolino_Gianluca/planAhead_run_2" -part xc6slx9tqg144-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/ProgettoTD_Traccia9_Canzolino_Gianluca/Parcheggio.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ProgettoTD_Traccia9_Canzolino_Gianluca} }
set_property target_constrs_file "Parcheggio.ucf" [current_fileset -constrset]
add_files [list {Parcheggio.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/ProgettoTD_Traccia9_Canzolino_Gianluca/Parcheggio.ncd"
if {[catch {read_twx -name results_1 -file "D:/ProgettoTD_Traccia9_Canzolino_Gianluca/Parcheggio.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/ProgettoTD_Traccia9_Canzolino_Gianluca/Parcheggio.twx\": $eInfo"
}
