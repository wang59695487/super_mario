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
static const char *ng0 = "C:/Users/dydxh/Project/testipcore/rand_gen.v";
static int ng1[] = {1, 0};
static unsigned int ng2[] = {1103515245U, 0U};
static unsigned int ng3[] = {12345U, 0U};
static unsigned int ng4[] = {4294967295U, 0U};



static void Initial_17_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(17, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1448);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_19_1(char *t0)
{
    char t8[8];
    char t10[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    int t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;

LAB0:    t1 = (t0 + 2616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 2936);
    *((int *)t2) = 1;
    t3 = (t0 + 2648);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(19, ng0);

LAB5:    xsi_set_current_line(20, ng0);
    t4 = (t0 + 1448);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_multiply(t8, 32, t6, 32, t7, 32);
    t9 = ((char*)((ng3)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t8, 32, t9, 32);
    t11 = ((char*)((ng4)));
    t13 = *((unsigned int *)t10);
    t14 = *((unsigned int *)t11);
    t15 = (t13 & t14);
    *((unsigned int *)t12) = t15;
    t16 = (t10 + 4);
    t17 = (t11 + 4);
    t18 = (t12 + 4);
    t19 = *((unsigned int *)t16);
    t20 = *((unsigned int *)t17);
    t21 = (t19 | t20);
    *((unsigned int *)t18) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB6;

LAB7:
LAB8:    t44 = (t0 + 1448);
    xsi_vlogvar_wait_assign_value(t44, t12, 0, 0, 32, 0LL);
    goto LAB2;

LAB6:    t24 = *((unsigned int *)t12);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t12) = (t24 | t25);
    t26 = (t10 + 4);
    t27 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t26);
    t31 = (~(t30));
    t32 = *((unsigned int *)t11);
    t33 = (~(t32));
    t34 = *((unsigned int *)t27);
    t35 = (~(t34));
    t36 = (t29 & t31);
    t37 = (t33 & t35);
    t38 = (~(t36));
    t39 = (~(t37));
    t40 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t40 & t38);
    t41 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t41 & t39);
    t42 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t42 & t38);
    t43 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t43 & t39);
    goto LAB8;

}


extern void work_m_00000000004095642732_0577463362_init()
{
	static char *pe[] = {(void *)Initial_17_0,(void *)Always_19_1};
	xsi_register_didat("work_m_00000000004095642732_0577463362", "isim/barrel_simu_isim_beh.exe.sim/work/m_00000000004095642732_0577463362.didat");
	xsi_register_executes(pe);
}
