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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/ProgettoTD_Traccia9_Canzolino_Gianluca/Parcheggio.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3367511828_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    int t16;
    int t17;

LAB0:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t6 = *((unsigned char *)t3);
    t11 = (t6 == (unsigned char)1);
    if (t11 == 1)
        goto LAB14;

LAB15:    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)3);
    t5 = t13;

LAB16:    if (t5 == 1)
        goto LAB11;

LAB12:    t1 = (t0 + 2632U);
    t7 = *((char **)t1);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)4);
    t2 = t15;

LAB13:    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 3568U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;

LAB9:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 5280);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(95, ng0);
    t3 = (t0 + 5216);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3568U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    goto LAB6;

LAB8:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 3568U);
    t8 = *((char **)t1);
    t16 = *((int *)t8);
    t17 = (t16 + 1);
    t1 = (t0 + 3568U);
    t9 = *((char **)t1);
    t1 = (t9 + 0);
    *((int *)t1) = t17;
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3568U);
    t3 = *((char **)t1);
    t16 = *((int *)t3);
    t2 = (t16 == 15);
    if (t2 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB9;

LAB11:    t2 = (unsigned char)1;
    goto LAB13;

LAB14:    t5 = (unsigned char)1;
    goto LAB16;

LAB17:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 3568U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 5216);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

}

static void work_a_3367511828_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB7, &&LAB5, &&LAB6, &&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 5344);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(133, ng0);
    t1 = (t0 + 5408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(136, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5136);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(140, ng0);
    t3 = (t0 + 5472);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(140, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(143, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB13;

LAB14:    t6 = (unsigned char)0;

LAB15:    if (t6 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = *((unsigned char *)t2);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB24;

LAB25:    t10 = (unsigned char)0;

LAB26:    if (t10 == 1)
        goto LAB21;

LAB22:    t9 = (unsigned char)0;

LAB23:    if (t9 == 1)
        goto LAB18;

LAB19:    t6 = (unsigned char)0;

LAB20:    if (t6 != 0)
        goto LAB16;

LAB17:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB2;

LAB4:    xsi_set_current_line(159, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(159, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(162, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB30;

LAB31:    t6 = (unsigned char)0;

LAB32:    if (t6 != 0)
        goto LAB27;

LAB29:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB35;

LAB36:    t6 = (unsigned char)0;

LAB37:    if (t6 != 0)
        goto LAB33;

LAB34:    xsi_set_current_line(172, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB28:    goto LAB2;

LAB5:    xsi_set_current_line(178, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(178, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(181, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB41;

LAB42:    t6 = (unsigned char)0;

LAB43:    if (t6 != 0)
        goto LAB38;

LAB40:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 1)
        goto LAB46;

LAB47:    t6 = (unsigned char)0;

LAB48:    if (t6 != 0)
        goto LAB44;

LAB45:    xsi_set_current_line(191, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB39:    goto LAB2;

LAB6:    xsi_set_current_line(197, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(197, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(200, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 1)
        goto LAB52;

LAB53:    t6 = (unsigned char)0;

LAB54:    if (t6 != 0)
        goto LAB49;

LAB51:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 1)
        goto LAB57;

LAB58:    t6 = (unsigned char)0;

LAB59:    if (t6 != 0)
        goto LAB55;

LAB56:    xsi_set_current_line(212, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB50:    goto LAB2;

LAB7:    xsi_set_current_line(218, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(218, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(221, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB63;

LAB64:    t6 = (unsigned char)0;

LAB65:    if (t6 != 0)
        goto LAB60;

LAB62:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB68;

LAB69:    t6 = (unsigned char)0;

LAB70:    if (t6 != 0)
        goto LAB66;

LAB67:    xsi_set_current_line(231, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB61:    goto LAB2;

LAB8:    xsi_set_current_line(237, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(237, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(240, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB74;

LAB75:    t6 = (unsigned char)0;

LAB76:    if (t6 != 0)
        goto LAB71;

LAB73:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 1)
        goto LAB79;

LAB80:    t6 = (unsigned char)0;

LAB81:    if (t6 != 0)
        goto LAB77;

LAB78:    xsi_set_current_line(250, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB72:    goto LAB2;

LAB9:    xsi_set_current_line(256, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(256, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(259, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 1)
        goto LAB85;

LAB86:    t6 = (unsigned char)0;

LAB87:    if (t6 != 0)
        goto LAB82;

LAB84:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 1)
        goto LAB90;

LAB91:    t6 = (unsigned char)0;

LAB92:    if (t6 != 0)
        goto LAB88;

LAB89:    xsi_set_current_line(271, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB83:    goto LAB2;

LAB10:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)2);
    t6 = t12;
    goto LAB15;

LAB16:    xsi_set_current_line(149, ng0);
    t1 = (t0 + 5600);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB18:    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t17 = *((unsigned char *)t5);
    t18 = (t17 == (unsigned char)3);
    t6 = t18;
    goto LAB20;

LAB21:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t15 = *((unsigned char *)t4);
    t16 = (t15 == (unsigned char)3);
    t9 = t16;
    goto LAB23;

LAB24:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t13 = *((unsigned char *)t3);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB26;

LAB27:    xsi_set_current_line(164, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB28;

LAB30:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)2);
    t6 = t12;
    goto LAB32;

LAB33:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB28;

LAB35:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;
    goto LAB37;

LAB38:    xsi_set_current_line(183, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB39;

LAB41:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;
    goto LAB43;

LAB44:    xsi_set_current_line(187, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB39;

LAB46:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;
    goto LAB48;

LAB49:    xsi_set_current_line(202, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB50;

LAB52:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;
    goto LAB54;

LAB55:    xsi_set_current_line(206, ng0);
    t1 = (t0 + 5344);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(208, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB50;

LAB57:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)2);
    t6 = t12;
    goto LAB59;

LAB60:    xsi_set_current_line(223, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB61;

LAB63:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)2);
    t6 = t12;
    goto LAB65;

LAB66:    xsi_set_current_line(227, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB61;

LAB68:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;
    goto LAB70;

LAB71:    xsi_set_current_line(242, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB72;

LAB74:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;
    goto LAB76;

LAB77:    xsi_set_current_line(246, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB72;

LAB79:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;
    goto LAB81;

LAB82:    xsi_set_current_line(261, ng0);
    t1 = (t0 + 5600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB83;

LAB85:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;
    goto LAB87;

LAB88:    xsi_set_current_line(265, ng0);
    t1 = (t0 + 5408);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(267, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB83;

LAB90:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)2);
    t6 = t12;
    goto LAB92;

}


extern void work_a_3367511828_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3367511828_3212880686_p_0,(void *)work_a_3367511828_3212880686_p_1};
	xsi_register_didat("work_a_3367511828_3212880686", "isim/parcheggio_tb_isim_beh.exe.sim/work/a_3367511828_3212880686.didat");
	xsi_register_executes(pe);
}
