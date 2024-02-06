/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2717149903;
char *SIMPRIM_P_0947159679;
char *IEEE_P_2592010699;
char *STD_TEXTIO;
char *STD_STANDARD;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_4130118134_1564065396_0902087374_init();
    simprim_a_4130118134_1564065396_1995031724_init();
    simprim_a_4130118134_1564065396_0145025918_init();
    simprim_a_2260280880_2000130859_0902087374_init();
    simprim_a_0432251049_2000130859_0902087374_init();
    simprim_a_1596162770_2000130859_0902087374_init();
    simprim_a_1834392040_2000130859_1995031724_init();
    simprim_a_3306488653_2000130859_0814470219_init();
    simprim_a_2288943810_2000130859_0814470219_init();
    simprim_a_1645023851_2000130859_0233569787_init();
    simprim_a_2859844481_2000130859_0233569787_init();
    simprim_a_3380194845_2000130859_0145025918_init();
    simprim_a_2929939062_2000130859_0145025918_init();
    simprim_a_0043042803_2000130859_0145025918_init();
    simprim_a_0665871805_2000130859_0145025918_init();
    simprim_a_3145508987_2000130859_1999351451_init();
    simprim_a_0462331958_2000130859_1999351451_init();
    simprim_a_2231653904_2000130859_1999351451_init();
    simprim_a_2698269230_2000130859_1246463787_init();
    simprim_a_3062768676_2000130859_1246463787_init();
    simprim_a_3840970667_2000130859_1246463787_init();
    simprim_a_3936907874_4055128042_0814470219_init();
    simprim_a_3936907874_4055128042_1246463787_init();
    simprim_a_2880286190_2413300256_0814470219_init();
    simprim_a_2880286190_2413300256_0233569787_init();
    simprim_a_2880286190_2413300256_1246463787_init();
    simprim_a_1636632114_3300903326_3346948913_init();
    simprim_a_3156740924_4150518722_0286749213_init();
    simprim_a_3156740924_4150518722_0282400810_init();
    simprim_a_3156740924_4150518722_0311666291_init();
    simprim_a_3754874207_2431929443_0433961640_init();
    simprim_a_3754874207_2431929443_2391209213_init();
    simprim_a_3754874207_2431929443_2562598817_init();
    simprim_a_3754874207_2431929443_2942359443_init();
    simprim_a_3754874207_2431929443_2904975818_init();
    simprim_a_3754874207_2431929443_0441136416_init();
    simprim_a_3754874207_2431929443_0371120833_init();
    simprim_a_3754874207_2431929443_0324127812_init();
    simprim_a_3033836197_1970351474_1999351451_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_3367511828_0632001823_init();
    work_a_2391379796_2372691052_init();


    xsi_register_tops("work_a_2391379796_2372691052");

    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");

    return xsi_run_simulation(argc, argv);

}
