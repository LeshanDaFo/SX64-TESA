
; ###############################################################
; #                                                             #
; #  TESA ETIKETTENDRUCKER 6240 SOURCE CODE                     #
; #  Version 1.0 (2024.12.09)                                   #
; #  Copyright (c) 2024 Claus Schlereth                         #
; #                                                             #
; #  This version of the source code is under MIT License       #
; #                                                             #
; #  This source code can be found at:                          #
; #  https://github.com/LeshanDaFo/SX64-TESA                    #
; #  This source code is bsed on the existing ROM images        #
; #                                                             #
; ###############################################################

; History:
; V1.0 =   Initial version

; Symboltabelle fuer TESA ROM

VIC_ctrl_reg1       = $D011     ; Control register 1
VIC_Rast_counter    = $D012     ; Raster counter
VIC_ctrl_reg2       = $D016     ; Control register 2
VIC_mem_pnt         = $D018     ; Memory pointers
VIC_irq_reg         = $D019     ; Interrupt register
VIC_bd_col          = $D020     ; Border color
VIC_bg_col0         = $D021     ; Background color 0
VIC_bg_col1         = $D022     ; Background color 1
VIC_bg_col2         = $D023     ; Background color 2
VIC_bg_col3         = $D024     ; Background color 3

SID_FM_VC           = $D418     ; SID FilterMod and VolumeControl

CIA1_PRA            = $DC00     ; Data Port A
CIA1_PRB            = $DC01     ; Data Port B
CIA1_DDRA           = $DC02     ; Data Direction Port A
CIA1_DDRB           = $DC03     ; Data Direction Port B
CIA1_TALO           = $DC04     ; Timer A Low Byte
CIA1_TAHI           = $DC05     ; Timer A HIGH Byte
CIA1_TBHI           = $DC07     ; Timer B High Byte
CIA1_ICR          	= $DC0D     ; Interrupt control and status
CIA1_CRA            = $DC0E     ; Control Timer A
CIA1_CRB            = $DC0F     ; Control Timer B

CIA2_PRA            = $DD00     ; Data Port A
CIA2_PRB            = $DD01     ; Data Port B
CIA2_DDRA           = $DD02     ; Data Direction Port A
CIA2_DDRB           = $DD03     ; Data Direction Port B
CIA2_ICR          	= $DD0D     ; Interrupt control and status
CIA2_CRA            = $DD0E     ; Control Timer A
CIA2_CRB            = $DD0F     ; Control Timer B


; Tasten codes
CRSR_D      = $11
CRSR_U      = $91
CRSR_R      = $1D
CRSR_L      = $9D

RETURN      = $0D
SHRETURN    = $8D

HOME        = $13
DEL         = $14
LEER        = $20
PFEIL_L     = $5F


; F-Tasten
F1          = $85
F2          = $89
F3          = $86
F4          = $8A
F5          = $87
F6          = $8B
F7          = $88
F8          = $8C

; Farben

; 01 weiss blinken
; 02 rot hinterlegt
; 03 rot-weiss blinken
; 04 normal
; 05 weiss blinken
; 06 rot hinterlegt

normal      = $04       ; Normaldarstellung
bl_weiss    = $05       ; Weiss blinken
rot         = $06       ; Rot

; Bytes
LWNR        = $08

; Adressen
TAST_BUFF   = $0277     ; Tastaturpuffer
DIRECTORY   = $CA00     ; Directoryspeicher
MODE1       = $CB00     ; Tastaturtabelle
BSSTART     = $CC00     ; Textbildschirmspeicher    
BSFSTART    = $D800     ; Farbspeicher Textbildschirm

; Zeropage
; $07 Ruecksprungadresse low
; $08 Ruecksprungadresse high
ZEILE       = $0A       ; im Textbildschirm
SPALTE      = $0B       ; im Textbildschirm
BSPOS       = $0C       ; Bildschirmposition absolut in $0C,$0D

ANZEIGEART  = $0E       ; Die Anzeigeart des Zeichens
TF_P        = $0F       ; Zeiger auf Textfeld ($0F,$10)

AF_P        = $11       ; Zeiger auf Attributfeld ($11,$12)
;= $13
;= $14
;= $15
ANZ_BAHNEN_HEX  = $16   ; Anzahl der Bahnen als Hex-Wert
CRSR_BREITE = $17       ; Cursorbreite x im Grafikmodus
CRSR_HORHE  = $18       ; Cursorhoehe y im Grafikmodus
;= $19
;= $1A
;= $1B
;= $1C
ET_BYTEY    = $1D       ; Anzahl der 8x8 Felder in Y
ET_BYTEX    = $1E       ; Anzahl der 8x8 Felder in X
;= $1F
;= $20
;= $21                  ; Multiplikator Cursor Hoehe
;= $22                  ; Multiplikator Cursor Breite
POS_X       = $23       ; Cursor Position X im Grafikfeld
POS_Y       = $24       ; Cursor Position Y im Grafikfeld
;= $25
;= $26
;= $27
;= $28
;= $29
;= $2A
KONTRAST    = $2B       ; Flag fuer Kontrast
ZEICHENSATZ = $2C       ; Flag fuer Grafikzeichensatz
INVERS      = $2D       ; Flag fuer Invers
DREHEN      = $2E       ; Flag fuer Textrichtung
;= $2F
;= $30
;= $31
;= $32
FILE_VEC    = $33       ; 33 low,34 high
DIR_PLACE   = $35       ; Filenummer im Directory
F_ETIKETT   = $38       ; Flag fuer gueltiges Etikett im Speicher
ANZ_ET      = $39       ; Anzahl der Etiketten in $39,$3A

ANZ_BAHNEN_DEC  = $3B   ; Anzahl der Bahnen als dezimaler Wert
Z_ETIKETT   = $50       ; Etikettenzaehler
F_BCODE     = $5B       ; Flag fuer gueltigen Barcode
STATUS      = $90       ; Status fuer Diskettenoperationen
C3P0        = $94
BSOUR       = $95
R2D2        = $A3
COUNT       = $A5
ANZ_TAST    = $C6       ; Anzahl Tasten im Puffer
KEYTAB      = $F5
; Symboltabelle Ende
