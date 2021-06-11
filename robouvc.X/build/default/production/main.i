# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2








# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\xc.h" 1 3
# 18 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\xc8debug.h" 1 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 1 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 2 3






# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\features.h" 1 3
# 10 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 2 3
# 21 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 18 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 122 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 168 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 21 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 2 3


int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));

__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);





size_t __ctype_get_mb_cur_max(void);
# 4 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\xc8debug.h" 2 3








#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 23 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\xc.h" 2 3
# 32 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\xc.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18.h" 1 3




# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\htc.h" 1 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\xc.h" 1 3
# 4 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\htc.h" 2 3
# 5 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18.h" 2 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18_chip_select.h" 1 3
# 559 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18_chip_select.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 1 3
# 44 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\__at.h" 1 3
# 44 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 2 3








extern volatile unsigned char DFLTCON __attribute__((address(0xF60)));

__asm("DFLTCON equ 0F60h");


typedef union {
    struct {
        unsigned FLTCK :3;
        unsigned FLT1EN :1;
        unsigned FLT2EN :1;
        unsigned FLT3EN :1;
        unsigned FLT4EN :1;
    };
    struct {
        unsigned FLTCK0 :1;
        unsigned FLTCK1 :1;
        unsigned FLTCK2 :1;
    };
} DFLTCONbits_t;
extern volatile DFLTCONbits_t DFLTCONbits __attribute__((address(0xF60)));
# 116 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char CAP3CON __attribute__((address(0xF61)));

__asm("CAP3CON equ 0F61h");


typedef union {
    struct {
        unsigned CAP3M :4;
        unsigned :1;
        unsigned CAP3TMR :1;
        unsigned CAP3REN :1;
    };
    struct {
        unsigned CAP3M0 :1;
        unsigned CAP3M1 :1;
        unsigned CAP3M2 :1;
        unsigned CAP3M3 :1;
    };
} CAP3CONbits_t;
extern volatile CAP3CONbits_t CAP3CONbits __attribute__((address(0xF61)));
# 175 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char CAP2CON __attribute__((address(0xF62)));

__asm("CAP2CON equ 0F62h");


typedef union {
    struct {
        unsigned CAP2M :4;
        unsigned :1;
        unsigned CAP2TMR :1;
        unsigned CAP2REN :1;
    };
    struct {
        unsigned CAP2M0 :1;
        unsigned CAP2M1 :1;
        unsigned CAP2M2 :1;
        unsigned CAP2M3 :1;
    };
} CAP2CONbits_t;
extern volatile CAP2CONbits_t CAP2CONbits __attribute__((address(0xF62)));
# 234 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char CAP1CON __attribute__((address(0xF63)));

__asm("CAP1CON equ 0F63h");


typedef union {
    struct {
        unsigned CAP1M :4;
        unsigned :1;
        unsigned CAP1TMR :1;
        unsigned CAP1REN :1;
    };
    struct {
        unsigned CAP1M0 :1;
        unsigned CAP1M1 :1;
        unsigned CAP1M2 :1;
        unsigned CAP1M3 :1;
    };
} CAP1CONbits_t;
extern volatile CAP1CONbits_t CAP1CONbits __attribute__((address(0xF63)));
# 293 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char CAP3BUFL __attribute__((address(0xF64)));

__asm("CAP3BUFL equ 0F64h");


extern volatile unsigned char MAXCNTL __attribute__((address(0xF64)));

__asm("MAXCNTL equ 0F64h");




extern volatile unsigned char CAP3BUFH __attribute__((address(0xF65)));

__asm("CAP3BUFH equ 0F65h");


extern volatile unsigned char MAXCNTH __attribute__((address(0xF65)));

__asm("MAXCNTH equ 0F65h");




extern volatile unsigned char CAP2BUFL __attribute__((address(0xF66)));

__asm("CAP2BUFL equ 0F66h");


extern volatile unsigned char POSCNTL __attribute__((address(0xF66)));

__asm("POSCNTL equ 0F66h");




extern volatile unsigned char CAP2BUFH __attribute__((address(0xF67)));

__asm("CAP2BUFH equ 0F67h");


extern volatile unsigned char POSCNTH __attribute__((address(0xF67)));

__asm("POSCNTH equ 0F67h");




extern volatile unsigned char CAP1BUFL __attribute__((address(0xF68)));

__asm("CAP1BUFL equ 0F68h");


extern volatile unsigned char VELRL __attribute__((address(0xF68)));

__asm("VELRL equ 0F68h");




extern volatile unsigned char CAP1BUFH __attribute__((address(0xF69)));

__asm("CAP1BUFH equ 0F69h");


extern volatile unsigned char VELRH __attribute__((address(0xF69)));

__asm("VELRH equ 0F69h");




extern volatile unsigned char OVDCONS __attribute__((address(0xF6A)));

__asm("OVDCONS equ 0F6Ah");


typedef union {
    struct {
        unsigned POUT :8;
    };
    struct {
        unsigned POUT0 :1;
        unsigned POUT1 :1;
        unsigned POUT2 :1;
        unsigned POUT3 :1;
        unsigned POUT4 :1;
        unsigned POUT5 :1;
        unsigned POUT6 :1;
        unsigned POUT7 :1;
    };
} OVDCONSbits_t;
extern volatile OVDCONSbits_t OVDCONSbits __attribute__((address(0xF6A)));
# 435 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char OVDCOND __attribute__((address(0xF6B)));

__asm("OVDCOND equ 0F6Bh");


typedef union {
    struct {
        unsigned POVD :8;
    };
    struct {
        unsigned POVD0 :1;
        unsigned POVD1 :1;
        unsigned POVD2 :1;
        unsigned POVD3 :1;
        unsigned POVD4 :1;
        unsigned POVD5 :1;
        unsigned POVD6 :1;
        unsigned POVD7 :1;
    };
} OVDCONDbits_t;
extern volatile OVDCONDbits_t OVDCONDbits __attribute__((address(0xF6B)));
# 505 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char FLTCONFIG __attribute__((address(0xF6C)));

__asm("FLTCONFIG equ 0F6Ch");


typedef union {
    struct {
        unsigned FLTAEN :1;
        unsigned FLTAMOD :1;
        unsigned FLTAS :1;
        unsigned FLTCON :1;
        unsigned FLTBEN :1;
        unsigned FLTBMOD :1;
        unsigned FLTBS :1;
        unsigned BRFEN :1;
    };
} FLTCONFIGbits_t;
extern volatile FLTCONFIGbits_t FLTCONFIGbits __attribute__((address(0xF6C)));
# 567 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char DTCON __attribute__((address(0xF6D)));

__asm("DTCON equ 0F6Dh");


typedef union {
    struct {
        unsigned DTA :6;
        unsigned DTAPS :2;
    };
    struct {
        unsigned DT0 :1;
        unsigned DT1 :1;
        unsigned DT2 :1;
        unsigned DT3 :1;
        unsigned DT4 :1;
        unsigned DT5 :1;
        unsigned DTPS0 :1;
        unsigned DTPS1 :1;
    };
    struct {
        unsigned DTA0 :1;
        unsigned DTA1 :1;
        unsigned DTA2 :1;
        unsigned DTA3 :1;
        unsigned DTA4 :1;
        unsigned DTA5 :1;
        unsigned DTAPS0 :1;
        unsigned DTAPS1 :1;
    };
} DTCONbits_t;
extern volatile DTCONbits_t DTCONbits __attribute__((address(0xF6D)));
# 693 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PWMCON1 __attribute__((address(0xF6E)));

__asm("PWMCON1 equ 0F6Eh");


typedef union {
    struct {
        unsigned OSYNC :1;
        unsigned UDIS :1;
        unsigned :1;
        unsigned SEVTDIR :1;
        unsigned SEVOPS :4;
    };
    struct {
        unsigned :4;
        unsigned SEVOPS0 :1;
        unsigned SEVOPS1 :1;
        unsigned SEVOPS2 :1;
        unsigned SEVOPS3 :1;
    };
} PWMCON1bits_t;
extern volatile PWMCON1bits_t PWMCON1bits __attribute__((address(0xF6E)));
# 759 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PWMCON0 __attribute__((address(0xF6F)));

__asm("PWMCON0 equ 0F6Fh");


typedef union {
    struct {
        unsigned PMOD :4;
        unsigned PWMEN :3;
    };
    struct {
        unsigned PMOD0 :1;
        unsigned PMOD1 :1;
        unsigned PMOD2 :1;
        unsigned PMOD3 :1;
        unsigned PWMEN0 :1;
        unsigned PWMEN1 :1;
        unsigned PWMEN2 :1;
    };
} PWMCON0bits_t;
extern volatile PWMCON0bits_t PWMCON0bits __attribute__((address(0xF6F)));
# 829 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char SEVTCMPH __attribute__((address(0xF70)));

__asm("SEVTCMPH equ 0F70h");




extern volatile unsigned char SEVTCMPL __attribute__((address(0xF71)));

__asm("SEVTCMPL equ 0F71h");




extern volatile unsigned char PDC3H __attribute__((address(0xF72)));

__asm("PDC3H equ 0F72h");




extern volatile unsigned char PDC3L __attribute__((address(0xF73)));

__asm("PDC3L equ 0F73h");




extern volatile unsigned char PDC2H __attribute__((address(0xF74)));

__asm("PDC2H equ 0F74h");




extern volatile unsigned char PDC2L __attribute__((address(0xF75)));

__asm("PDC2L equ 0F75h");




extern volatile unsigned char PDC1H __attribute__((address(0xF76)));

__asm("PDC1H equ 0F76h");




extern volatile unsigned char PDC1L __attribute__((address(0xF77)));

__asm("PDC1L equ 0F77h");




extern volatile unsigned char PDC0H __attribute__((address(0xF78)));

__asm("PDC0H equ 0F78h");




extern volatile unsigned char PDC0L __attribute__((address(0xF79)));

__asm("PDC0L equ 0F79h");




extern volatile unsigned char PTPERH __attribute__((address(0xF7A)));

__asm("PTPERH equ 0F7Ah");




extern volatile unsigned char PTPERL __attribute__((address(0xF7B)));

__asm("PTPERL equ 0F7Bh");




extern volatile unsigned char PTMRH __attribute__((address(0xF7C)));

__asm("PTMRH equ 0F7Ch");




extern volatile unsigned char PTMRL __attribute__((address(0xF7D)));

__asm("PTMRL equ 0F7Dh");




extern volatile unsigned char PTCON1 __attribute__((address(0xF7E)));

__asm("PTCON1 equ 0F7Eh");


typedef union {
    struct {
        unsigned :6;
        unsigned PTDIR :1;
        unsigned PTEN :1;
    };
} PTCON1bits_t;
extern volatile PTCON1bits_t PTCON1bits __attribute__((address(0xF7E)));
# 954 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PTCON0 __attribute__((address(0xF7F)));

__asm("PTCON0 equ 0F7Fh");


typedef union {
    struct {
        unsigned PTMOD :2;
        unsigned PTCKPS :2;
        unsigned PTOPS :4;
    };
    struct {
        unsigned PTMOD0 :1;
        unsigned PTMOD1 :1;
        unsigned PTCKPS0 :1;
        unsigned PTCKPS1 :1;
        unsigned PTOPS0 :1;
        unsigned PTOPS1 :1;
        unsigned PTOPS2 :1;
        unsigned PTOPS3 :1;
    };
} PTCON0bits_t;
extern volatile PTCON0bits_t PTCON0bits __attribute__((address(0xF7F)));
# 1036 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PORTA __attribute__((address(0xF80)));

__asm("PORTA equ 0F80h");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
    struct {
        unsigned AN0 :1;
        unsigned AN1 :1;
        unsigned AN2 :1;
        unsigned AN3 :1;
        unsigned AN4 :1;
        unsigned AN5 :1;
        unsigned OSC2 :1;
        unsigned OSC1 :1;
    };
    struct {
        unsigned :2;
        unsigned VREFM :1;
        unsigned VREFP :1;
        unsigned :1;
        unsigned LVDIN :1;
        unsigned CLKO :1;
        unsigned CLKI :1;
    };
    struct {
        unsigned ULPWUIN :1;
        unsigned :6;
        unsigned RJPU :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0xF80)));
# 1197 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PORTB __attribute__((address(0xF81)));

__asm("PORTB equ 0F81h");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
    struct {
        unsigned :3;
        unsigned CCP2_PA2 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0xF81)));
# 1268 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PORTC __attribute__((address(0xF82)));

__asm("PORTC equ 0F82h");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
    struct {
        unsigned T1OSO :1;
        unsigned T1OSI :1;
        unsigned CCP1 :1;
        unsigned INT0 :1;
        unsigned INT1 :1;
        unsigned INT2 :1;
        unsigned TX :1;
        unsigned RX :1;
    };
    struct {
        unsigned T13CKI :1;
        unsigned CCP2 :1;
        unsigned :1;
        unsigned T0CKI :1;
        unsigned SDA :1;
        unsigned SCK :1;
        unsigned CK :1;
        unsigned DT :1;
    };
    struct {
        unsigned :1;
        unsigned NOT_FLTA :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_FLTB :1;
    };
    struct {
        unsigned :6;
        unsigned NOT_SS :1;
    };
    struct {
        unsigned :1;
        unsigned nFLTA :1;
        unsigned nFLTB :1;
        unsigned T5CKI :1;
        unsigned SDI :1;
        unsigned SCL :1;
        unsigned nSS :1;
        unsigned SDO :1;
    };
    struct {
        unsigned :1;
        unsigned FLTA :1;
        unsigned FLTB :1;
        unsigned :3;
        unsigned SS :1;
    };
    struct {
        unsigned :1;
        unsigned PA2 :1;
        unsigned PA1 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0xF82)));
# 1534 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PORTD __attribute__((address(0xF83)));

__asm("PORTD equ 0F83h");


typedef union {
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
    struct {
        unsigned :7;
        unsigned SS2 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0xF83)));
# 1605 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PORTE __attribute__((address(0xF84)));

__asm("PORTE equ 0F84h");


typedef union {
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
        unsigned RE3 :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_MCLR :1;
    };
    struct {
        unsigned :3;
        unsigned nMCLR :1;
    };
    struct {
        unsigned :3;
        unsigned MCLR :1;
    };
    struct {
        unsigned PD2 :1;
        unsigned PC2 :1;
        unsigned CCP10 :1;
        unsigned CCP9E :1;
    };
    struct {
        unsigned RDE :1;
        unsigned WRE :1;
        unsigned CS :1;
        unsigned PC3E :1;
    };
    struct {
        unsigned :2;
        unsigned PB2 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0xF84)));
# 1731 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned short TMR5 __attribute__((address(0xF87)));

__asm("TMR5 equ 0F87h");




extern volatile unsigned char TMR5L __attribute__((address(0xF87)));

__asm("TMR5L equ 0F87h");




extern volatile unsigned char TMR5H __attribute__((address(0xF88)));

__asm("TMR5H equ 0F88h");




extern volatile unsigned char LATA __attribute__((address(0xF89)));

__asm("LATA equ 0F89h");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned LATA3 :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
        unsigned LATA6 :1;
        unsigned LATA7 :1;
    };
    struct {
        unsigned LA0 :1;
        unsigned LA1 :1;
        unsigned LA2 :1;
        unsigned LA3 :1;
        unsigned LA4 :1;
        unsigned LA5 :1;
        unsigned LA6 :1;
        unsigned LA7 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0xF89)));
# 1864 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char LATB __attribute__((address(0xF8A)));

__asm("LATB equ 0F8Ah");


typedef union {
    struct {
        unsigned LATB0 :1;
        unsigned LATB1 :1;
        unsigned LATB2 :1;
        unsigned LATB3 :1;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
    struct {
        unsigned LB0 :1;
        unsigned LB1 :1;
        unsigned LB2 :1;
        unsigned LB3 :1;
        unsigned LB4 :1;
        unsigned LB5 :1;
        unsigned LB6 :1;
        unsigned LB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0xF8A)));
# 1976 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char LATC __attribute__((address(0xF8B)));

__asm("LATC equ 0F8Bh");


typedef union {
    struct {
        unsigned LATC0 :1;
        unsigned LATC1 :1;
        unsigned LATC2 :1;
        unsigned LATC3 :1;
        unsigned LATC4 :1;
        unsigned LATC5 :1;
        unsigned LATC6 :1;
        unsigned LATC7 :1;
    };
    struct {
        unsigned LC0 :1;
        unsigned LC1 :1;
        unsigned LC2 :1;
        unsigned LC3 :1;
        unsigned LC4 :1;
        unsigned LC5 :1;
        unsigned LC6 :1;
        unsigned LC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0xF8B)));
# 2088 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char LATD __attribute__((address(0xF8C)));

__asm("LATD equ 0F8Ch");


typedef union {
    struct {
        unsigned LATD0 :1;
        unsigned LATD1 :1;
        unsigned LATD2 :1;
        unsigned LATD3 :1;
        unsigned LATD4 :1;
        unsigned LATD5 :1;
        unsigned LATD6 :1;
        unsigned LATD7 :1;
    };
    struct {
        unsigned LD0 :1;
        unsigned LD1 :1;
        unsigned LD2 :1;
        unsigned LD3 :1;
        unsigned LD4 :1;
        unsigned LD5 :1;
        unsigned LD6 :1;
        unsigned LD7 :1;
    };
} LATDbits_t;
extern volatile LATDbits_t LATDbits __attribute__((address(0xF8C)));
# 2200 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char LATE __attribute__((address(0xF8D)));

__asm("LATE equ 0F8Dh");


typedef union {
    struct {
        unsigned LATE0 :1;
        unsigned LATE1 :1;
        unsigned LATE2 :1;
    };
    struct {
        unsigned LE0 :1;
        unsigned LE1 :1;
        unsigned LE2 :1;
    };
} LATEbits_t;
extern volatile LATEbits_t LATEbits __attribute__((address(0xF8D)));
# 2252 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned short PR5 __attribute__((address(0xF90)));

__asm("PR5 equ 0F90h");




extern volatile unsigned char PR5L __attribute__((address(0xF90)));

__asm("PR5L equ 0F90h");




extern volatile unsigned char PR5H __attribute__((address(0xF91)));

__asm("PR5H equ 0F91h");




extern volatile unsigned char TRISA __attribute__((address(0xF92)));

__asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __attribute__((address(0xF92)));

__asm("DDRA equ 0F92h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0xF92)));
# 2388 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __attribute__((address(0xF92)));
# 2495 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char TRISB __attribute__((address(0xF93)));

__asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __attribute__((address(0xF93)));

__asm("DDRB equ 0F93h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0xF93)));
# 2610 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __attribute__((address(0xF93)));
# 2717 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char TRISC __attribute__((address(0xF94)));

__asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __attribute__((address(0xF94)));

__asm("DDRC equ 0F94h");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0xF94)));
# 2832 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __attribute__((address(0xF94)));
# 2939 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char TRISD __attribute__((address(0xF95)));

__asm("TRISD equ 0F95h");


extern volatile unsigned char DDRD __attribute__((address(0xF95)));

__asm("DDRD equ 0F95h");


typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0xF95)));
# 3054 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
} DDRDbits_t;
extern volatile DDRDbits_t DDRDbits __attribute__((address(0xF95)));
# 3161 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char TRISE __attribute__((address(0xF96)));

__asm("TRISE equ 0F96h");


extern volatile unsigned char DDRE __attribute__((address(0xF96)));

__asm("DDRE equ 0F96h");


typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
    };
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0xF96)));
# 3216 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
    };
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
    };
} DDREbits_t;
extern volatile DDREbits_t DDREbits __attribute__((address(0xF96)));
# 3263 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char ADCHS __attribute__((address(0xF99)));

__asm("ADCHS equ 0F99h");


typedef union {
    struct {
        unsigned SASEL :2;
        unsigned SCSEL :2;
        unsigned SBSEL :2;
        unsigned SDSEL :2;
    };
    struct {
        unsigned GASEL0 :1;
        unsigned GASEL1 :1;
        unsigned GCSEL0 :1;
        unsigned GCSEL1 :1;
        unsigned GBSEL0 :1;
        unsigned GBSEL1 :1;
        unsigned GDSEL0 :1;
        unsigned GDSEL1 :1;
    };
    struct {
        unsigned SASEL0 :1;
        unsigned SASEL1 :1;
        unsigned SCSEL0 :1;
        unsigned SCSEL1 :1;
        unsigned SBSEL0 :1;
        unsigned SBSEL1 :1;
        unsigned SDSEL0 :1;
        unsigned SDSEL1 :1;
    };
} ADCHSbits_t;
extern volatile ADCHSbits_t ADCHSbits __attribute__((address(0xF99)));
# 3401 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char ADCON3 __attribute__((address(0xF9A)));

__asm("ADCON3 equ 0F9Ah");


typedef union {
    struct {
        unsigned SSRC :5;
        unsigned :1;
        unsigned ADRS :2;
    };
    struct {
        unsigned SSRC0 :1;
        unsigned SSRC1 :1;
        unsigned SSRC2 :1;
        unsigned SSRC3 :1;
        unsigned SSRC4 :1;
        unsigned :1;
        unsigned ADRS0 :1;
        unsigned ADRS1 :1;
    };
} ADCON3bits_t;
extern volatile ADCON3bits_t ADCON3bits __attribute__((address(0xF9A)));
# 3473 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0xF9B)));

__asm("OSCTUNE equ 0F9Bh");


typedef union {
    struct {
        unsigned TUN :6;
    };
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
        unsigned TUN5 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0xF9B)));
# 3531 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0xF9D)));

__asm("PIE1 equ 0F9Dh");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSPIE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
    };
    struct {
        unsigned :4;
        unsigned TBIE :1;
    };
    struct {
        unsigned :4;
        unsigned TX1IE :1;
        unsigned RC1IE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0xF9D)));
# 3611 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0xF9E)));

__asm("PIR1 equ 0F9Eh");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSPIF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
    };
    struct {
        unsigned :4;
        unsigned TBIF :1;
    };
    struct {
        unsigned :4;
        unsigned TX1IF :1;
        unsigned RC1IF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0xF9E)));
# 3691 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char IPR1 __attribute__((address(0xF9F)));

__asm("IPR1 equ 0F9Fh");


typedef union {
    struct {
        unsigned TMR1IP :1;
        unsigned TMR2IP :1;
        unsigned CCP1IP :1;
        unsigned SSPIP :1;
        unsigned TXIP :1;
        unsigned RCIP :1;
        unsigned ADIP :1;
    };
    struct {
        unsigned :4;
        unsigned TBIP :1;
    };
    struct {
        unsigned :4;
        unsigned TX1IP :1;
        unsigned RC1IP :1;
    };
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __attribute__((address(0xF9F)));
# 3771 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0xFA0)));

__asm("PIE2 equ 0FA0h");


typedef union {
    struct {
        unsigned CCP2IE :1;
        unsigned :1;
        unsigned LVDIE :1;
        unsigned :1;
        unsigned EEIE :1;
        unsigned :2;
        unsigned OSFIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0xFA0)));
# 3812 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0xFA1)));

__asm("PIR2 equ 0FA1h");


typedef union {
    struct {
        unsigned CCP2IF :1;
        unsigned :1;
        unsigned LVDIF :1;
        unsigned :1;
        unsigned EEIF :1;
        unsigned :2;
        unsigned OSFIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0xFA1)));
# 3853 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char IPR2 __attribute__((address(0xFA2)));

__asm("IPR2 equ 0FA2h");


typedef union {
    struct {
        unsigned CCP2IP :1;
        unsigned :1;
        unsigned LVDIP :1;
        unsigned :1;
        unsigned EEIP :1;
        unsigned :2;
        unsigned OSFIP :1;
    };
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __attribute__((address(0xFA2)));
# 3894 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0xFA3)));

__asm("PIE3 equ 0FA3h");


typedef union {
    struct {
        unsigned TMR5IE :1;
        unsigned IC1IE :1;
        unsigned IC2QEIE :1;
        unsigned IC3DRIE :1;
        unsigned PTIE :1;
    };
    struct {
        unsigned RXB0IE :1;
        unsigned RXB1IE :1;
        unsigned TXB0IE :1;
        unsigned TXB1IE :1;
        unsigned TXB2IE :1;
    };
    struct {
        unsigned :1;
        unsigned RXBNIE :1;
        unsigned :2;
        unsigned TXBNIE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0xFA3)));
# 3986 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0xFA4)));

__asm("PIR3 equ 0FA4h");


typedef union {
    struct {
        unsigned TMR5IF :1;
        unsigned IC1IF :1;
        unsigned IC2QEIF :1;
        unsigned IC3DRIF :1;
        unsigned PTIF :1;
    };
    struct {
        unsigned :1;
        unsigned RXBNIF :1;
        unsigned :2;
        unsigned TXBNIF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0xFA4)));
# 4046 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char IPR3 __attribute__((address(0xFA5)));

__asm("IPR3 equ 0FA5h");


typedef union {
    struct {
        unsigned TMR5IP :1;
        unsigned IC1IP :1;
        unsigned IC2QEIP :1;
        unsigned IC3DRIP :1;
        unsigned PTIP :1;
    };
    struct {
        unsigned :1;
        unsigned RXBNIP :1;
        unsigned :2;
        unsigned TXBNIP :1;
    };
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __attribute__((address(0xFA5)));
# 4106 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0xFA6)));

__asm("EECON1 equ 0FA6h");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned :1;
        unsigned CFGS :1;
        unsigned EEPGD :1;
    };
    struct {
        unsigned :6;
        unsigned EEFS :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0xFA6)));
# 4172 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0xFA7)));

__asm("EECON2 equ 0FA7h");




extern volatile unsigned char EEDATA __attribute__((address(0xFA8)));

__asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __attribute__((address(0xFA9)));

__asm("EEADR equ 0FA9h");




extern volatile unsigned char BAUDCON __attribute__((address(0xFAA)));

__asm("BAUDCON equ 0FAAh");


extern volatile unsigned char BAUDCTL __attribute__((address(0xFAA)));

__asm("BAUDCTL equ 0FAAh");


typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned TXCKP :1;
        unsigned RXDTP :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
    struct {
        unsigned :4;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCMT :1;
    };
    struct {
        unsigned :5;
        unsigned RXCKP :1;
    };
    struct {
        unsigned :1;
        unsigned W4E :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0xFAA)));
# 4287 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned TXCKP :1;
        unsigned RXDTP :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
    struct {
        unsigned :4;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCMT :1;
    };
    struct {
        unsigned :5;
        unsigned RXCKP :1;
    };
    struct {
        unsigned :1;
        unsigned W4E :1;
    };
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0xFAA)));
# 4373 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char RCSTA __attribute__((address(0xFAB)));

__asm("RCSTA equ 0FABh");


extern volatile unsigned char RCSTA1 __attribute__((address(0xFAB)));

__asm("RCSTA1 equ 0FABh");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned :3;
        unsigned ADEN :1;
    };
    struct {
        unsigned :5;
        unsigned SRENA :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
    struct {
        unsigned :6;
        unsigned RC9 :1;
    };
    struct {
        unsigned RCD8 :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0xFAB)));
# 4482 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned :3;
        unsigned ADEN :1;
    };
    struct {
        unsigned :5;
        unsigned SRENA :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
    struct {
        unsigned :6;
        unsigned RC9 :1;
    };
    struct {
        unsigned RCD8 :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0xFAB)));
# 4583 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0xFAC)));

__asm("TXSTA equ 0FACh");


extern volatile unsigned char TXSTA1 __attribute__((address(0xFAC)));

__asm("TXSTA1 equ 0FACh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TX9D1 :1;
        unsigned TRMT1 :1;
        unsigned BRGH1 :1;
        unsigned SENDB1 :1;
        unsigned SYNC1 :1;
        unsigned TXEN1 :1;
        unsigned TX91 :1;
        unsigned CSRC1 :1;
    };
    struct {
        unsigned :6;
        unsigned TX8_9 :1;
    };
    struct {
        unsigned TXD8 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0xFAC)));
# 4715 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TX9D1 :1;
        unsigned TRMT1 :1;
        unsigned BRGH1 :1;
        unsigned SENDB1 :1;
        unsigned SYNC1 :1;
        unsigned TXEN1 :1;
        unsigned TX91 :1;
        unsigned CSRC1 :1;
    };
    struct {
        unsigned :6;
        unsigned TX8_9 :1;
    };
    struct {
        unsigned TXD8 :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0xFAC)));
# 4839 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char TXREG __attribute__((address(0xFAD)));

__asm("TXREG equ 0FADh");


extern volatile unsigned char TXREG1 __attribute__((address(0xFAD)));

__asm("TXREG1 equ 0FADh");




extern volatile unsigned char RCREG __attribute__((address(0xFAE)));

__asm("RCREG equ 0FAEh");


extern volatile unsigned char RCREG1 __attribute__((address(0xFAE)));

__asm("RCREG1 equ 0FAEh");




extern volatile unsigned char SPBRG __attribute__((address(0xFAF)));

__asm("SPBRG equ 0FAFh");


extern volatile unsigned char SPBRG1 __attribute__((address(0xFAF)));

__asm("SPBRG1 equ 0FAFh");




extern volatile unsigned char SPBRGH __attribute__((address(0xFB0)));

__asm("SPBRGH equ 0FB0h");




extern volatile unsigned char QEICON __attribute__((address(0xFB6)));

__asm("QEICON equ 0FB6h");


typedef union {
    struct {
        unsigned :5;
        unsigned UP_NOT_DOWN :1;
    };
    struct {
        unsigned :7;
        unsigned NOT_VELM :1;
    };
    struct {
        unsigned PDEC :2;
        unsigned QEIM :3;
        unsigned UP_nDOWN :1;
        unsigned QERR :1;
        unsigned nVELM :1;
    };
    struct {
        unsigned PDEC0 :1;
        unsigned PDEC1 :1;
        unsigned QEIM0 :1;
        unsigned QEIM1 :1;
        unsigned QEIM2 :1;
        unsigned UP_DOWN :1;
        unsigned :1;
        unsigned VELM :1;
    };
    struct {
        unsigned :5;
        unsigned UP :1;
    };
    struct {
        unsigned :5;
        unsigned DOWN :1;
    };
    struct {
        unsigned :5;
        unsigned NOT_DOWN :1;
    };
    struct {
        unsigned :5;
        unsigned nDOWN :1;
    };
    struct {
        unsigned :5;
        unsigned UPDOWN :1;
    };
} QEICONbits_t;
extern volatile QEICONbits_t QEICONbits __attribute__((address(0xFB6)));
# 5034 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char T5CON __attribute__((address(0xFB7)));

__asm("T5CON equ 0FB7h");


typedef union {
    struct {
        unsigned :2;
        unsigned NOT_T5SYNC :1;
    };
    struct {
        unsigned :6;
        unsigned NOT_RESEN :1;
    };
    struct {
        unsigned TMR5ON :1;
        unsigned TMR5CS :1;
        unsigned nT5SYNC :1;
        unsigned T5PS :2;
        unsigned T5MOD :1;
        unsigned nRESEN :1;
        unsigned T5SEN :1;
    };
    struct {
        unsigned :2;
        unsigned T5SYNC :1;
        unsigned T5PS0 :1;
        unsigned T5PS1 :1;
        unsigned :1;
        unsigned RESEN :1;
    };
    struct {
        unsigned :1;
        unsigned RD165 :1;
        unsigned :1;
        unsigned SOSCEN5 :1;
    };
} T5CONbits_t;
extern volatile T5CONbits_t T5CONbits __attribute__((address(0xFB7)));
# 5152 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char ANSEL0 __attribute__((address(0xFB8)));

__asm("ANSEL0 equ 0FB8h");


typedef union {
    struct {
        unsigned ANS0 :1;
        unsigned ANS1 :1;
        unsigned ANS2 :1;
        unsigned ANS3 :1;
        unsigned ANS4 :1;
        unsigned ANS5 :1;
        unsigned ANS6 :1;
        unsigned ANS7 :1;
    };
} ANSEL0bits_t;
extern volatile ANSEL0bits_t ANSEL0bits __attribute__((address(0xFB8)));
# 5214 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char ANSEL1 __attribute__((address(0xFB9)));

__asm("ANSEL1 equ 0FB9h");


typedef union {
    struct {
        unsigned ANS8 :1;
    };
} ANSEL1bits_t;
extern volatile ANSEL1bits_t ANSEL1bits __attribute__((address(0xFB9)));
# 5234 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0xFBA)));

__asm("CCP2CON equ 0FBAh");


typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned DC2B :2;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
        unsigned CCP2Y :1;
        unsigned CCP2X :1;
    };
    struct {
        unsigned :4;
        unsigned DC2B0 :1;
        unsigned DC2B1 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0xFBA)));
# 5313 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0xFBB)));

__asm("CCPR2 equ 0FBBh");




extern volatile unsigned char CCPR2L __attribute__((address(0xFBB)));

__asm("CCPR2L equ 0FBBh");




extern volatile unsigned char CCPR2H __attribute__((address(0xFBC)));

__asm("CCPR2H equ 0FBCh");




extern volatile unsigned char CCP1CON __attribute__((address(0xFBD)));

__asm("CCP1CON equ 0FBDh");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned CCP1Y :1;
        unsigned CCP1X :1;
    };
    struct {
        unsigned :4;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0xFBD)));
# 5413 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0xFBE)));

__asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __attribute__((address(0xFBE)));

__asm("CCPR1L equ 0FBEh");




extern volatile unsigned char CCPR1H __attribute__((address(0xFBF)));

__asm("CCPR1H equ 0FBFh");




extern volatile unsigned char ADCON2 __attribute__((address(0xFC0)));

__asm("ADCON2 equ 0FC0h");


typedef union {
    struct {
        unsigned ADCS :3;
        unsigned ACQT :4;
        unsigned ADFM :1;
    };
    struct {
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
        unsigned ACQT0 :1;
        unsigned ACQT1 :1;
        unsigned ACQT2 :1;
        unsigned ACQT3 :1;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0xFC0)));
# 5510 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0xFC1)));

__asm("ADCON1 equ 0FC1h");


typedef union {
    struct {
        unsigned ADPNT :2;
        unsigned BFOVFL :1;
        unsigned BFEMT :1;
        unsigned FIFOEN :1;
        unsigned :1;
        unsigned VCFG :2;
    };
    struct {
        unsigned ADPNT0 :1;
        unsigned ADPNT1 :1;
        unsigned :4;
        unsigned VCFG0 :1;
        unsigned VCFG1 :1;
    };
    struct {
        unsigned :2;
        unsigned FFOVFL :1;
    };
    struct {
        unsigned :3;
        unsigned CHSN3 :1;
        unsigned VCFG01 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0xFC1)));
# 5606 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0xFC2)));

__asm("ADCON0 equ 0FC2h");


typedef union {
    struct {
        unsigned :1;
        unsigned GO_NOT_DONE :1;
    };
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned ACMOD :2;
        unsigned ACSCH :1;
        unsigned ACONV :1;
    };
    struct {
        unsigned :1;
        unsigned GO_DONE :1;
        unsigned ACMOD0 :1;
        unsigned ACMOD1 :1;
    };
    struct {
        unsigned :1;
        unsigned DONE :1;
    };
    struct {
        unsigned :1;
        unsigned GO :1;
    };
    struct {
        unsigned :1;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :1;
        unsigned nDONE :1;
    };
    struct {
        unsigned :1;
        unsigned GODONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0xFC2)));
# 5725 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned short ADRES __attribute__((address(0xFC3)));

__asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __attribute__((address(0xFC3)));

__asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __attribute__((address(0xFC4)));

__asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSPCON __attribute__((address(0xFC6)));

__asm("SSPCON equ 0FC6h");


extern volatile unsigned char SSPCON1 __attribute__((address(0xFC6)));

__asm("SSPCON1 equ 0FC6h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0xFC6)));
# 5819 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0xFC6)));
# 5884 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char SSPSTAT __attribute__((address(0xFC7)));

__asm("SSPSTAT equ 0FC7h");


typedef union {
    struct {
        unsigned :2;
        unsigned R_NOT_W :1;
    };
    struct {
        unsigned :5;
        unsigned D_NOT_A :1;
    };
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_WRITE :1;
    };
    struct {
        unsigned :5;
        unsigned NOT_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned R :1;
        unsigned :2;
        unsigned D :1;
    };
    struct {
        unsigned :2;
        unsigned RW :1;
        unsigned START :1;
        unsigned STOP :1;
        unsigned DA :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_W :1;
        unsigned :2;
        unsigned NOT_A :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0xFC7)));
# 6105 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char SSPADD __attribute__((address(0xFC8)));

__asm("SSPADD equ 0FC8h");




extern volatile unsigned char SSPBUF __attribute__((address(0xFC9)));

__asm("SSPBUF equ 0FC9h");




extern volatile unsigned char T2CON __attribute__((address(0xFCA)));

__asm("T2CON equ 0FCAh");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned TOUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
    };
    struct {
        unsigned :3;
        unsigned TOUTPS0 :1;
        unsigned TOUTPS1 :1;
        unsigned TOUTPS2 :1;
        unsigned TOUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0xFCA)));
# 6217 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char PR2 __attribute__((address(0xFCB)));

__asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __attribute__((address(0xFCB)));

__asm("MEMCON equ 0FCBh");


typedef union {
    struct {
        unsigned :7;
        unsigned EBDIS :1;
    };
    struct {
        unsigned :4;
        unsigned WAIT0 :1;
    };
    struct {
        unsigned :5;
        unsigned WAIT1 :1;
    };
    struct {
        unsigned WM0 :1;
    };
    struct {
        unsigned :1;
        unsigned WM1 :1;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0xFCB)));
# 6276 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
typedef union {
    struct {
        unsigned :7;
        unsigned EBDIS :1;
    };
    struct {
        unsigned :4;
        unsigned WAIT0 :1;
    };
    struct {
        unsigned :5;
        unsigned WAIT1 :1;
    };
    struct {
        unsigned WM0 :1;
    };
    struct {
        unsigned :1;
        unsigned WM1 :1;
    };
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __attribute__((address(0xFCB)));
# 6327 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0xFCC)));

__asm("TMR2 equ 0FCCh");




extern volatile unsigned char T1CON __attribute__((address(0xFCD)));

__asm("T1CON equ 0FCDh");


typedef union {
    struct {
        unsigned :2;
        unsigned NOT_T1SYNC :1;
    };
    struct {
        unsigned TMR1ON :1;
        unsigned TMR1CS :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
        unsigned T1RUN :1;
        unsigned RD16 :1;
    };
    struct {
        unsigned :2;
        unsigned T1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned T1INSYNC :1;
    };
    struct {
        unsigned :3;
        unsigned SOSCEN :1;
        unsigned :3;
        unsigned T1RD16 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0xFCD)));
# 6446 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0xFCE)));

__asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __attribute__((address(0xFCE)));

__asm("TMR1L equ 0FCEh");




extern volatile unsigned char TMR1H __attribute__((address(0xFCF)));

__asm("TMR1H equ 0FCFh");




extern volatile unsigned char RCON __attribute__((address(0xFD0)));

__asm("RCON equ 0FD0h");


typedef union {
    struct {
        unsigned NOT_BOR :1;
    };
    struct {
        unsigned :1;
        unsigned NOT_POR :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_PD :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_TO :1;
    };
    struct {
        unsigned :4;
        unsigned NOT_RI :1;
    };
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned nRI :1;
        unsigned :2;
        unsigned IPEN :1;
    };
    struct {
        unsigned :7;
        unsigned NOT_IPEN :1;
    };
    struct {
        unsigned BOR :1;
        unsigned POR :1;
        unsigned PD :1;
        unsigned TO :1;
        unsigned RI :1;
        unsigned :2;
        unsigned nIPEN :1;
    };
} RCONbits_t;
extern volatile RCONbits_t RCONbits __attribute__((address(0xFD0)));
# 6610 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0xFD1)));

__asm("WDTCON equ 0FD1h");


typedef union {
    struct {
        unsigned SWDTEN :1;
        unsigned :6;
        unsigned WDTW :1;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0xFD1)));
# 6637 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char LVDCON __attribute__((address(0xFD2)));

__asm("LVDCON equ 0FD2h");


typedef union {
    struct {
        unsigned LVDL :4;
        unsigned LVDEN :1;
        unsigned IRVST :1;
    };
    struct {
        unsigned LVDL0 :1;
        unsigned LVDL1 :1;
        unsigned LVDL2 :1;
        unsigned LVDL3 :1;
        unsigned :1;
        unsigned IVRST :1;
    };
} LVDCONbits_t;
extern volatile LVDCONbits_t LVDCONbits __attribute__((address(0xFD2)));
# 6702 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0xFD3)));

__asm("OSCCON equ 0FD3h");


typedef union {
    struct {
        unsigned SCS :2;
        unsigned IOFS :1;
        unsigned OSTS :1;
        unsigned IRCF :3;
        unsigned IDLEN :1;
    };
    struct {
        unsigned SCS0 :1;
        unsigned SCS1 :1;
        unsigned :2;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
        unsigned IRCF2 :1;
    };
    struct {
        unsigned :2;
        unsigned FLTS :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0xFD3)));
# 6788 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char T0CON __attribute__((address(0xFD5)));

__asm("T0CON equ 0FD5h");


typedef union {
    struct {
        unsigned T0PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned T016BIT :1;
        unsigned TMR0ON :1;
    };
    struct {
        unsigned T0PS0 :1;
        unsigned T0PS1 :1;
        unsigned T0PS2 :1;
        unsigned T0PS3 :1;
    };
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __attribute__((address(0xFD5)));
# 6864 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned short TMR0 __attribute__((address(0xFD6)));

__asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __attribute__((address(0xFD6)));

__asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __attribute__((address(0xFD7)));

__asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __attribute__((address(0xFD8)));

__asm("STATUS equ 0FD8h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned OV :1;
        unsigned N :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
        unsigned OVERFLOW :1;
        unsigned NEGATIVE :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0xFD8)));
# 6956 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned short FSR2 __attribute__((address(0xFD9)));

__asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __attribute__((address(0xFD9)));

__asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __attribute__((address(0xFDA)));

__asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __attribute__((address(0xFDB)));

__asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __attribute__((address(0xFDC)));

__asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __attribute__((address(0xFDD)));

__asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __attribute__((address(0xFDE)));

__asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __attribute__((address(0xFDF)));

__asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __attribute__((address(0xFE0)));

__asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __attribute__((address(0xFE1)));

__asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __attribute__((address(0xFE1)));

__asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __attribute__((address(0xFE2)));

__asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __attribute__((address(0xFE3)));

__asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __attribute__((address(0xFE4)));

__asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __attribute__((address(0xFE5)));

__asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __attribute__((address(0xFE6)));

__asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __attribute__((address(0xFE7)));

__asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __attribute__((address(0xFE8)));

__asm("WREG equ 0FE8h");




extern volatile unsigned short FSR0 __attribute__((address(0xFE9)));

__asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __attribute__((address(0xFE9)));

__asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __attribute__((address(0xFEA)));

__asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __attribute__((address(0xFEB)));

__asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __attribute__((address(0xFEC)));

__asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __attribute__((address(0xFED)));

__asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __attribute__((address(0xFEE)));

__asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __attribute__((address(0xFEF)));

__asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __attribute__((address(0xFF0)));

__asm("INTCON3 equ 0FF0h");


typedef union {
    struct {
        unsigned INT1IF :1;
        unsigned INT2IF :1;
        unsigned :1;
        unsigned INT1IE :1;
        unsigned INT2IE :1;
        unsigned :1;
        unsigned INT1IP :1;
        unsigned INT2IP :1;
    };
    struct {
        unsigned INT1F :1;
        unsigned INT2F :1;
        unsigned :1;
        unsigned INT1E :1;
        unsigned INT2E :1;
        unsigned :1;
        unsigned INT1P :1;
        unsigned INT2P :1;
    };
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __attribute__((address(0xFF0)));
# 7230 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char INTCON2 __attribute__((address(0xFF1)));

__asm("INTCON2 equ 0FF1h");


typedef union {
    struct {
        unsigned :7;
        unsigned NOT_RBPU :1;
    };
    struct {
        unsigned RBIP :1;
        unsigned :1;
        unsigned TMR0IP :1;
        unsigned :1;
        unsigned INTEDG2 :1;
        unsigned INTEDG1 :1;
        unsigned INTEDG0 :1;
        unsigned nRBPU :1;
    };
    struct {
        unsigned :2;
        unsigned T0IP :1;
        unsigned :4;
        unsigned RBPU :1;
    };
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __attribute__((address(0xFF1)));
# 7307 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned char INTCON __attribute__((address(0xFF2)));

__asm("INTCON equ 0FF2h");


typedef union {
    struct {
        unsigned RBIF :1;
        unsigned INT0IF :1;
        unsigned TMR0IF :1;
        unsigned RBIE :1;
        unsigned INT0IE :1;
        unsigned TMR0IE :1;
        unsigned PEIE_GIEL :1;
        unsigned GIE_GIEH :1;
    };
    struct {
        unsigned :1;
        unsigned INT0F :1;
        unsigned T0IF :1;
        unsigned :1;
        unsigned INT0E :1;
        unsigned T0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :6;
        unsigned GIEL :1;
        unsigned GIEH :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0xFF2)));
# 7424 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile unsigned short PROD __attribute__((address(0xFF3)));

__asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __attribute__((address(0xFF3)));

__asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __attribute__((address(0xFF4)));

__asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __attribute__((address(0xFF5)));

__asm("TABLAT equ 0FF5h");





extern volatile __uint24 TBLPTR __attribute__((address(0xFF6)));


__asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __attribute__((address(0xFF6)));

__asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __attribute__((address(0xFF7)));

__asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __attribute__((address(0xFF8)));

__asm("TBLPTRU equ 0FF8h");





extern volatile __uint24 PCLAT __attribute__((address(0xFF9)));


__asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __attribute__((address(0xFF9)));


__asm("PC equ 0FF9h");




extern volatile unsigned char PCL __attribute__((address(0xFF9)));

__asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __attribute__((address(0xFFA)));

__asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __attribute__((address(0xFFB)));

__asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __attribute__((address(0xFFC)));

__asm("STKPTR equ 0FFCh");


typedef union {
    struct {
        unsigned STKPTR :5;
        unsigned :1;
        unsigned STKUNF :1;
        unsigned STKFUL :1;
    };
    struct {
        unsigned STKPTR0 :1;
        unsigned STKPTR1 :1;
        unsigned STKPTR2 :1;
        unsigned STKPTR3 :1;
        unsigned STKPTR4 :1;
        unsigned :2;
        unsigned STKOVF :1;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFFC)));
# 7592 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile __uint24 TOS __attribute__((address(0xFFD)));


__asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __attribute__((address(0xFFD)));

__asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __attribute__((address(0xFFE)));

__asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __attribute__((address(0xFFF)));

__asm("TOSU equ 0FFFh");
# 7627 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18f4431.h" 3
extern volatile __bit ABDEN __attribute__((address(0x7D50)));


extern volatile __bit ABDOVF __attribute__((address(0x7D57)));


extern volatile __bit ACMOD0 __attribute__((address(0x7E12)));


extern volatile __bit ACMOD1 __attribute__((address(0x7E13)));


extern volatile __bit ACONV __attribute__((address(0x7E15)));


extern volatile __bit ACQT0 __attribute__((address(0x7E03)));


extern volatile __bit ACQT1 __attribute__((address(0x7E04)));


extern volatile __bit ACQT2 __attribute__((address(0x7E05)));


extern volatile __bit ACQT3 __attribute__((address(0x7E06)));


extern volatile __bit ACSCH __attribute__((address(0x7E14)));


extern volatile __bit ADCS0 __attribute__((address(0x7E00)));


extern volatile __bit ADCS1 __attribute__((address(0x7E01)));


extern volatile __bit ADCS2 __attribute__((address(0x7E02)));


extern volatile __bit ADDEN __attribute__((address(0x7D5B)));


extern volatile __bit ADEN __attribute__((address(0x7D5B)));


extern volatile __bit ADFM __attribute__((address(0x7E07)));


extern volatile __bit ADIE __attribute__((address(0x7CEE)));


extern volatile __bit ADIF __attribute__((address(0x7CF6)));


extern volatile __bit ADIP __attribute__((address(0x7CFE)));


extern volatile __bit ADON __attribute__((address(0x7E10)));


extern volatile __bit ADPNT0 __attribute__((address(0x7E08)));


extern volatile __bit ADPNT1 __attribute__((address(0x7E09)));


extern volatile __bit ADRS0 __attribute__((address(0x7CD6)));


extern volatile __bit ADRS1 __attribute__((address(0x7CD7)));


extern volatile __bit AN0 __attribute__((address(0x7C00)));


extern volatile __bit AN1 __attribute__((address(0x7C01)));


extern volatile __bit AN2 __attribute__((address(0x7C02)));


extern volatile __bit AN3 __attribute__((address(0x7C03)));


extern volatile __bit AN4 __attribute__((address(0x7C04)));


extern volatile __bit AN5 __attribute__((address(0x7C05)));


extern volatile __bit ANS0 __attribute__((address(0x7DC0)));


extern volatile __bit ANS1 __attribute__((address(0x7DC1)));


extern volatile __bit ANS2 __attribute__((address(0x7DC2)));


extern volatile __bit ANS3 __attribute__((address(0x7DC3)));


extern volatile __bit ANS4 __attribute__((address(0x7DC4)));


extern volatile __bit ANS5 __attribute__((address(0x7DC5)));


extern volatile __bit ANS6 __attribute__((address(0x7DC6)));


extern volatile __bit ANS7 __attribute__((address(0x7DC7)));


extern volatile __bit ANS8 __attribute__((address(0x7DC8)));


extern volatile __bit BF __attribute__((address(0x7E38)));


extern volatile __bit BFEMT __attribute__((address(0x7E0B)));


extern volatile __bit BFOVFL __attribute__((address(0x7E0A)));


extern volatile __bit BOR __attribute__((address(0x7E80)));


extern volatile __bit BRFEN __attribute__((address(0x7B67)));


extern volatile __bit BRG16 __attribute__((address(0x7D53)));


extern volatile __bit BRGH __attribute__((address(0x7D62)));


extern volatile __bit BRGH1 __attribute__((address(0x7D62)));


extern volatile __bit CAP1M0 __attribute__((address(0x7B18)));


extern volatile __bit CAP1M1 __attribute__((address(0x7B19)));


extern volatile __bit CAP1M2 __attribute__((address(0x7B1A)));


extern volatile __bit CAP1M3 __attribute__((address(0x7B1B)));


extern volatile __bit CAP1REN __attribute__((address(0x7B1E)));


extern volatile __bit CAP1TMR __attribute__((address(0x7B1D)));


extern volatile __bit CAP2M0 __attribute__((address(0x7B10)));


extern volatile __bit CAP2M1 __attribute__((address(0x7B11)));


extern volatile __bit CAP2M2 __attribute__((address(0x7B12)));


extern volatile __bit CAP2M3 __attribute__((address(0x7B13)));


extern volatile __bit CAP2REN __attribute__((address(0x7B16)));


extern volatile __bit CAP2TMR __attribute__((address(0x7B15)));


extern volatile __bit CAP3M0 __attribute__((address(0x7B08)));


extern volatile __bit CAP3M1 __attribute__((address(0x7B09)));


extern volatile __bit CAP3M2 __attribute__((address(0x7B0A)));


extern volatile __bit CAP3M3 __attribute__((address(0x7B0B)));


extern volatile __bit CAP3REN __attribute__((address(0x7B0E)));


extern volatile __bit CAP3TMR __attribute__((address(0x7B0D)));


extern volatile __bit CARRY __attribute__((address(0x7EC0)));


extern volatile __bit CCP1 __attribute__((address(0x7C12)));


extern volatile __bit CCP10 __attribute__((address(0x7C22)));


extern volatile __bit CCP1IE __attribute__((address(0x7CEA)));


extern volatile __bit CCP1IF __attribute__((address(0x7CF2)));


extern volatile __bit CCP1IP __attribute__((address(0x7CFA)));


extern volatile __bit CCP1M0 __attribute__((address(0x7DE8)));


extern volatile __bit CCP1M1 __attribute__((address(0x7DE9)));


extern volatile __bit CCP1M2 __attribute__((address(0x7DEA)));


extern volatile __bit CCP1M3 __attribute__((address(0x7DEB)));


extern volatile __bit CCP1X __attribute__((address(0x7DED)));


extern volatile __bit CCP1Y __attribute__((address(0x7DEC)));


extern volatile __bit CCP2 __attribute__((address(0x7C11)));


extern volatile __bit CCP2IE __attribute__((address(0x7D00)));


extern volatile __bit CCP2IF __attribute__((address(0x7D08)));


extern volatile __bit CCP2IP __attribute__((address(0x7D10)));


extern volatile __bit CCP2M0 __attribute__((address(0x7DD0)));


extern volatile __bit CCP2M1 __attribute__((address(0x7DD1)));


extern volatile __bit CCP2M2 __attribute__((address(0x7DD2)));


extern volatile __bit CCP2M3 __attribute__((address(0x7DD3)));


extern volatile __bit CCP2X __attribute__((address(0x7DD5)));


extern volatile __bit CCP2Y __attribute__((address(0x7DD4)));


extern volatile __bit CCP2_PA2 __attribute__((address(0x7C0B)));


extern volatile __bit CCP9E __attribute__((address(0x7C23)));


extern volatile __bit CFGS __attribute__((address(0x7D36)));


extern volatile __bit CHSN3 __attribute__((address(0x7E0B)));


extern volatile __bit CK __attribute__((address(0x7C16)));


extern volatile __bit CKE __attribute__((address(0x7E3E)));


extern volatile __bit CKP __attribute__((address(0x7E34)));


extern volatile __bit CLKI __attribute__((address(0x7C07)));


extern volatile __bit CLKO __attribute__((address(0x7C06)));


extern volatile __bit CREN __attribute__((address(0x7D5C)));


extern volatile __bit CS __attribute__((address(0x7C22)));


extern volatile __bit CSRC __attribute__((address(0x7D67)));


extern volatile __bit CSRC1 __attribute__((address(0x7D67)));


extern volatile __bit DA __attribute__((address(0x7E3D)));


extern volatile __bit DATA_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit DC __attribute__((address(0x7EC1)));


extern volatile __bit DC1B0 __attribute__((address(0x7DEC)));


extern volatile __bit DC1B1 __attribute__((address(0x7DED)));


extern volatile __bit DC2B0 __attribute__((address(0x7DD4)));


extern volatile __bit DC2B1 __attribute__((address(0x7DD5)));


extern volatile __bit DONE __attribute__((address(0x7E11)));


extern volatile __bit DOWN __attribute__((address(0x7DB5)));


extern volatile __bit DT __attribute__((address(0x7C17)));


extern volatile __bit DT0 __attribute__((address(0x7B68)));


extern volatile __bit DT1 __attribute__((address(0x7B69)));


extern volatile __bit DT2 __attribute__((address(0x7B6A)));


extern volatile __bit DT3 __attribute__((address(0x7B6B)));


extern volatile __bit DT4 __attribute__((address(0x7B6C)));


extern volatile __bit DT5 __attribute__((address(0x7B6D)));


extern volatile __bit DTA0 __attribute__((address(0x7B68)));


extern volatile __bit DTA1 __attribute__((address(0x7B69)));


extern volatile __bit DTA2 __attribute__((address(0x7B6A)));


extern volatile __bit DTA3 __attribute__((address(0x7B6B)));


extern volatile __bit DTA4 __attribute__((address(0x7B6C)));


extern volatile __bit DTA5 __attribute__((address(0x7B6D)));


extern volatile __bit DTAPS0 __attribute__((address(0x7B6E)));


extern volatile __bit DTAPS1 __attribute__((address(0x7B6F)));


extern volatile __bit DTPS0 __attribute__((address(0x7B6E)));


extern volatile __bit DTPS1 __attribute__((address(0x7B6F)));


extern volatile __bit D_A __attribute__((address(0x7E3D)));


extern volatile __bit D_NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit D_nA __attribute__((address(0x7E3D)));


extern volatile __bit EBDIS __attribute__((address(0x7E5F)));


extern volatile __bit EEFS __attribute__((address(0x7D36)));


extern volatile __bit EEIE __attribute__((address(0x7D04)));


extern volatile __bit EEIF __attribute__((address(0x7D0C)));


extern volatile __bit EEIP __attribute__((address(0x7D14)));


extern volatile __bit EEPGD __attribute__((address(0x7D37)));


extern volatile __bit FERR __attribute__((address(0x7D5A)));


extern volatile __bit FFOVFL __attribute__((address(0x7E0A)));


extern volatile __bit FIFOEN __attribute__((address(0x7E0C)));


extern volatile __bit FLT1EN __attribute__((address(0x7B03)));


extern volatile __bit FLT2EN __attribute__((address(0x7B04)));


extern volatile __bit FLT3EN __attribute__((address(0x7B05)));


extern volatile __bit FLT4EN __attribute__((address(0x7B06)));


extern volatile __bit FLTA __attribute__((address(0x7C11)));


extern volatile __bit FLTAEN __attribute__((address(0x7B60)));


extern volatile __bit FLTAMOD __attribute__((address(0x7B61)));


extern volatile __bit FLTAS __attribute__((address(0x7B62)));


extern volatile __bit FLTB __attribute__((address(0x7C12)));


extern volatile __bit FLTBEN __attribute__((address(0x7B64)));


extern volatile __bit FLTBMOD __attribute__((address(0x7B65)));


extern volatile __bit FLTBS __attribute__((address(0x7B66)));


extern volatile __bit FLTCK0 __attribute__((address(0x7B00)));


extern volatile __bit FLTCK1 __attribute__((address(0x7B01)));


extern volatile __bit FLTCK2 __attribute__((address(0x7B02)));


extern volatile __bit FLTCON __attribute__((address(0x7B63)));


extern volatile __bit FLTS __attribute__((address(0x7E9A)));


extern volatile __bit FREE __attribute__((address(0x7D34)));


extern volatile __bit GASEL0 __attribute__((address(0x7CC8)));


extern volatile __bit GASEL1 __attribute__((address(0x7CC9)));


extern volatile __bit GBSEL0 __attribute__((address(0x7CCC)));


extern volatile __bit GBSEL1 __attribute__((address(0x7CCD)));


extern volatile __bit GCSEL0 __attribute__((address(0x7CCA)));


extern volatile __bit GCSEL1 __attribute__((address(0x7CCB)));


extern volatile __bit GDSEL0 __attribute__((address(0x7CCE)));


extern volatile __bit GDSEL1 __attribute__((address(0x7CCF)));


extern volatile __bit GIE __attribute__((address(0x7F97)));


extern volatile __bit GIEH __attribute__((address(0x7F97)));


extern volatile __bit GIEL __attribute__((address(0x7F96)));


extern volatile __bit GIE_GIEH __attribute__((address(0x7F97)));


extern volatile __bit GO __attribute__((address(0x7E11)));


extern volatile __bit GODONE __attribute__((address(0x7E11)));


extern volatile __bit GO_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_nDONE __attribute__((address(0x7E11)));


extern volatile __bit IC1IE __attribute__((address(0x7D19)));


extern volatile __bit IC1IF __attribute__((address(0x7D21)));


extern volatile __bit IC1IP __attribute__((address(0x7D29)));


extern volatile __bit IC2QEIE __attribute__((address(0x7D1A)));


extern volatile __bit IC2QEIF __attribute__((address(0x7D22)));


extern volatile __bit IC2QEIP __attribute__((address(0x7D2A)));


extern volatile __bit IC3DRIE __attribute__((address(0x7D1B)));


extern volatile __bit IC3DRIF __attribute__((address(0x7D23)));


extern volatile __bit IC3DRIP __attribute__((address(0x7D2B)));


extern volatile __bit IDLEN __attribute__((address(0x7E9F)));


extern volatile __bit INT0 __attribute__((address(0x7C13)));


extern volatile __bit INT0E __attribute__((address(0x7F94)));


extern volatile __bit INT0F __attribute__((address(0x7F91)));


extern volatile __bit INT0IE __attribute__((address(0x7F94)));


extern volatile __bit INT0IF __attribute__((address(0x7F91)));


extern volatile __bit INT1 __attribute__((address(0x7C14)));


extern volatile __bit INT1E __attribute__((address(0x7F83)));


extern volatile __bit INT1F __attribute__((address(0x7F80)));


extern volatile __bit INT1IE __attribute__((address(0x7F83)));


extern volatile __bit INT1IF __attribute__((address(0x7F80)));


extern volatile __bit INT1IP __attribute__((address(0x7F86)));


extern volatile __bit INT1P __attribute__((address(0x7F86)));


extern volatile __bit INT2 __attribute__((address(0x7C15)));


extern volatile __bit INT2E __attribute__((address(0x7F84)));


extern volatile __bit INT2F __attribute__((address(0x7F81)));


extern volatile __bit INT2IE __attribute__((address(0x7F84)));


extern volatile __bit INT2IF __attribute__((address(0x7F81)));


extern volatile __bit INT2IP __attribute__((address(0x7F87)));


extern volatile __bit INT2P __attribute__((address(0x7F87)));


extern volatile __bit INTEDG0 __attribute__((address(0x7F8E)));


extern volatile __bit INTEDG1 __attribute__((address(0x7F8D)));


extern volatile __bit INTEDG2 __attribute__((address(0x7F8C)));


extern volatile __bit IOFS __attribute__((address(0x7E9A)));


extern volatile __bit IPEN __attribute__((address(0x7E87)));


extern volatile __bit IRCF0 __attribute__((address(0x7E9C)));


extern volatile __bit IRCF1 __attribute__((address(0x7E9D)));


extern volatile __bit IRCF2 __attribute__((address(0x7E9E)));


extern volatile __bit IRVST __attribute__((address(0x7E95)));


extern volatile __bit IVRST __attribute__((address(0x7E95)));


extern volatile __bit LA0 __attribute__((address(0x7C48)));


extern volatile __bit LA1 __attribute__((address(0x7C49)));


extern volatile __bit LA2 __attribute__((address(0x7C4A)));


extern volatile __bit LA3 __attribute__((address(0x7C4B)));


extern volatile __bit LA4 __attribute__((address(0x7C4C)));


extern volatile __bit LA5 __attribute__((address(0x7C4D)));


extern volatile __bit LA6 __attribute__((address(0x7C4E)));


extern volatile __bit LA7 __attribute__((address(0x7C4F)));


extern volatile __bit LATA0 __attribute__((address(0x7C48)));


extern volatile __bit LATA1 __attribute__((address(0x7C49)));


extern volatile __bit LATA2 __attribute__((address(0x7C4A)));


extern volatile __bit LATA3 __attribute__((address(0x7C4B)));


extern volatile __bit LATA4 __attribute__((address(0x7C4C)));


extern volatile __bit LATA5 __attribute__((address(0x7C4D)));


extern volatile __bit LATA6 __attribute__((address(0x7C4E)));


extern volatile __bit LATA7 __attribute__((address(0x7C4F)));


extern volatile __bit LATB0 __attribute__((address(0x7C50)));


extern volatile __bit LATB1 __attribute__((address(0x7C51)));


extern volatile __bit LATB2 __attribute__((address(0x7C52)));


extern volatile __bit LATB3 __attribute__((address(0x7C53)));


extern volatile __bit LATB4 __attribute__((address(0x7C54)));


extern volatile __bit LATB5 __attribute__((address(0x7C55)));


extern volatile __bit LATB6 __attribute__((address(0x7C56)));


extern volatile __bit LATB7 __attribute__((address(0x7C57)));


extern volatile __bit LATC0 __attribute__((address(0x7C58)));


extern volatile __bit LATC1 __attribute__((address(0x7C59)));


extern volatile __bit LATC2 __attribute__((address(0x7C5A)));


extern volatile __bit LATC3 __attribute__((address(0x7C5B)));


extern volatile __bit LATC4 __attribute__((address(0x7C5C)));


extern volatile __bit LATC5 __attribute__((address(0x7C5D)));


extern volatile __bit LATC6 __attribute__((address(0x7C5E)));


extern volatile __bit LATC7 __attribute__((address(0x7C5F)));


extern volatile __bit LATD0 __attribute__((address(0x7C60)));


extern volatile __bit LATD1 __attribute__((address(0x7C61)));


extern volatile __bit LATD2 __attribute__((address(0x7C62)));


extern volatile __bit LATD3 __attribute__((address(0x7C63)));


extern volatile __bit LATD4 __attribute__((address(0x7C64)));


extern volatile __bit LATD5 __attribute__((address(0x7C65)));


extern volatile __bit LATD6 __attribute__((address(0x7C66)));


extern volatile __bit LATD7 __attribute__((address(0x7C67)));


extern volatile __bit LATE0 __attribute__((address(0x7C68)));


extern volatile __bit LATE1 __attribute__((address(0x7C69)));


extern volatile __bit LATE2 __attribute__((address(0x7C6A)));


extern volatile __bit LB0 __attribute__((address(0x7C50)));


extern volatile __bit LB1 __attribute__((address(0x7C51)));


extern volatile __bit LB2 __attribute__((address(0x7C52)));


extern volatile __bit LB3 __attribute__((address(0x7C53)));


extern volatile __bit LB4 __attribute__((address(0x7C54)));


extern volatile __bit LB5 __attribute__((address(0x7C55)));


extern volatile __bit LB6 __attribute__((address(0x7C56)));


extern volatile __bit LB7 __attribute__((address(0x7C57)));


extern volatile __bit LC0 __attribute__((address(0x7C58)));


extern volatile __bit LC1 __attribute__((address(0x7C59)));


extern volatile __bit LC2 __attribute__((address(0x7C5A)));


extern volatile __bit LC3 __attribute__((address(0x7C5B)));


extern volatile __bit LC4 __attribute__((address(0x7C5C)));


extern volatile __bit LC5 __attribute__((address(0x7C5D)));


extern volatile __bit LC6 __attribute__((address(0x7C5E)));


extern volatile __bit LC7 __attribute__((address(0x7C5F)));


extern volatile __bit LD0 __attribute__((address(0x7C60)));


extern volatile __bit LD1 __attribute__((address(0x7C61)));


extern volatile __bit LD2 __attribute__((address(0x7C62)));


extern volatile __bit LD3 __attribute__((address(0x7C63)));


extern volatile __bit LD4 __attribute__((address(0x7C64)));


extern volatile __bit LD5 __attribute__((address(0x7C65)));


extern volatile __bit LD6 __attribute__((address(0x7C66)));


extern volatile __bit LD7 __attribute__((address(0x7C67)));


extern volatile __bit LE0 __attribute__((address(0x7C68)));


extern volatile __bit LE1 __attribute__((address(0x7C69)));


extern volatile __bit LE2 __attribute__((address(0x7C6A)));


extern volatile __bit LVDEN __attribute__((address(0x7E94)));


extern volatile __bit LVDIE __attribute__((address(0x7D02)));


extern volatile __bit LVDIF __attribute__((address(0x7D0A)));


extern volatile __bit LVDIN __attribute__((address(0x7C05)));


extern volatile __bit LVDIP __attribute__((address(0x7D12)));


extern volatile __bit LVDL0 __attribute__((address(0x7E90)));


extern volatile __bit LVDL1 __attribute__((address(0x7E91)));


extern volatile __bit LVDL2 __attribute__((address(0x7E92)));


extern volatile __bit LVDL3 __attribute__((address(0x7E93)));


extern volatile __bit MCLR __attribute__((address(0x7C23)));


extern volatile __bit NEGATIVE __attribute__((address(0x7EC4)));


extern volatile __bit NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit NOT_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit NOT_BOR __attribute__((address(0x7E80)));


extern volatile __bit NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit NOT_DOWN __attribute__((address(0x7DB5)));


extern volatile __bit NOT_FLTA __attribute__((address(0x7C11)));


extern volatile __bit NOT_FLTB __attribute__((address(0x7C12)));


extern volatile __bit NOT_IPEN __attribute__((address(0x7E87)));


extern volatile __bit NOT_MCLR __attribute__((address(0x7C23)));


extern volatile __bit NOT_PD __attribute__((address(0x7E82)));


extern volatile __bit NOT_POR __attribute__((address(0x7E81)));


extern volatile __bit NOT_RBPU __attribute__((address(0x7F8F)));


extern volatile __bit NOT_RESEN __attribute__((address(0x7DBE)));


extern volatile __bit NOT_RI __attribute__((address(0x7E84)));


extern volatile __bit NOT_SS __attribute__((address(0x7C16)));


extern volatile __bit NOT_T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit NOT_T5SYNC __attribute__((address(0x7DBA)));


extern volatile __bit NOT_TO __attribute__((address(0x7E83)));


extern volatile __bit NOT_VELM __attribute__((address(0x7DB7)));


extern volatile __bit NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit NOT_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit OERR __attribute__((address(0x7D59)));


extern volatile __bit OSC1 __attribute__((address(0x7C07)));


extern volatile __bit OSC2 __attribute__((address(0x7C06)));


extern volatile __bit OSFIE __attribute__((address(0x7D07)));


extern volatile __bit OSFIF __attribute__((address(0x7D0F)));


extern volatile __bit OSFIP __attribute__((address(0x7D17)));


extern volatile __bit OSTS __attribute__((address(0x7E9B)));


extern volatile __bit OSYNC __attribute__((address(0x7B70)));


extern volatile __bit OV __attribute__((address(0x7EC3)));


extern volatile __bit OVERFLOW __attribute__((address(0x7EC3)));


extern volatile __bit PA1 __attribute__((address(0x7C12)));


extern volatile __bit PA2 __attribute__((address(0x7C11)));


extern volatile __bit PB2 __attribute__((address(0x7C22)));


extern volatile __bit PC2 __attribute__((address(0x7C21)));


extern volatile __bit PC3E __attribute__((address(0x7C23)));


extern volatile __bit PD __attribute__((address(0x7E82)));


extern volatile __bit PD2 __attribute__((address(0x7C20)));


extern volatile __bit PDEC0 __attribute__((address(0x7DB0)));


extern volatile __bit PDEC1 __attribute__((address(0x7DB1)));


extern volatile __bit PEIE __attribute__((address(0x7F96)));


extern volatile __bit PEIE_GIEL __attribute__((address(0x7F96)));


extern volatile __bit PMOD0 __attribute__((address(0x7B78)));


extern volatile __bit PMOD1 __attribute__((address(0x7B79)));


extern volatile __bit PMOD2 __attribute__((address(0x7B7A)));


extern volatile __bit PMOD3 __attribute__((address(0x7B7B)));


extern volatile __bit POR __attribute__((address(0x7E81)));


extern volatile __bit POUT0 __attribute__((address(0x7B50)));


extern volatile __bit POUT1 __attribute__((address(0x7B51)));


extern volatile __bit POUT2 __attribute__((address(0x7B52)));


extern volatile __bit POUT3 __attribute__((address(0x7B53)));


extern volatile __bit POUT4 __attribute__((address(0x7B54)));


extern volatile __bit POUT5 __attribute__((address(0x7B55)));


extern volatile __bit POUT6 __attribute__((address(0x7B56)));


extern volatile __bit POUT7 __attribute__((address(0x7B57)));


extern volatile __bit POVD0 __attribute__((address(0x7B58)));


extern volatile __bit POVD1 __attribute__((address(0x7B59)));


extern volatile __bit POVD2 __attribute__((address(0x7B5A)));


extern volatile __bit POVD3 __attribute__((address(0x7B5B)));


extern volatile __bit POVD4 __attribute__((address(0x7B5C)));


extern volatile __bit POVD5 __attribute__((address(0x7B5D)));


extern volatile __bit POVD6 __attribute__((address(0x7B5E)));


extern volatile __bit POVD7 __attribute__((address(0x7B5F)));


extern volatile __bit PSA __attribute__((address(0x7EAB)));


extern volatile __bit PTCKPS0 __attribute__((address(0x7BFA)));


extern volatile __bit PTCKPS1 __attribute__((address(0x7BFB)));


extern volatile __bit PTDIR __attribute__((address(0x7BF6)));


extern volatile __bit PTEN __attribute__((address(0x7BF7)));


extern volatile __bit PTIE __attribute__((address(0x7D1C)));


extern volatile __bit PTIF __attribute__((address(0x7D24)));


extern volatile __bit PTIP __attribute__((address(0x7D2C)));


extern volatile __bit PTMOD0 __attribute__((address(0x7BF8)));


extern volatile __bit PTMOD1 __attribute__((address(0x7BF9)));


extern volatile __bit PTOPS0 __attribute__((address(0x7BFC)));


extern volatile __bit PTOPS1 __attribute__((address(0x7BFD)));


extern volatile __bit PTOPS2 __attribute__((address(0x7BFE)));


extern volatile __bit PTOPS3 __attribute__((address(0x7BFF)));


extern volatile __bit PWMEN0 __attribute__((address(0x7B7C)));


extern volatile __bit PWMEN1 __attribute__((address(0x7B7D)));


extern volatile __bit PWMEN2 __attribute__((address(0x7B7E)));


extern volatile __bit QEIM0 __attribute__((address(0x7DB2)));


extern volatile __bit QEIM1 __attribute__((address(0x7DB3)));


extern volatile __bit QEIM2 __attribute__((address(0x7DB4)));


extern volatile __bit QERR __attribute__((address(0x7DB6)));


extern volatile __bit __attribute__((__deprecated__)) RA0 __attribute__((address(0x7C00)));


extern volatile __bit __attribute__((__deprecated__)) RA1 __attribute__((address(0x7C01)));


extern volatile __bit __attribute__((__deprecated__)) RA2 __attribute__((address(0x7C02)));


extern volatile __bit __attribute__((__deprecated__)) RA3 __attribute__((address(0x7C03)));


extern volatile __bit __attribute__((__deprecated__)) RA4 __attribute__((address(0x7C04)));


extern volatile __bit __attribute__((__deprecated__)) RA5 __attribute__((address(0x7C05)));


extern volatile __bit __attribute__((__deprecated__)) RA6 __attribute__((address(0x7C06)));


extern volatile __bit __attribute__((__deprecated__)) RA7 __attribute__((address(0x7C07)));


extern volatile __bit __attribute__((__deprecated__)) RB0 __attribute__((address(0x7C08)));


extern volatile __bit __attribute__((__deprecated__)) RB1 __attribute__((address(0x7C09)));


extern volatile __bit __attribute__((__deprecated__)) RB2 __attribute__((address(0x7C0A)));


extern volatile __bit __attribute__((__deprecated__)) RB3 __attribute__((address(0x7C0B)));


extern volatile __bit __attribute__((__deprecated__)) RB4 __attribute__((address(0x7C0C)));


extern volatile __bit __attribute__((__deprecated__)) RB5 __attribute__((address(0x7C0D)));


extern volatile __bit __attribute__((__deprecated__)) RB6 __attribute__((address(0x7C0E)));


extern volatile __bit __attribute__((__deprecated__)) RB7 __attribute__((address(0x7C0F)));


extern volatile __bit RBIE __attribute__((address(0x7F93)));


extern volatile __bit RBIF __attribute__((address(0x7F90)));


extern volatile __bit RBIP __attribute__((address(0x7F88)));


extern volatile __bit RBPU __attribute__((address(0x7F8F)));


extern volatile __bit __attribute__((__deprecated__)) RC0 __attribute__((address(0x7C10)));


extern volatile __bit __attribute__((__deprecated__)) RC1 __attribute__((address(0x7C11)));


extern volatile __bit RC1IE __attribute__((address(0x7CED)));


extern volatile __bit RC1IF __attribute__((address(0x7CF5)));


extern volatile __bit RC1IP __attribute__((address(0x7CFD)));


extern volatile __bit __attribute__((__deprecated__)) RC2 __attribute__((address(0x7C12)));


extern volatile __bit __attribute__((__deprecated__)) RC3 __attribute__((address(0x7C13)));


extern volatile __bit __attribute__((__deprecated__)) RC4 __attribute__((address(0x7C14)));


extern volatile __bit __attribute__((__deprecated__)) RC5 __attribute__((address(0x7C15)));


extern volatile __bit __attribute__((__deprecated__)) RC6 __attribute__((address(0x7C16)));


extern volatile __bit __attribute__((__deprecated__)) RC7 __attribute__((address(0x7C17)));


extern volatile __bit RC8_9 __attribute__((address(0x7D5E)));


extern volatile __bit RC9 __attribute__((address(0x7D5E)));


extern volatile __bit RCD8 __attribute__((address(0x7D58)));


extern volatile __bit RCIDL __attribute__((address(0x7D56)));


extern volatile __bit RCIE __attribute__((address(0x7CED)));


extern volatile __bit RCIF __attribute__((address(0x7CF5)));


extern volatile __bit RCIP __attribute__((address(0x7CFD)));


extern volatile __bit RCMT __attribute__((address(0x7D56)));


extern volatile __bit RD __attribute__((address(0x7D30)));


extern volatile __bit __attribute__((__deprecated__)) RD0 __attribute__((address(0x7C18)));


extern volatile __bit __attribute__((__deprecated__)) RD1 __attribute__((address(0x7C19)));


extern volatile __bit RD16 __attribute__((address(0x7E6F)));


extern volatile __bit RD165 __attribute__((address(0x7DB9)));


extern volatile __bit __attribute__((__deprecated__)) RD2 __attribute__((address(0x7C1A)));


extern volatile __bit __attribute__((__deprecated__)) RD3 __attribute__((address(0x7C1B)));


extern volatile __bit __attribute__((__deprecated__)) RD4 __attribute__((address(0x7C1C)));


extern volatile __bit __attribute__((__deprecated__)) RD5 __attribute__((address(0x7C1D)));


extern volatile __bit __attribute__((__deprecated__)) RD6 __attribute__((address(0x7C1E)));


extern volatile __bit __attribute__((__deprecated__)) RD7 __attribute__((address(0x7C1F)));


extern volatile __bit RDE __attribute__((address(0x7C20)));


extern volatile __bit __attribute__((__deprecated__)) RE0 __attribute__((address(0x7C20)));


extern volatile __bit __attribute__((__deprecated__)) RE1 __attribute__((address(0x7C21)));


extern volatile __bit __attribute__((__deprecated__)) RE2 __attribute__((address(0x7C22)));


extern volatile __bit RE3 __attribute__((address(0x7C23)));


extern volatile __bit READ_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit RESEN __attribute__((address(0x7DBE)));


extern volatile __bit RI __attribute__((address(0x7E84)));


extern volatile __bit RJPU __attribute__((address(0x7C07)));


extern volatile __bit RW __attribute__((address(0x7E3A)));


extern volatile __bit RX __attribute__((address(0x7C17)));


extern volatile __bit RX9 __attribute__((address(0x7D5E)));


extern volatile __bit RX9D __attribute__((address(0x7D58)));


extern volatile __bit RXB0IE __attribute__((address(0x7D18)));


extern volatile __bit RXB1IE __attribute__((address(0x7D19)));


extern volatile __bit RXBNIE __attribute__((address(0x7D19)));


extern volatile __bit RXBNIF __attribute__((address(0x7D21)));


extern volatile __bit RXBNIP __attribute__((address(0x7D29)));


extern volatile __bit RXCKP __attribute__((address(0x7D55)));


extern volatile __bit RXDTP __attribute__((address(0x7D55)));


extern volatile __bit R_NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit R_W __attribute__((address(0x7E3A)));


extern volatile __bit R_nW __attribute__((address(0x7E3A)));


extern volatile __bit SASEL0 __attribute__((address(0x7CC8)));


extern volatile __bit SASEL1 __attribute__((address(0x7CC9)));


extern volatile __bit SBSEL0 __attribute__((address(0x7CCC)));


extern volatile __bit SBSEL1 __attribute__((address(0x7CCD)));


extern volatile __bit SCK __attribute__((address(0x7C15)));


extern volatile __bit SCKP __attribute__((address(0x7D54)));


extern volatile __bit SCL __attribute__((address(0x7C15)));


extern volatile __bit SCS0 __attribute__((address(0x7E98)));


extern volatile __bit SCS1 __attribute__((address(0x7E99)));


extern volatile __bit SCSEL0 __attribute__((address(0x7CCA)));


extern volatile __bit SCSEL1 __attribute__((address(0x7CCB)));


extern volatile __bit SDA __attribute__((address(0x7C14)));


extern volatile __bit SDI __attribute__((address(0x7C14)));


extern volatile __bit SDO __attribute__((address(0x7C17)));


extern volatile __bit SDSEL0 __attribute__((address(0x7CCE)));


extern volatile __bit SDSEL1 __attribute__((address(0x7CCF)));


extern volatile __bit SENDB __attribute__((address(0x7D63)));


extern volatile __bit SENDB1 __attribute__((address(0x7D63)));


extern volatile __bit SEVOPS0 __attribute__((address(0x7B74)));


extern volatile __bit SEVOPS1 __attribute__((address(0x7B75)));


extern volatile __bit SEVOPS2 __attribute__((address(0x7B76)));


extern volatile __bit SEVOPS3 __attribute__((address(0x7B77)));


extern volatile __bit SEVTDIR __attribute__((address(0x7B73)));


extern volatile __bit SMP __attribute__((address(0x7E3F)));


extern volatile __bit SOSCEN __attribute__((address(0x7E6B)));


extern volatile __bit SOSCEN5 __attribute__((address(0x7DBB)));


extern volatile __bit SPEN __attribute__((address(0x7D5F)));


extern volatile __bit SREN __attribute__((address(0x7D5D)));


extern volatile __bit SRENA __attribute__((address(0x7D5D)));


extern volatile __bit SS __attribute__((address(0x7C16)));


extern volatile __bit SS2 __attribute__((address(0x7C1F)));


extern volatile __bit SSPEN __attribute__((address(0x7E35)));


extern volatile __bit SSPIE __attribute__((address(0x7CEB)));


extern volatile __bit SSPIF __attribute__((address(0x7CF3)));


extern volatile __bit SSPIP __attribute__((address(0x7CFB)));


extern volatile __bit SSPM0 __attribute__((address(0x7E30)));


extern volatile __bit SSPM1 __attribute__((address(0x7E31)));


extern volatile __bit SSPM2 __attribute__((address(0x7E32)));


extern volatile __bit SSPM3 __attribute__((address(0x7E33)));


extern volatile __bit SSPOV __attribute__((address(0x7E36)));


extern volatile __bit SSRC0 __attribute__((address(0x7CD0)));


extern volatile __bit SSRC1 __attribute__((address(0x7CD1)));


extern volatile __bit SSRC2 __attribute__((address(0x7CD2)));


extern volatile __bit SSRC3 __attribute__((address(0x7CD3)));


extern volatile __bit SSRC4 __attribute__((address(0x7CD4)));


extern volatile __bit START __attribute__((address(0x7E3B)));


extern volatile __bit STKFUL __attribute__((address(0x7FE7)));


extern volatile __bit STKOVF __attribute__((address(0x7FE7)));


extern volatile __bit STKPTR0 __attribute__((address(0x7FE0)));


extern volatile __bit STKPTR1 __attribute__((address(0x7FE1)));


extern volatile __bit STKPTR2 __attribute__((address(0x7FE2)));


extern volatile __bit STKPTR3 __attribute__((address(0x7FE3)));


extern volatile __bit STKPTR4 __attribute__((address(0x7FE4)));


extern volatile __bit STKUNF __attribute__((address(0x7FE6)));


extern volatile __bit STOP __attribute__((address(0x7E3C)));


extern volatile __bit SWDTEN __attribute__((address(0x7E88)));


extern volatile __bit SYNC __attribute__((address(0x7D64)));


extern volatile __bit SYNC1 __attribute__((address(0x7D64)));


extern volatile __bit T016BIT __attribute__((address(0x7EAE)));


extern volatile __bit T0CKI __attribute__((address(0x7C13)));


extern volatile __bit T0CS __attribute__((address(0x7EAD)));


extern volatile __bit T0IE __attribute__((address(0x7F95)));


extern volatile __bit T0IF __attribute__((address(0x7F92)));


extern volatile __bit T0IP __attribute__((address(0x7F8A)));


extern volatile __bit T0PS0 __attribute__((address(0x7EA8)));


extern volatile __bit T0PS1 __attribute__((address(0x7EA9)));


extern volatile __bit T0PS2 __attribute__((address(0x7EAA)));


extern volatile __bit T0PS3 __attribute__((address(0x7EAB)));


extern volatile __bit T0SE __attribute__((address(0x7EAC)));


extern volatile __bit T13CKI __attribute__((address(0x7C10)));


extern volatile __bit T1CKPS0 __attribute__((address(0x7E6C)));


extern volatile __bit T1CKPS1 __attribute__((address(0x7E6D)));


extern volatile __bit T1INSYNC __attribute__((address(0x7E6A)));


extern volatile __bit T1OSCEN __attribute__((address(0x7E6B)));


extern volatile __bit T1OSI __attribute__((address(0x7C11)));


extern volatile __bit T1OSO __attribute__((address(0x7C10)));


extern volatile __bit T1RD16 __attribute__((address(0x7E6F)));


extern volatile __bit T1RUN __attribute__((address(0x7E6E)));


extern volatile __bit T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit T2CKPS0 __attribute__((address(0x7E50)));


extern volatile __bit T2CKPS1 __attribute__((address(0x7E51)));


extern volatile __bit T2OUTPS0 __attribute__((address(0x7E53)));


extern volatile __bit T2OUTPS1 __attribute__((address(0x7E54)));


extern volatile __bit T2OUTPS2 __attribute__((address(0x7E55)));


extern volatile __bit T2OUTPS3 __attribute__((address(0x7E56)));


extern volatile __bit T5CKI __attribute__((address(0x7C13)));


extern volatile __bit T5MOD __attribute__((address(0x7DBD)));


extern volatile __bit T5PS0 __attribute__((address(0x7DBB)));


extern volatile __bit T5PS1 __attribute__((address(0x7DBC)));


extern volatile __bit T5SEN __attribute__((address(0x7DBF)));


extern volatile __bit T5SYNC __attribute__((address(0x7DBA)));


extern volatile __bit TBIE __attribute__((address(0x7CEC)));


extern volatile __bit TBIF __attribute__((address(0x7CF4)));


extern volatile __bit TBIP __attribute__((address(0x7CFC)));


extern volatile __bit TMR0IE __attribute__((address(0x7F95)));


extern volatile __bit TMR0IF __attribute__((address(0x7F92)));


extern volatile __bit TMR0IP __attribute__((address(0x7F8A)));


extern volatile __bit TMR0ON __attribute__((address(0x7EAF)));


extern volatile __bit TMR1CS __attribute__((address(0x7E69)));


extern volatile __bit TMR1IE __attribute__((address(0x7CE8)));


extern volatile __bit TMR1IF __attribute__((address(0x7CF0)));


extern volatile __bit TMR1IP __attribute__((address(0x7CF8)));


extern volatile __bit TMR1ON __attribute__((address(0x7E68)));


extern volatile __bit TMR2IE __attribute__((address(0x7CE9)));


extern volatile __bit TMR2IF __attribute__((address(0x7CF1)));


extern volatile __bit TMR2IP __attribute__((address(0x7CF9)));


extern volatile __bit TMR2ON __attribute__((address(0x7E52)));


extern volatile __bit TMR5CS __attribute__((address(0x7DB9)));


extern volatile __bit TMR5IE __attribute__((address(0x7D18)));


extern volatile __bit TMR5IF __attribute__((address(0x7D20)));


extern volatile __bit TMR5IP __attribute__((address(0x7D28)));


extern volatile __bit TMR5ON __attribute__((address(0x7DB8)));


extern volatile __bit TO __attribute__((address(0x7E83)));


extern volatile __bit TOUTPS0 __attribute__((address(0x7E53)));


extern volatile __bit TOUTPS1 __attribute__((address(0x7E54)));


extern volatile __bit TOUTPS2 __attribute__((address(0x7E55)));


extern volatile __bit TOUTPS3 __attribute__((address(0x7E56)));


extern volatile __bit TRISA0 __attribute__((address(0x7C90)));


extern volatile __bit TRISA1 __attribute__((address(0x7C91)));


extern volatile __bit TRISA2 __attribute__((address(0x7C92)));


extern volatile __bit TRISA3 __attribute__((address(0x7C93)));


extern volatile __bit TRISA4 __attribute__((address(0x7C94)));


extern volatile __bit TRISA5 __attribute__((address(0x7C95)));


extern volatile __bit TRISA6 __attribute__((address(0x7C96)));


extern volatile __bit TRISA7 __attribute__((address(0x7C97)));


extern volatile __bit TRISB0 __attribute__((address(0x7C98)));


extern volatile __bit TRISB1 __attribute__((address(0x7C99)));


extern volatile __bit TRISB2 __attribute__((address(0x7C9A)));


extern volatile __bit TRISB3 __attribute__((address(0x7C9B)));


extern volatile __bit TRISB4 __attribute__((address(0x7C9C)));


extern volatile __bit TRISB5 __attribute__((address(0x7C9D)));


extern volatile __bit TRISB6 __attribute__((address(0x7C9E)));


extern volatile __bit TRISB7 __attribute__((address(0x7C9F)));


extern volatile __bit TRISC0 __attribute__((address(0x7CA0)));


extern volatile __bit TRISC1 __attribute__((address(0x7CA1)));


extern volatile __bit TRISC2 __attribute__((address(0x7CA2)));


extern volatile __bit TRISC3 __attribute__((address(0x7CA3)));


extern volatile __bit TRISC4 __attribute__((address(0x7CA4)));


extern volatile __bit TRISC5 __attribute__((address(0x7CA5)));


extern volatile __bit TRISC6 __attribute__((address(0x7CA6)));


extern volatile __bit TRISC7 __attribute__((address(0x7CA7)));


extern volatile __bit TRISD0 __attribute__((address(0x7CA8)));


extern volatile __bit TRISD1 __attribute__((address(0x7CA9)));


extern volatile __bit TRISD2 __attribute__((address(0x7CAA)));


extern volatile __bit TRISD3 __attribute__((address(0x7CAB)));


extern volatile __bit TRISD4 __attribute__((address(0x7CAC)));


extern volatile __bit TRISD5 __attribute__((address(0x7CAD)));


extern volatile __bit TRISD6 __attribute__((address(0x7CAE)));


extern volatile __bit TRISD7 __attribute__((address(0x7CAF)));


extern volatile __bit TRISE0 __attribute__((address(0x7CB0)));


extern volatile __bit TRISE1 __attribute__((address(0x7CB1)));


extern volatile __bit TRISE2 __attribute__((address(0x7CB2)));


extern volatile __bit TRMT __attribute__((address(0x7D61)));


extern volatile __bit TRMT1 __attribute__((address(0x7D61)));


extern volatile __bit TUN0 __attribute__((address(0x7CD8)));


extern volatile __bit TUN1 __attribute__((address(0x7CD9)));


extern volatile __bit TUN2 __attribute__((address(0x7CDA)));


extern volatile __bit TUN3 __attribute__((address(0x7CDB)));


extern volatile __bit TUN4 __attribute__((address(0x7CDC)));


extern volatile __bit TUN5 __attribute__((address(0x7CDD)));


extern volatile __bit TX __attribute__((address(0x7C16)));


extern volatile __bit TX1IE __attribute__((address(0x7CEC)));


extern volatile __bit TX1IF __attribute__((address(0x7CF4)));


extern volatile __bit TX1IP __attribute__((address(0x7CFC)));


extern volatile __bit TX8_9 __attribute__((address(0x7D66)));


extern volatile __bit TX9 __attribute__((address(0x7D66)));


extern volatile __bit TX91 __attribute__((address(0x7D66)));


extern volatile __bit TX9D __attribute__((address(0x7D60)));


extern volatile __bit TX9D1 __attribute__((address(0x7D60)));


extern volatile __bit TXB0IE __attribute__((address(0x7D1A)));


extern volatile __bit TXB1IE __attribute__((address(0x7D1B)));


extern volatile __bit TXB2IE __attribute__((address(0x7D1C)));


extern volatile __bit TXBNIE __attribute__((address(0x7D1C)));


extern volatile __bit TXBNIF __attribute__((address(0x7D24)));


extern volatile __bit TXBNIP __attribute__((address(0x7D2C)));


extern volatile __bit TXCKP __attribute__((address(0x7D54)));


extern volatile __bit TXD8 __attribute__((address(0x7D60)));


extern volatile __bit TXEN __attribute__((address(0x7D65)));


extern volatile __bit TXEN1 __attribute__((address(0x7D65)));


extern volatile __bit TXIE __attribute__((address(0x7CEC)));


extern volatile __bit TXIF __attribute__((address(0x7CF4)));


extern volatile __bit TXIP __attribute__((address(0x7CFC)));


extern volatile __bit UA __attribute__((address(0x7E39)));


extern volatile __bit UDIS __attribute__((address(0x7B71)));


extern volatile __bit ULPWUIN __attribute__((address(0x7C00)));


extern volatile __bit UP __attribute__((address(0x7DB5)));


extern volatile __bit UPDOWN __attribute__((address(0x7DB5)));


extern volatile __bit UP_DOWN __attribute__((address(0x7DB5)));


extern volatile __bit UP_NOT_DOWN __attribute__((address(0x7DB5)));


extern volatile __bit UP_nDOWN __attribute__((address(0x7DB5)));


extern volatile __bit VCFG0 __attribute__((address(0x7E0E)));


extern volatile __bit VCFG01 __attribute__((address(0x7E0C)));


extern volatile __bit VCFG1 __attribute__((address(0x7E0F)));


extern volatile __bit VELM __attribute__((address(0x7DB7)));


extern volatile __bit VREFM __attribute__((address(0x7C02)));


extern volatile __bit VREFP __attribute__((address(0x7C03)));


extern volatile __bit W4E __attribute__((address(0x7D51)));


extern volatile __bit WAIT0 __attribute__((address(0x7E5C)));


extern volatile __bit WAIT1 __attribute__((address(0x7E5D)));


extern volatile __bit WCOL __attribute__((address(0x7E37)));


extern volatile __bit WDTW __attribute__((address(0x7E8F)));


extern volatile __bit WM0 __attribute__((address(0x7E58)));


extern volatile __bit WM1 __attribute__((address(0x7E59)));


extern volatile __bit WR __attribute__((address(0x7D31)));


extern volatile __bit WRE __attribute__((address(0x7C21)));


extern volatile __bit WREN __attribute__((address(0x7D32)));


extern volatile __bit WRERR __attribute__((address(0x7D33)));


extern volatile __bit WUE __attribute__((address(0x7D51)));


extern volatile __bit ZERO __attribute__((address(0x7EC2)));


extern volatile __bit nA __attribute__((address(0x7E3D)));


extern volatile __bit nADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit nBOR __attribute__((address(0x7E80)));


extern volatile __bit nDONE __attribute__((address(0x7E11)));


extern volatile __bit nDOWN __attribute__((address(0x7DB5)));


extern volatile __bit nFLTA __attribute__((address(0x7C11)));


extern volatile __bit nFLTB __attribute__((address(0x7C12)));


extern volatile __bit nIPEN __attribute__((address(0x7E87)));


extern volatile __bit nMCLR __attribute__((address(0x7C23)));


extern volatile __bit nPD __attribute__((address(0x7E82)));


extern volatile __bit nPOR __attribute__((address(0x7E81)));


extern volatile __bit nRBPU __attribute__((address(0x7F8F)));


extern volatile __bit nRESEN __attribute__((address(0x7DBE)));


extern volatile __bit nRI __attribute__((address(0x7E84)));


extern volatile __bit nSS __attribute__((address(0x7C16)));


extern volatile __bit nT1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit nT5SYNC __attribute__((address(0x7DBA)));


extern volatile __bit nTO __attribute__((address(0x7E83)));


extern volatile __bit nVELM __attribute__((address(0x7DB7)));


extern volatile __bit nW __attribute__((address(0x7E3A)));


extern volatile __bit nWRITE __attribute__((address(0x7E3A)));
# 559 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18_chip_select.h" 2 3
# 8 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18.h" 2 3
# 18 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18.h" 3
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);







# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\errata.h" 1 3
# 26 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18.h" 2 3
# 49 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 158 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18.h" 3
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
# 178 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\pic18.h" 3
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);






#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);
#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(unsigned char);
# 32 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\xc.h" 2 3
# 9 "main.c" 2


# 1 "./PWM.h" 1








void configPWM(){

    PTCON0 = 0b00000000;
    PTCON1 = 0b10000000;
    PWMCON0 = 0b01011111;
    PWMCON1 = 0b00000001;
    DTCON = 0b00010000;
    OVDCOND = 0b11111111;
    OVDCONS = 0b00000000;
    PTPERL = 0b10010110;
    PTPERH = 0b00000000;

}

void setDutyPWM0(unsigned int porcVelo) {
    unsigned int velo = porcVelo*6;
    PDC0L = velo & 0b11111111;
    PDC0H = (velo >> 8) & 0b11111111;
}

void setDutyPWM2(unsigned int porcVelo) {
    unsigned int velo = porcVelo*6;
    PDC1L = velo & 0b11111111;
    PDC1H = (velo >> 8) & 0b11111111;
}

void setDutyPWM4(unsigned int porcVelo) {
    unsigned int velo = porcVelo*6;
    PDC2L = velo & 0b11111111;
    PDC2H = (velo >> 8) & 0b11111111;
}

void setDutyPWM6(unsigned int porcVelo) {
    unsigned int velo = porcVelo*6;
    PDC3L = velo & 0b11111111;
    PDC3H = (velo >> 8) & 0b11111111;
}
# 11 "main.c" 2

# 1 "./bluetooth.h" 1








void configUSART() {
    SPBRG = 0x81;
# 22 "./bluetooth.h"
    TXSTAbits.BRGH = 1;

    TXSTAbits.SYNC = 0;
    TXSTAbits.TX9 = 0;
    TXSTAbits.TXEN = 1;
    PIE1bits.TXIE = 0;

    RCSTAbits.SPEN = 1;
    RCSTAbits.RX9 = 0;
    RCSTAbits.CREN = 1;
    TRISCbits.TRISC6 = 0;
    TRISCbits.TRISC7 = 1;

    PIR1bits.RCIF = 0;
    PIE1bits.RCIE = 1;
}

char UARTReadChar() {
    char ler = RCREG;
    return ler;
}

void UARTWriteTest() {
    while (!TRMT);
}

void UARTSendChar(char c) {
    TXREG = c;
    UARTWriteTest();
}

void UARTSendString(char* str, const int max_length) {
    int i = 0;

    for (i = 0; i < max_length; i++) {

        if (str[i] == '\0') break;
        UARTSendChar(str[i]);
        UARTWriteTest();

    }
}
# 12 "main.c" 2

# 1 "./ADC.h" 1







void configAD() {

    ADCON1bits.VCFG0 = 0;
    ADCON1bits.VCFG1 = 0;



    ADCON0bits.ACONV = 0;
    ADCON0bits.ACSCH = 0;

    ADCON0bits.ACMOD = 0b00;

    ADCON2bits.ADFM = 1;

    ADCON2bits.ACQT = 0b0110;
    ADCON2bits.ADCS = 0b101;





    ADCON3 = 0b00000000;
}

const char* valorConvUART(int valor) {

    int centena = valor / 100;
    int dezena = (valor / 10) % 10;
    int unidade = (valor % 100) % 10;

    char string[5] = {'\0'};

    string[0] = centena + '0';
    string[1] = '.';
    string[2] = dezena + '0';
    string[3] = unidade + '0';

    return string;
}

int vdig_AN;
float vanal_AN;

float readAD_AN() {

    vdig_AN = ADRESH;
    vdig_AN = vdig_AN << 8;
    vdig_AN += ADRESL;

    vanal_AN = 4.88 * vdig_AN * 0.1;

    return vanal_AN;
}

int getAD_AN(int porta) {

    ADCON0bits.ACMOD = bitExtract(porta, 2, 0);

    ADCHSbits.GASEL0 = bitExtract(porta, 1, 2);
    ADCHSbits.GBSEL0 = bitExtract(porta, 1, 2);
    ADCHSbits.GCSEL0 = bitExtract(porta, 1, 2);
    ADCHSbits.GDSEL0 = bitExtract(porta, 1, 2);

    ADCON0bits.ADON = 1;
    ADCON0bits.GODONE = 1;
    while (ADCON0bits.GODONE);

    float ANread = readAD_AN();
    ADCON0bits.ADON = 0;

    return (int) ANread;
# 90 "./ADC.h"
}
# 13 "main.c" 2

# 1 "./defines.h" 1
# 14 "main.c" 2

# 1 "./geral.h" 1







# 1 "./defines.h" 1
# 8 "./geral.h" 2


void configBits() {

#pragma config OSC = HS
#pragma config FCMEN = ON
#pragma config IESO = ON


#pragma config PWRTEN = OFF
#pragma config BOREN = OFF



#pragma config WDTEN = OFF
#pragma config WDPS = 32768
#pragma config WINEN = OFF


#pragma config PWMPIN = OFF
#pragma config LPOL = HIGH
#pragma config HPOL = HIGH
#pragma config T1OSCMX = ON


#pragma config MCLRE = ON


#pragma config STVREN = ON
#pragma config LVP = ON


#pragma config CP0 = OFF
#pragma config CP1 = OFF
#pragma config CP2 = OFF
#pragma config CP3 = OFF


#pragma config CPB = OFF
#pragma config CPD = OFF


#pragma config WRT0 = OFF
#pragma config WRT1 = OFF
#pragma config WRT2 = OFF
#pragma config WRT3 = OFF


#pragma config WRTC = OFF
#pragma config WRTB = OFF
#pragma config WRTD = OFF


#pragma config EBTR0 = OFF
#pragma config EBTR1 = OFF
#pragma config EBTR2 = OFF
#pragma config EBTR3 = OFF


#pragma config EBTRB = OFF

}

int bitExtract(int numero, int k, int p) {
    return (((1 << k) - 1) & (numero >> p));
}







void testeMotores(){

    int i;
    PORTBbits.RB6 = 1;
    PORTBbits.RB7 = 1;


    for(i = 0; i <= 100; i++){
        setDutyPWM0(i);
        _delay((unsigned long)((20)*(20000000/4000.0)));
    }
    setDutyPWM0(0);


    for(i = 0; i <= 100; i++){
        setDutyPWM6(i);
        _delay((unsigned long)((20)*(20000000/4000.0)));
    }
    setDutyPWM6(0);


    for(i = 0; i <= 100; i++){
        setDutyPWM2(i);
        _delay((unsigned long)((20)*(20000000/4000.0)));
    }
    setDutyPWM2(0);


    for(i = 0; i <= 100; i++){
        setDutyPWM2(i);
        _delay((unsigned long)((20)*(20000000/4000.0)));
    }
    setDutyPWM4(0);


    for(i = 0; i <= 100; i++){
        setDutyPWM0(i);
        setDutyPWM2(i);
        _delay((unsigned long)((20)*(20000000/4000.0)));
    }
    setDutyPWM0(0);
    setDutyPWM2(0);


    for(i = 0; i <= 100; i++){
        setDutyPWM0(i);
        setDutyPWM4(i);
        _delay((unsigned long)((20)*(20000000/4000.0)));
    }
    setDutyPWM0(0);
    setDutyPWM4(0);


    for(i = 0; i <= 100; i++){
        setDutyPWM6(i);
        setDutyPWM2(i);
        _delay((unsigned long)((20)*(20000000/4000.0)));
    }
    setDutyPWM6(0);
    setDutyPWM2(0);


    for(i = 0; i <= 100; i++){
        setDutyPWM6(i);
        setDutyPWM4(i);
        _delay((unsigned long)((20)*(20000000/4000.0)));
    }
    setDutyPWM6(0);
    setDutyPWM4(0);
}




void testeLampadas(){
    int i;

    for(i = 0; i < 16; i++){
        RC0 = bitExtract(i, 1, 0);
        RC1 = bitExtract(i, 1, 1);
        RC2 = bitExtract(i, 1, 2);
        RC3 = bitExtract(i, 1, 3);
        _delay((unsigned long)((500)*(20000000/4000.0)));
    }
}

void testeAD(){
    UARTSendString("AN0: ",16);
    UARTSendString(valorConvUART(getAD_AN(0)), 16);
    UARTSendString("\r",16);

    UARTSendString("AN1: ",16);
    UARTSendString(valorConvUART(getAD_AN(1)), 16);
    UARTSendString("\r",16);

    UARTSendString("AN2: ",16);
    UARTSendString(valorConvUART(getAD_AN(2)), 16);
    UARTSendString("\r",16);

    UARTSendString("AN3: ",16);
    UARTSendString(valorConvUART(getAD_AN(3)), 16);
    UARTSendString("\r",16);

    UARTSendString("AN4: ",16);
    UARTSendString(valorConvUART(getAD_AN(4)), 16);
    UARTSendString("\r",16);

    UARTSendString("AN5: ",16);
    UARTSendString(valorConvUART(getAD_AN(5)), 16);
    UARTSendString("\r",16);

    UARTSendString("AN6: ",16);
    UARTSendString(valorConvUART(getAD_AN(6)), 16);
    UARTSendString("\r",16);

    UARTSendString("AN7: ",16);
    UARTSendString(valorConvUART(getAD_AN(7)), 16);
    UARTSendString("\r",16);
    UARTSendString("----------",16);
    UARTSendString("\r",16);

    _delay((unsigned long)((500)*(20000000/4000.0)));
}
# 15 "main.c" 2


void __attribute__((picinterrupt(("")))) ISR(void) {


    if (PIR1bits.RCIF) {


        if (RCSTAbits.FERR || RCSTAbits.OERR) {
            RCSTAbits.OERR = 1;
            RCSTAbits.CREN = 0;
            RCSTAbits.CREN = 1;
        }


        if (UARTReadChar() == 'f') {
            UARTSendString("frente", 16);
        }

        PIR1bits.RCIF = 0;
    }
}


void main(void) {




    _delay((unsigned long)((100)*(20000000/4000.0)));

    ANSEL0 = 0b11111111;
    ANSEL1 = 0b00000001;

    TRISA = 0b11111111;
    TRISB = 0b00000000;
    TRISC = 0b10000000;
    TRISD = 0b00011100;
    TRISE = 0b00000111;

    PORTB = 0b00000000;
    PORTC = 0b00000000;
    PORTD = 0b00000000;
    PORTE = 0b00000000;

    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;

    configBits();
    configUSART();
    configPWM();
    configAD();

    int AN0,AN1,AN2,AN3,AN4,AN5,AN6;

    while(1){
        testeAD();
    }

    return;
}
