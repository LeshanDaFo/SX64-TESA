
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

*=$A000
!to "build/TESA.bin",plain
!source "source/TESA-sym.asm"          ; Symbol table


; Code start
RESET_vector
    JMP RESET                   ; LA362
---------------------------------
IRQ_vector
    JMP IRQ                     ; LFF03
---------------------------------
NMI_vector
    JMP NMI                     ; LFF0C
---------------------------------
TA009 JMP LA8C0                 ; Wertekombination aus zwei Eingabefeldern berechnen
---------------------------------
TA00C JMP LEC31
---------------------------------
TA00F JMP LF033
---------------------------------
TA012 JMP LA9A7                 ; Gesamtbreite ueberpruefen
---------------------------------
TA015 JMP LA691                 ; Textfelder vorbelegen
---------------------------------
TA018 JMP LA3CC                 ; Bildschirm und Farben loeschen $CC00 - $CFFF, $D800 - $DFFF
---------------------------------
TA01B JMP LFDF1                 ; Lade Balkencode
---------------------------------
; wird nicht angesprungen, eventuell fuer Erweiterungen?
TA01E JMP LAF9A
---------------------------------
TA021 JMP LAEF1
---------------------------------
TA024 JMP LBD74                 ; Directory einlesen
---------------------------------
TA027 JMP LBDA5                 ; Directory anzeigen
---------------------------------
TA02A JMP LB6AF
---------------------------------
TA02D JMP LB5AA                 ; Teste auf gueltige Etikettendisk
---------------------------------
TA030 JMP LA817                 ; Textfeld x an Bildschirmposition Spalte,Zeile schreiben
---------------------------------
TA033 JMP LE4C3                 ; sende CODES4 an Drucker
---------------------------------
TA036 JMP LE238                 ; *Druckstart*
---------------------------------
TA039 JMP LB394
---------------------------------
TA03C JMP LB2C9                 ; Grafikmodus aktivieren
---------------------------------
TA03F JMP LED20
---------------------------------
TA042 JMP LADF3
---------------------------------
TA045 JMP LAF75                 ; nur RTS
---------------------------------
TA048 JMP LB16B                 ; Menue *etikettentext*
---------------------------------
TA04B JMP LAFA4                 ; Abfrage Schriftgroesse
---------------------------------
TA04E JMP LACC3
---------------------------------
TA051 JMP LB34A                 ; F-Tastenabfrage
---------------------------------
TA054 JMP LF9BE                 ; IECIN ein Zeichen vom IEC-Bus holen
---------------------------------
TA057 JMP LADDE                 ; schalte auf Text Mode
---------------------------------
TA05A JMP LE47E                 ; sende CODES1 an Drucker
---------------------------------
TA05D JMP LF2F7                 ; Funktionstasten Anzeige
---------------------------------
TA060 JMP LB64A                 ; $0:ttt
---------------------------------
TA063 JMP IRQ_ROUTINE            ; LA3A1
---------------------------------
TA066 JMP LABCE
---------------------------------
TA069 JMP LBA66                 ; *et.loeschen*
---------------------------------
TA06C JMP LA846                 ; Aktualisiere Text-Bldschirm
---------------------------------
TA06F JMP LE497                 ; sende CODES2 an Drucker
---------------------------------
TA072 JMP LA45C                 ; Text in Bildschirmspeicher schreiben
---------------------------------
TA075 JMP LE3AD                 ; Byte(s) an Drucker senden
---------------------------------
TA078 JMP LF207                 ; Statusmeldung auslesen
---------------------------------
,A07B JMP LABEA
---------------------------------
,A07E JMP LBB68                 ; diskette ist schreibgeschuetzt
---------------------------------
,A081 JMP LAB75
---------------------------------
TA084 JMP LB766                 ; Menue *speichern*
---------------------------------
TA087 JMP LB541                 ; sende Dateiname
---------------------------------
TA08A JMP LF8B3                 ; TALK senden
---------------------------------
,A08D JMP LB43C
---------------------------------
TA090 JMP LA85D                 ; Beschreibe ein Textfeld in TF_TAB mit Text
---------------------------------
,A093 JMP LAB27
---------------------------------
,A096 JMP LABC8
---------------------------------
,A099 JMP LB0CD
---------------------------------
,A09C JMP LF14E
---------------------------------
,A09F JMP LEB34                 ; Menue *strichcode*
---------------------------------
TA0A2 JMP LE7CC                 ; initialisiere Hauptmenu
---------------------------------
,A0A5 JMP LB0F1
---------------------------------
TA0A8 JMP LB56A                 ; CLOSE ???
---------------------------------
TA0AB JMP LAC37                 ; Loesche Speicherbereich $0400 - $83FF
---------------------------------
,A0AE JMP LFCBF
---------------------------------
TA0B1 JMP LAE20                 ; Grafikbildschirm aktualisieren
---------------------------------
; wird nicht angesprungen, eventuell fuer Erweiterungen?
TA0B4 JMP LAF9F
---------------------------------
TA0B7 JMP LA888                 ; schreibe Text 'daten eingeben!' in Bildschirm
---------------------------------
,A0BA JMP LB6C1                 ; $0:bf*
---------------------------------
TA0BD JMP LBC2F                 ; Menue * diskette *
---------------------------------
,A0C0 JMP LB44E
---------------------------------
,A0C3 JMP LE637
---------------------------------
TA0C6 JMP LE3CD                 ; Menue *drucken*
---------------------------------
,A0C9 JMP LF08B
---------------------------------
TA0CC JMP LFA31                 ; Eingabe EAN 13
---------------------------------
TA0CF JMP LA6F3                 ; Eingabefeld bearbeiten
---------------------------------
,A0D2 JMP LAE7C
---------------------------------
TA0D5 JMP LAC64                  ; Wert in DPI umrechnen
---------------------------------
TA0D8 JMP LAEDA                 ; Berechne gesamte Cursorbreite/hoehe
---------------------------------
TA0DB JMP LEE70                 ; Eingabe Etikett Zaehler
---------------------------------
TA0DE JMP LF24A                 ; Abfrage Grafikbildschirm loeschen
---------------------------------
TA0E1 JMP LA8A8                 ; Hexwert aus Textfeld nach Dezimal
---------------------------------
,A0E4 JMP LB578
---------------------------------
TA0E7 JMP LF693                 ; hole eine Taste aus Tastaturpuffer
---------------------------------
TA0EA JMP LADC9                 ; schalte auf Bitmap Mode
---------------------------------
,A0ED JMP LEA5C                 ; 0:extgraf
---------------------------------
TA0F0 JMP LA8ED                 ; Etikettenhoehe ueberpruefen
---------------------------------
TA0F3 JMP LA404                 ; Lade Wert aus Ruecksprungadress +1
---------------------------------
TA0F6 JMP LF79B                 ; IRQ 2
---------------------------------
TA0F9 JMP LB926                 ; *etikett laden*
---------------------------------
TA0FC JMP LF601                 ; SUB-Menue loeschen
---------------------------------
TA0FF JMP LE4AD                 ; sende CODES3 an Drucker
---------------------------------
TA102 JMP LEC17
---------------------------------
,A105 JMP LAB5D
---------------------------------
,A108 JMP LABA4
---------------------------------
TA10B JMP LB515                 ; Pruefe PFEIL_L (nur im Grafikmodus)
---------------------------------
,A10E JMP LAB3A
---------------------------------
TA111 JMP LF964                 ; Sekundaeradresse nach LISTEN senden
---------------------------------
,A114 JMP LBB92                 ; Abfrage "soll wirklich das etikett .... geloescht werden"
---------------------------------
,A117 JMP LB74B
---------------------------------
TA11A JMP LA67D                 ; setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
---------------------------------
TA11D JMP LA6C7                 ; Tasteneingabe
---------------------------------
TA120 JMP LF9A9                 ; UNLISTEN senden
---------------------------------
TA123 JMP LF6B0                 ; initialisiere VIC und CIA
---------------------------------
TA126 JMP LAB30                 ; subtrahiere X von Y
---------------------------------
TA129 JMP LA7B4
---------------------------------
,A12C JMP LAAC1
---------------------------------
TA12F JMP LEC4B                 ; Eingabe 2 aus 5
---------------------------------
,A132 JMP LED56                 ; Codegroesse Darstellung Balkencode
---------------------------------
TA135 JMP LA97E                 ; Wandle Anzahl Bahnen in Hexwert nach $16
---------------------------------
,A138 JMP LE778
---------------------------------
TA13B JMP LA7ED                 ; Textfelder initialisieren
---------------------------------
TA13E JMP LAC50                 ; Speicherbereich $9B00- $9EFF mit Leerzeichen befuellen
---------------------------------
TA141 JMP LFCF0                 ; Eingabe CODE 39
---------------------------------
TA144 JMP LA417                 ; Berechne Bildschirmposition
---------------------------------
TA147 JMP LA6DB                 ; Zeicheneingabe mit Blinkmodus
---------------------------------
TA14A JMP LB4CC                 ; Pruefe DEL, (nur im Grafikmodus)
---------------------------------
,A14D JMP LB6E1
---------------------------------
,A150 JMP LB695
---------------------------------
TA153 JMP LE000                 ; Menue *einrichten*
---------------------------------
TA156 JMP LA43B                 ; ein Zeichen in Bildschirmspeicher schreiben
---------------------------------
,A159 JMP LB3E5
---------------------------------
TA15C JMP LE39F                 ; setze PortB auf Ausgang (Drucken)
---------------------------------
TA15F JMP LEF57                 ; Zaehlereinstellung
---------------------------------
TA162 JMP LFB4C                 ; Eingabe EAN 8
---------------------------------
TA165 JMP LF43A                 ; SUB-Menue *ende,loeschen*
---------------------------------
TA168 JMP LAC92                 ; Berechne die Anzahl der 8x8 Pixel-Felder
---------------------------------
,A16B JMP LB721
---------------------------------
TA16E JMP LE4D8                 ; etiketten werden gedruckt!
---------------------------------
TA171 JMP LE91D                 ; Grafik-Sondersymbole
---------------------------------
,A174 JMP LEAE4
---------------------------------
TA177 JMP LBD55                 ; Lese Headerdaten aus File
---------------------------------
,A17A JMP LF13E
---------------------------------
TA17D JMP LE823                 ; Menue *hauptmenue*
---------------------------------
,A180 JMP LED33
---------------------------------
TA183 JMP LBE1C                 ; Disk Inhalt
---------------------------------
,A186 JMP LABC1
---------------------------------
TA189 JMP LF8B6                 ; LISTEN senden
---------------------------------
TA18C JMP LA485                 ; Bildschirmmaske erstellen
---------------------------------
TA18F JMP LA651                 ; setze Zeiger auf den Start eines Eintrages in TF_TAB
---------------------------------
TA192 JMP LF55D                 ; Ausschaltmeldung
---------------------------------
,A195 JMP LBD29                 ; 0:bdf
---------------------------------
TA198 JMP LFC30                 ; Pruefsummenberechnung fuer Barcodes EAN 8 und EAN 13
---------------------------------
,A19B JMP LABAF
---------------------------------
,A19E JMP LF12E
---------------------------------
,A1A1 JMP LAB81
---------------------------------
TA1A4 JMP LF972                 ; Sekunsaeradresse nach TALK senden
---------------------------------
,A1A7 JMP LB4BE
---------------------------------
,A1AA JMP LE61D
---------------------------------
TA1AD JMP LA663
---------------------------------
TA1B0 JMP LF988                 ; IECOUT ein Byte auf IEC-Bus
---------------------------------
TA1B3 JMP LF99A                 ; UNTALK senden
---------------------------------
,A1B6 JMP LF1CA
---------------------------------
TA1B9 JMP LAB35                 ; addiere X zu Y
---------------------------------
,A1BC JMP LAA65
---------------------------------
TA1BF JMP LF6BC                 ; initialisiere CIA
---------------------------------
TA1C2 JMP LF720                 ; initialisiere VIC
---------------------------------
TA1C5 JMP LF733
---------------------------------
TA1C8 JMP LF760                 ; VIC-Register setzen
---------------------------------
TA1CB JMP LF864                 ; set bit 4 in CIA2_PRA : CLOCK OUT
---------------------------------
TA1CE JMP LF892                 ; Ende der RS232 Uebertragung abwarten ???
---------------------------------
TA1D1 JMP LF8EA                 ; Byte auf IEC-Bus ausgeben
---------------------------------
TA1D4 JMP LF87F                 ; clear bit 5 CIA2_PRA : DATA OUT
---------------------------------
TA1D7 JMP LF86D                 ; clear bit 4 CIA2_PRA : CLOCK OUT
---------------------------------
TA1DA JMP LF888                 ; Hardware-Rückmeldung aus DATA holen
---------------------------------
TA1DD JMP LF876                 ; set bit 5: DATA OUT
---------------------------------
TA1E0 JMP LF8AB                 ; Verzoegerungsschleife
---------------------------------
TA1E3 JMP LE6C7                 ; Sonderprogramme , 0:sonprg
---------------------------------

TF_TAB:
LA1E6
; Diese Tabelle besteht aus 18 Textfeldern
; jedes Textfeld besteht aus zwei Teilen
; 1. Das eigentliche Textfeld, welche zur Laufzeit aktualisiert wird
; 2. Das Atributfeld, in welchem gespeichert ist, welche Eingaben im entsprechenden Textfeld erlaubt sind

; -------------------------------
; Header Textfelder, keine Eingabefelder
; -------------------------------

; 01 Textfeld 1
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A     ; "DISKETTENNAME   "
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
    !by $80
    !by $41,$58,$58,$58,$58,$58,$58,$58     ; "AXXX..."
    !by $58,$58,$58,$58,$58,$58,$58,$58
;A208
; 02 Textfeld 2
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A     ; "ETIKETTENNAME "
    !by $2A,$2A,$2A,$2A,$2A,$2A
    !by $80
    !by $41,$58,$58,$58,$58,$58,$58,$58     ; "AXXX..."
    !by $58,$58,$58,$58,$58,$58
;A226
; 03 Textfeld 3
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A     ; "*HAUPTMENU*     "
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
    !by $80
    !by $58,$58,$58,$58,$58,$58,$58,$58     ; XXXX..."
    !by $58,$58,$58,$58,$58,$58,$58,$58
;A248
; 04 Textfeld 4
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A     ; "SUBMENU         "
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
    !by $80
    !by $58,$58,$58,$58,$58,$58,$58,$58     ; XXXX..."
    !by $58,$58,$58,$58,$58,$58,$58,$58

; -------------------------------
; Eingabefelder
; -------------------------------
; Attributfeldbeschreibung
; 2C = Komma, hier kann nichts eingegeben werden
; 2A = Hier kann eine Zahl eingegeben werden,
;    der Wert ist abhaengig von anderen Feldern
; 39 = Hier kann eine Zahl eingegeben werden.
;    das Feld wird mit einem Wert vorbelegt
; 4E = Feld fuer Code 2 aus 5
; 58 = Feld fuer Code 39
; 5A = Feld ist leer, eine Zahleneingabe ist moeglich

;A26A
; 05 Etikettenhoehe
    !by $00
    !by $2A,$2A,$2A                         ; "  0"

    !by $80
    !by $5A,$5A,$39                         ; "ZZ9"
;A272
; 06 Laufrichtung
    !by $00
    !by $2A,$2A,$2A,$2A                     ; " 0,0"

    !by $80
    !by $5A,$39,$2C,$39                     ; "Z9,9"
;A27C
; 07 Etikettenbreite
    !by $00
    !by $2A,$2A,$2A                         ; "  0"

    !by $80
    !by $5A,$5A,$39                         ; "ZZ9"
;A284
; 08 Abstand seitlich
    !by $00
    !by $2A,$2A,$2A,$2A                     ; " 0,0"

    !by $80
    !by $5A,$39,$2C,$39                     ; "Z9,9"
;A28E
; 09 Anzahl der Bahnen
    !by $00
    !by $2A,$2A                             ; " 0"

    !by $80
    !by $5A,$39                             ; "Z9"
;A294
; 0A Schriftgroesse
    !by $00
    !by $2A,$2A                             ; "11"

    !by $80
    !by $39,$39                             ; '99'
;A29A
; 0B Anzahl Etiketten
    !by $00
    !by $2A,$2A,$2A,$2A                     ; "   1"

    !by $80
    !by $5A,$5A,$5A,$39                     ; "ZZZ9"
;A2A4
; 0C Daten 2 aus 5
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
    !by $2A

    !by $80
    !by $4E,$4E,$4E,$4E,$4E,$4E,$4E,$4E
    !by $4E,$4E,$4E,$4E,$4E,$4E,$4E,$4E
    !by $4E,$4E,$4E,$4E,$4E,$4E,$4E,$4E
    !by $4E
; 0D Anfangswert Etikettenzaehler
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A

    !by $80
    !by $5A,$5A,$5A,$5A,$5A,$5A,$5A,$39
; 0E Zaehler Schritweite positiv
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A

    !by $80
    !by $5A,$5A,$5A,$5A,$5A,$5A,$5A,$39
; 0F Daten EAN 13
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
    !by $2A,$2A,$2A,$2A,$2A

    !by $80
    !by $39,$39,$39,$39,$39,$39,$39,$39
    !by $39,$39,$39,$39,$39
; 10 Daten EAN 8
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A

    !by $80
    !by $39,$39,$39,$39,$39,$39,$39,$39
; 11 Daten Code 39
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
    !by $2A

    !by $80
    !by $58,$58,$58,$58,$58,$58,$58,$58
    !by $58,$58,$58,$58,$58,$58,$58,$58
    !by $58
; 12 Zaehler Schrittweite negativ
    !by $00
    !by $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A

    !by $80
    !by $5A,$5A,$5A,$5A,$5A,$5A,$5A,$39
; 13 Endekennung
    !by $00
    !by $80

; -------------------------------
; CPU RESET-Vector-Einsprung
; -------------------------------
RESET
LA362
    SEI
    CLD
    LDX #$FF 
    TXS
    JSR PREP_MEM                ; $FEAA, Speicher vorbereiten
    JSR TA123                   ; LF6B0, Initialisiere VIC und CIA

    LDA $01
    AND #$FE                    ; loesche bit 0
    STA $01                     ; schalte auf RAM in $A000 - $BFFF
                                ; Der Inhalt vom ROM wurde zuvor in das RAM kopiert

    LDA CIA2_PRA                ; $DD00, Data Port A
    AND #%11111100              ; Select the position of the VIC_memory ;%00 Bank 3: $C000-$FFFF
    STA CIA2_PRA                ; $DD00 Data Port A
    LDA #$32 
    STA VIC_mem_pnt             ; $D018, Memory pointers

; beschreibe $02 - $5F mit #$00
; wurde zuvor schon in 'PREP_MEM' mit #$00 beschrieben
    LDX #$02 
    LDA #$00 
-   STA $00,X
    INX
    CPX #$60 
    BNE -

; es kann kein Verweis auf die Speicherstellen $0314,$0315 gefunden werden
; wird eventuell von einer Erweiterung benutzt.
    LDA #<TA063                 ; zeigt auf LA3A1 IRQ_ROUTINE
    STA $0314
    LDA #>TA063 
    STA $0315

    CLI
    LDA #$80
    STA $028A
    JSR TA0AB                   ; LAC37, Loesche Speicherbereich $0400 - $83FF
    JMP TA0A2                   ; LE7CC, initialisiere Hauptmenu

; -------------------------------
; IRQ Routine
; -------------------------------
IRQ_ROUTINE
LA3A1
; -------------------------------
; blinken
; -------------------------------
; Zustaendig fuer dss Blinken des Cursors
    CLD
    DEC $02                     ; Zaehler fuer blinken
    BPL +++                     ; noch nicht blinken
    LDX #$00                    ; schwarz
    LDA VIC_bg_col1             ; $D022, Background color 1
    AND #$0F 
    BNE +
    LDX #$01                    ; weiss
    STX VIC_bg_col1             ; $D022, Background color 1
    LDX #$02                    ; Farbe unter Cursor bei blinkender Eingabe rot
    STX VIC_bg_col3             ; $D024, Background color 3
    LDA #$0C                    ; Zaehlerwert fuer Anteil weiss blinken
    BNE ++

+   STX VIC_bg_col1             ; $D022, Background color 1
    LDA #$01                    ; weiss
    STA VIC_bg_col3             ; $D024, Background color 3
    LDA #$24                    ; Blinkfrequenz
++  STA $02
; blinken Ende
+++ JMP TA0F6                   ; LF79B, weiter mit Tastaturabfrage

; -------------------------------
; Bildschirm und Farben loeschen
; -------------------------------
LA3CC
    LDA VIC_ctrl_reg1           ; $D011, Control register 1
    ORA #$40 
    STA VIC_ctrl_reg1           ; $D011, Control register 1
    LDA #$00                    ; schwarz
    STA VIC_bd_col              ; $D020, Border color
    STA VIC_bg_col0             ; $D021, Background color 0
    LDA #$02                    ; rot
    STA VIC_bg_col2             ; $D023, Background color 2

    LDY #$00                    ; Bildschirm-, und Farbstart low byte
    STY $03
    STY $05
    LDA #>BSSTART               ; $CC00, Bildschirmstart high byte
    STA $04
    LDA #>BSFSTART              ; $D800, Bildschirmfarbe high byte 
    STA $06
    LDX #$04                    ; Zaehler fuer 4 Seiten
-   LDA #$20                    ; zu schreibender Wert
    STA ($03),Y                 ; an Bildschirmposition
    LDA #$03                    ; zu setzende Farbe
    STA ($05),Y                 ; an Farbposition
    INY
    BNE -
    INC $04
    INC $06
    DEX
    BNE -
    RTS

; -------------------------------
; Lade Wert aus Ruecksprungadresse +1
; -------------------------------
; Erhoehe Pointer in ($07),
; Lade Wert aus Pointer in Akku und nach $09
LA404
    TYA                       ; y retten
    PHA
    LDY #$00 
    INC $07
    BNE +
    INC $08
+   LDA ($07),Y
    STA $09
    PLA                       ; Y wiederherstellen
    TAY
    LDA $09
    RTS

; -------------------------------
; Berechne Bildschirmposition
; -------------------------------
; mit den Werten aus
; $0A fuer die Zeile
; $0B fuer die Spalte

LA417
; rette x,y
    TXA
    PHA
    TYA
    PHA

    LDA #$00 
    LDY #>BSSTART               ; $CC00, Bildschirmposition High byte
    LDX ZEILE                   ; $0A
    BEQ ++
-   CLC
    ADC #$28                    ; Zeile = Zeile +1
    BCC +
    INY                         ; erhoehe High byte wenn Ueberlauf
+   DEX                         ; Zeilencounter
    BNE -
++  CLC
    ADC SPALTE                  ; $0B ; addiere Spalte
    BCC +
    INY                         ; erhoehe High byte wenn Ueberlauf
; Bildschirmposition
+   STA BSPOS                   ; low byte
    STY BSPOS+1                 ; high byte

; hole x,y
    PLA
    TAY
    PLA
    TAX
    RTS

; -------------------------------
; Ein Zeichen in Bildschirmspeicher schreiben
; -------------------------------
; Bildschirmposition ist in ($0C)
; Auszugebendes Zeichen ist im Akku
LA43B
    CMP #$07                    ; kleiner #$07, dann Steuerzeichen
    BCS +                       ; nein, dann weiter
; Behandlung von Steuerzeichen
; Bestimmen der Darstellung
    LSR
    ROR
    ROR
; $00,$04 ergibt %0000 0000 = normal
; $01,$05 ergibt %1000 0000 = blinken weiss
; $02,$06 ergibt %0100 0000 = rot
; $03     ergibt %1100 0000 = blinken rot/weiss
    STA ANZEIGEART              ; Anzeigeart in $0E
    RTS
---------------------------------
+   AND #$3F                    ; loesche die bits 7 und 6
    ORA ANZEIGEART              ; setze Farbwerte aus $0E in bit 6,7
    STA $09

    TYA
    PHA

    LDA $09
    LDY #$00 
    STA (BSPOS),Y               ; Bildschirmposition

    PLA
    TAY

    INC BSPOS                   ; erhoehe Bidschirmposition
    BNE +
    INC BSPOS+1
+   RTS

; -------------------------------
; Text in Bildschirmspeicher schreiben
; -------------------------------
; Spalte,Zeile
; Textausgabe, schreibt Text in den Bildschirmspeicher an angegebene Position
LA45C ; A072
; Ruecksprungadresse nach ($07)
    PLA
    STA $07
    PLA
    STA $08

--  JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +1
    STA SPALTE                  ; $0B
    JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +1
    STA ZEILE                   ; $0A
    JSR TA144                   ; LA417, Berechne Bildschirmposition
-   JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +1
    BEQ +                       ; $00 fuer Ende des kompletten Textblocks
    CMP #$40                    ; $40 fuer Ende einer Textzeile 
    BEQ --                      ; weitere Textzeile(n)
    JSR TA156                   ; LA43B, ein Zeichen in Bildschirmspeicher schreiben
    JMP -

; hole neue Ruecksprungadresse
+   LDA $08
    PHA
    LDA $07
    PHA
    RTS

; -------------------------------
; Bildschirmmaske erstellen
; -------------------------------
LA485
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $00,$00,normal 
    !pet "tesa-etikettendrucker 6240         v1.2",$40 
    !by $00,$01
    !pet "[::::::::::::::::::>::::::::::::::::::",$5c,$40
    !by $00,$02
    !pet ";                  ;                  ;",$40
    !by $00,$03
    !pet "<::::::::::::::::::_::::::::::::::::::=",$40
    !by $00,$04
    !pet ";                  ;                  ;",$40
    !by $00,$05
    !pet "]::::::::::::::::::?::::::::::::::::::^",$40
    !by $00,$06
    !pet "[:::::::::::::::::::::::::::::::::::::",$5c,$40
    !by $00,$16
    !pet "<:::::::::::::::::::::::::::::::::::::=",$40
    !by $00,$17
    !pet ";                                     ;",$40
    !by $00,$18
    !pet "]:::::::::::::::::::::::::::::::::::::^",$40
    !by $00,$07,$00

; Zeichne den Rahmen fuer die Bildschirmmaske links und rechts in den Bildschirmspeicher
    LDY #$0F                    ; Schleifenzaehler
-   LDA #$3B                    ; Zeichen linke Seite
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
    LDA #$26
    STA SPALTE                  ; $0B
    JSR TA144                   ; LA417, Berechne Bildschirmposition
    LDA #$3B 
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
    INC ZEILE                   ; $0A ; erhoehe Zeilenzaehler
    LDA #$00 
    STA $000B                   ; Spalte
    JSR TA144                   ; LA417, Berechne Bildschirmposition
    DEY
    BNE -
    RTS


; -------------------------------
; setze Zeiger auf den Start eines Eintrages in TextFeld_Tabelle (TF_TAB)
; -------------------------------
LA651
    TYA                         ; rette Y
    PHA

-   LDY #$00 
    LDA (TF_P),Y                ; Lade den Wert aus der Position im Textfeld
    INC TF_P                    ; erhoehe Textfeld_pointer low byte
    BNE +
    INC TF_P+1                  ; erhoehe Textfeld_pointer high byte
+   TAY
    BNE -                       ; wenn nicht 0 war

    PLA
    TAY                         ; hole Y
    RTS

; -------------------------------
; Setze Zeiger in ($11) auf Start Attributfeld
; -------------------------------
LA663
; hier TF_P zeigt auf den Start des gesuchten Testfelds
; Kopiere Zeiger von ($0F) nach ($11)
    LDA TF_P                    ; Textfeld_pointer low byte
    STA AF_P
    LDA TF_P+1                  ; Textfeld_pointer high byte
    STA AF_P+1

    TYA                         ; rette Y
    PHA

-   LDY #$00 
    LDA (AF_P),Y                 ; lade Wert aus Attributfeld
    INC AF_P                     ; erhoehe Adresse
    BNE +
    INC AF_P+1
+   TAY
    BPL -                       ; wenn es noch nicht der Start war
; in ($11) ist nun der zum Textfeld in ($0F) gehoerige Attributfeldstart

    PLA                         ; hole Y
    TAY
    RTS

; -------------------------------
; Bestimme Textfeldstart, und Attributfeldstart
; -------------------------------
; in Y ist die Nummer des gewuenschten Textfelds aus TF_TAB
LA67D
    PHA                         ; rette Akkuinhalt

    LDA #<TF_TAB                ; setze pointer in $0F,$10 auf TextFeldTabelle A1E6
    STA TF_P                    ; Textfeld_pointer low byte
    LDA #>TF_TAB 
    STA TF_P+1                  ; Textfeld_pointer high byte

-   JSR TA18F                   ; LA651, setze Pointer ($0F) auf den Start eines Eintrages in TF_TAB
    DEY                         ; Positionszaehler fuer gewuenschtes Textfeld
    BNE -                       ; suche naechsten Eintrag
; start des gewuenschten Textfelds ist nun in (TF_P), in Y sollte nun 0 sein
    JSR TA1AD                   ; LA663, setze pointer ($11), auf den Start des Attributfelds

    PLA
    RTS

; -------------------------------
; Textfelder vorbelegen
; -------------------------------
; Die Textfelder werden mit Vorgabewerten belegt.
LA691
    TXA
    PHA
    TYA
    PHA

    LDY #$00 
    LDA (TF_P),Y                ; lade Wert aus Tabelle
    BPL .lA69E                  ; wenn nicht Textfeldende
    SEC
    BCS ++                      ; sonst gehe zurueck mit gesetztem Carry-Flag
.lA69E
    LDA (AF_P),Y                ; lade Wert aus Tabelle
    CLC                         ; loesche Carry-Flag
    BEQ ++                      ; wenn 0 fuer naechsten Textfeldeintrag gelesen wurde

; wenn der gelesene Wert den nachfolgenden Werten entspricht,
; dann schreibe ein Leerzeichen in die Textfeld_position
    LDX #LEER                   ; Leerzeichen
    CMP #$41 
    BEQ +
    CMP #$58
    BEQ +
    CMP #$5A
    BEQ +
    CMP #$4E
    BEQ +

    LDX #"0"                    ; '0' in X laden
    CMP #$39                    ; gelesener Wert = #39?
    BEQ +                       ; ja, schreibe '0' an Textfeld_position
; keine uebereinstimmung mit vorher verglichenen Werten
; dann kopiere gelesenen Wert in X, sollte #$2C fuer 'Komma' sein
    TAX
+   TXA
    STA (TF_P),Y                ; schreibe " ", "0" oder "," an Textfeld_position
    INY                         ; Index-Zaehler
    BNE .lA69E                  ; jmp

++  PLA
    TAY
    PLA
    TAX
    RTS

; -------------------------------
; Tasteneingabe
; -------------------------------
LA6C7
; register retten
    TXA
    PHA
    TYA
    PHA

    JSR TA0E7                   ; LF693, hole eine Taste aus Tastaturpuffer
    SEC
    BEQ +                       ; ist 0, wenn keine Taste gedrueckt war
    CLC 
+   STA $09                     ; zwischenspeichern
; register zurueckschreiben
    PLA
    TAY
    PLA
    TAX

    LDA $09                     ; gedrueckte Taste, oder 0
    RTS

; -------------------------------
; Zeicheneingabe mit Blinkmodus im Eingabefeld
; -------------------------------
LA6DB
; blinkmodus an
    LDA (BSPOS),Y               ; lade Zeichen unter cursor
    AND #$3F                    ; blinken modus an
    ORA #$C0
    STA (BSPOS),Y               ; zurueckschreiben

; hole Taste
-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; wenn Carry-Flag gestzt ist, wurde keien Taste gedrueckt
    PHA                         ; rette eingegebenes Zeichen

; blinkmodus aus
    LDA (BSPOS),Y               ; lade Zeichen unter cursor
    AND #$3F                    ; blinken modus aus
    ORA #$80 
    STA (BSPOS),Y               ; zurueckschreiben

    PLA                         ; hole Zeichen zurueck
    RTS

; -------------------------------
; Eingabefeld bearbeiten
; -------------------------------
LA6F3
; hole Ruecksprungadresse
    PLA
    STA $07
    PLA
    STA $08
; holt Spalte, Zeile, Textfeld
    JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +1
    STA SPALTE                  ; $0B
    JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +2
    STA ZEILE                   ; $0A
    JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +3
    STA $13                     ; Textfeldnummer
; hole neue Ruecksprungadresse
    LDA $08
    PHA
    LDA $07
    PHA

    LDY $13                     ; Textfeldnummer
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA144                   ; LA417, Berechne Bildschirmposition

    LDY #$00                    ; pointer
.lA718                          ; Taste holen und Auswertung
    JSR TA147                   ; LA6DB, Zeicheneingabe mit Blinkmodus
    STA $15                     ; gedrueckte Taste
; pruefe auf gueltige Tasten
; -------------------------------
    CMP #DEL                    ; #$14 , DELETE 
    BNE +                       ; verzweige wenn nicht DELETE, sonst
    LDA #CRSR_L                 ; lade code fuer Cursor links 
; -------------------------------
; codes fuer Feld verlassen
+   CMP #RETURN                 ; Return gedrueckt? 
    BEQ .lA7A2
    CMP #SHRETURN               ; Shift/Return gedrueckt? 
    BEQ .lA7A2
    CMP #CRSR_D                 ; Cursor runter 
    BEQ .lA7A2
    CMP #CRSR_U                 ; Cursor hoch 
    BEQ .lA7A2
; -------------------------------
; codes fuer im Feld bewegen, bzw Eingabe
    CMP #CRSR_R                 ; Cursor rechts 
    BEQ .lA783                  ; uberspringe die Eingabeueberpruefung

    CMP #CRSR_L                 ; Cursor links 
    BEQ +++                     ; A7A6

    CMP #LEER                   ; Leertaste
    BCC .lA718                  ; wenn kleiner dann hole neue Taste
    CMP #$5B                    ; 'Z'+1
    BCS .lA718                  ; groesser 'Z', dann hole neue Taste
    CMP #$41                    ; 'A'
    BCS +                       ; wenn nicht kleiner, dann weiter
    CMP #$3A                    ; ':'
    BCS .lA718                  ; wenn groesse '9', dann hole neue Taste

+   TAX                         ; Taste nach X
; -------------------------------
; Ende pruefe gueltige Taste
; -------------------------------
; vergleiche mit Vorgabewerten in Attributfeld
; pruefe auf Gueltigkeit fuer aktuelles Textfeld
; in X ist die zu ueberpruefende Taste
    LDA (AF_P),Y                ; lade Wert aus Attributfeld
    CMP #$58                    ; Feld fuer 'Code 39' Eingabe?
    BEQ ++                      ; ja, dann verzweige zu Taste uebernehmen

    CMP #$4E                    ; Feld fuer '2 aus 5' Eingabe?
    BNE +                       ; nein, dann verzweige
; sonst pruefe auf gueltige Taste fuer code 2 aus 5
    CPX #$3A                    ; groesser '9' ?
    BCS .lA718                  ; verzweige zu Taste holen
    CPX #$20                    ; Leertaste ?
    BEQ ++                      ; ja, verzweige zu Taste uebernehmen
    CPX #$30                    ; vergleiche mit '0'
    BCC .lA718                  ; kleiner, dann verzweige zu Taste holen
    BCS ++                      ; unbedingter Sprung, zu Taste uebernehmen
; fertig 2 aus 5

; pruefe auf Namen eingeben
+   CMP #$41                    ; Feldanfang fuer Diskettenname oder Etikettenname
    BNE +                       ; nein, dann verzweige
; pruefe auf gueltige Taste fuer Namen eingeben
    CPX #$41                    ; vergleiche mit 'A'
    BCS ++                      ; verzweige wenn gleich oder groesser zu Taste uebernehmen
    CPX #$20                    ; vergleiche mit 'Leer'
    BNE .lA718                  ; verzweige zu Taste holen, wenn keine gueltige Taste
    BEQ ++                      ; unbedingter Sprung zu Taste uebernehmen

; kein 'Code 39', kein 'Code 2 aus 5', und kein Namensfeld
; dann pruefe auf Leertaste oder Zahlen
+   CPX #$20                    ; Leertaste ?
    BNE +                       ; nein, dann ueberspringe
    LDX #$30                    ; lade #$30 fuer unbedingten Sprung
+   CPX #$30                    ; ueberprufe auf '0'
    BCC .lA718                  ; verzweige zu Taste holen, wenn kleine '0'
    CPX #$3A                    ; ueberpruefe auf groesser '9'
    BCS .lA718                  ; verzweige zu Taste holen wenn groesser

; Auswertung fertig, uebernehe Taste in das Textfeld
++  TXA                         ; Taste
    STA (TF_P),Y                ; schreibe in Textfeldposition

.lA783
    LDA (AF_P),Y                ; lade Wert aus Attributfeldposition
    CMP #$5A                    ; Feld fuer Zahleneingabe?
    BNE +                       ; nein, dann ueberspringe naechsten Befehl
    JSR TA129                   ; LA7B4 Eingaben in Eingabefeld uebernehmen
; blinken ausschalten
+   LDA (TF_P),Y                ; lade Wert aus Textfeld
    AND #$3F                    ; blinken aus
    ORA #$80
    STA (BSPOS),Y               ; schreibe in Bildschirmposition

-   INY                         ; erhoehe Zeiger
    LDA (AF_P),Y                ; lade naechsten Wert aus Attributfeldposition
    BEQ +                       ; 0, dann gehe zu lade Code fuer Feld wechseln
    CMP #$30                    ; kleiner '0' muss Komma sein
    BCC -                       ; verzweige wenn Komma
    JMP .lA718                  ; sonst gehe zu Taste holen

+   LDA #CRSR_D                 ; Cursor runter
; -------------------------------
; Feld verlassen
; -------------------------------
.lA7A2
    JSR TA129                   ; LA7B4 Eingaben in Eingabefeld uebernehmen
    RTS
---------------------------------
+++ LDA #CRSR_U                 ; Cursor hoch vorladen
-   DEY                         ; eine Zeichenposition zurueck
    BMI .lA7A2                  ; negativ bedeutet, es war die erste Position im Feld
                                ; Sonderbehandlung

    LDA (AF_P),Y                ; lade Wert aus Attributfeldposition
    CMP #$30                    ; pruefe auf '0'
    BCC -                       ; wenn kleiner #$30, dann "Komma", uberspringen
    JMP .lA718                  ; gehe zurueck zu Taste holen
---------------------------------
; Aktuelles Eingabefeld mit den eingegeben Werten, bzw. Vorgabewerten beschreiben
LA7B4
    PHA                         ; Akku
    TXA                         ; und Register retten
    PHA
    TYA
    PHA

    LDY #$00                    ; Zeiger
    STY $14                     ; Indikator fuer Vorgabewert '0'
-   LDA (AF_P),Y                ; lade Wert aus Attributfeldposition
    BEQ +++                     ; wenn 0, dann fertig (Attributfeldende)
    CMP #$5A                    ; pruefe auf moegliche Zahleneingabe im Textfeld
    BEQ +                       ; ja, vwerzweige
    DEC $14                     ; sonst $14 runterzaehelen
    CMP #$39                    ; pruefe auf moegliche Zahleneingabe im Textfeld
    BNE +++                     ; nein, dann fertig

+   LDA (TF_P),Y                ; lade den Wert unter dem Cursor aus dem Textfeld
    AND #$0F                    ; maskiere die oberen 4 bits
    BNE ++                      ; verzweige wenn nicht 0
    ORA #$20                    ; Leerzeichen
    LDX $14                     ; pruefe ob '0' in das Feld geschrieben werden soll
    BEQ +                       ; verzweige wenn vorher keine Zahl gefunden wurde
    ORA #$30                    ; Setze '0'
+   STA (TF_P),Y                ; schreibe entweder ein Leerzeichen, oder eine '0'
    ORA #$80                    ; 
    STA (BSPOS),Y               ; schreibe an Bildschirmposition
    CLC                         ; loesche Carry fuer kein Fehler
    BCC +                       ; unbedingter Sprung

++  DEC $14                     ; Status
+   INY                         ; setze auf naechstes Zeichen (wiederhole bis Feldende)
    BNE -

+++ PLA
    TAY
    PLA
    TAX                         ; Register
    PLA                         ; und Akku wieder holen
    RTS

; -------------------------------
; Textfelder initialisieren
; -------------------------------
LA7ED
    LDY #$01                    ; Zeiger auf erstes Textfeld
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
                                ; der naechste Befehl wiederholt einmalig das Belegen von ($11)
-   JSR TA1AD                   ; LA663, setze pointer ($11), auf das Ende des Textfelds
    JSR TA015                   ; LA691, Textfeld vorbelegen
    BCS +                       ; Alle Textfelder bearbeitet dann raus, sonst
    JSR TA18F                   ; weiter bei LA651 setze Pointer ($0F) auf den Start eines Eintrages in TF_TAB
    JMP -

+   LDY #$09                    ; Textfeldnummer, 'Anzahl Bahnen'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$01                    ; Position
    LDA #"1"                    ; 'Anzahl Bahnen' vorbelegen
    STA (TF_P),Y
    LDY #$0B                    ; Textfeldnummer, 'Anzahl Etiketten'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$03                    ; Position
    LDA #"1"                    ; 'Anzahl Etiketten' vorbelegen
    STA (TF_P),Y
    RTS

; -------------------------------
; Textfeld x an Bildschirmposition Spalte,Zeile schreiben
; -------------------------------
; x,y,n
; Holt ein Textfeld aus der Textfeldtabelle $A1E6 mit der Position n
; und beschreibt damit den Bildschirm an Position
; Spalte x, Reihe y
LA817
    PLA                         ; Ruecksprungadresse merken
    STA $07
    PLA
    STA $08

--  JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +1
    BMI +                       ; Wenn es ein negativer Wert war, dann Ende
    STA SPALTE                  ; erster Wert nach $0B (Spalte)
    JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +1
    STA ZEILE                   ; zweiter Wert nach $0A (Zeile)
    JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +1
    TAY                         ; dritter Wert nach Y (Textfeldnummer)

    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start

    JSR TA144                   ; LA417, Berechne Bildschirmposition
    LDY #$00 
-   LDA (TF_P),Y
    BMI --
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
    INY
    BNE -

+   LDA $08                     ; neue Ruecksprungadresse laden
    PHA
    LDA $07
    PHA
    RTS

; -------------------------------
; Aktualisiere Textbildschirm
; -------------------------------
LA846
    JSR TA018                 ; LA3CC, Bildschirm und Farben loeschen $CC00 - $CFFF, $D800 - $DFFF
    JSR TA18C                 ; LA485, Bildschirmmaske erstellen
    JSR TA030                 ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben

    !by $01,$02 ,$01          ; Spalte,Zeile,Textfeld
    !by $15,$02 ,$02
    !by $01,$04 ,$03
    !by $15,$04 ,$04
    !by $80

    RTS

; -------------------------------
; Beschreibe ein Textfeld in TF_TAB mit Text
; -------------------------------
LA85D ;(A090)
; hole Ruecksprungadresse nach ($07)
    PLA
    STA $07
    PLA
    STA $08

    JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +1
    TAY                         ; Textfeld Nr. nach Y
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start

    LDY #$00 

-   JSR TA0F3                   ; LA404, hole Wert aus Ruecksprungadresse +1
    BEQ .lA876                  ; wenn 0 als Ende gefunden wurde
    STA (TF_P),Y                ; schreibe nach TF_TAB
    INY
    BNE -                       ; naechster Char
.lA876
    LDA (TF_P),Y                ; Lade Wert aus aktueller Textfeldposition
    BMI +                       ; wenn #$80 dann fertig
    LDA #$20                    ; fuelle Rest im Textfeld mit Space
    STA (TF_P),Y
    INY
    BNE .lA876                  ; wiederhole bis Textfeld Ende
; neue Ruecksprungadress
+   LDA $08
    PHA
    LDA $07
    PHA
    RTS

; -------------------------------
; schreibe Text 'daten eingeben' in Bildschirm
; -------------------------------
LA888
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$17                 ; Spalte,Reihe
    !pet "    daten eingeben!     "
    !by $04,$00
    RTS

; -------------------------------
; Hexwert aus Textfeld nach Dezimal
; -------------------------------
; Diese Routine dient dazu, einen Zahlenwert aus einem Eingabefeld
; in die Speicherstellen $03,$04 zu schreiben.
; Die Eingabefelder koennen dabei 2,3 oder 4-stellig sein
; Es weredn aus 4 Feldern die unteren Nibble durch links verschieben und rotieren
; in die Speicherstelle $04,$03 geschoben
; Aus "$31,$32,$33,$34" wird $04 = 12, $03 = 34
; Aus "$20,$31" wird $04 = 01, $03 = xx

LA8A8
    LDY #$00 
--  LDA (TF_P),Y
; es wird nur das untere Nibbel gebraucht
    ASL
    ASL
    ASL
    ASL

    LDX #$04                    ; Schleifenzaehler 4 mal 
-   ASL                         ; schiebe ein bit in's carry
    ROL $03
    ROL $04
    DEX
    BNE -

    INY
    CPY #$04                    ; Schleifenzaehler fuer 4 Zahlen
    BNE --
    RTS

; -------------------------------
; Wertekombination aus zwei Eingabefeldern berechnen
; -------------------------------
; In den Speicherstellen $03 und $04 befindet sich schon
; der Wert aus einem voherigem Eingabefeld in dezimaler Form
; in Y ist die Textfeldnummer des 2. Eingabefelds
; Das Ergebniss befindet sich anschliessend in $03,$04 in dezimaler Form
LA8C0
    LDA $03                     ; lade untern Wert
    STA $05                     ; speichere nach $05
    LDA $04                     ; lade oberen Wert
    STA $06                     ; speichere nach $06

    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                   ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03
    LDA $03                     ; lade unteren Wert
    AND #$0F                    ; isoliere Einerstelle
    STA $03                     ; schreibe die Einerstelle zurueck
    LDX #$04                    ; Zaehler
; kopiert die unteren 4 bits aus $04 in die oberen bits von $03
-   LSR $04                     ; niederwertiges bit in Carry
    ROR $03                     ; Carry nach $03 oberes Bit
    DEX                         ; veringere Zaehler
    BNE -                       ; nicht 0, dann weiter

    ORA $03                     ; verknupfe die Werte vom Akku mit $03
    SED                         ; aktiviere Dezimal-Mode
    CLC                         ; loesche Carry-Flag
    ADC $05                     ; addiere den unteren Wert aus Feld 1 zum Akku
    STA $03                     ; speichere nach $03
    LDA $04                     ; lade den unteren Wert aus Feld 2
    ADC $06                     ; addiere den oberen Wert aus Feld 1
    STA $04                     ; speichere nach $04
    CLD                         ; loesche den Dezimal-Modus
    RTS



; -------------------------------
; Etikettenhoehe ueberpruefen
; -------------------------------
; Die gesamte Etikettenhoehe wird berechnet aus der Etikettenhoehe,
; und dem 'Abstand Laufrichtung', und darf 140mm nicht uebersteigen.
; Zudem muss das Ergebniss ein Teiler der Vorgabewerte sein.
LA8ED
    LDY #$05                    ; Textfeldnummer, 'Etikettenhoehe'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                   ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03
    LDA $04                     ; lade Wert aus $04
    BEQ .lA958                  ; Etikettenhoehe zu klein
    CMP #$14                    ; vergleiche mit max. Hoehe 140
    BCC ++                      ; wenn kleiner als 140 dann ok
    BNE +                       ; wenn groesser, dann Fehler 'Etikett zu hoch'
    LDA $03                     ; lade Wert aus $03
    BEQ ++                      ; Etikettenhoehe ist ok bei max 140, 14 aus $04, und 00 aus $03
; Fehler bei zu hohem Etikett
+   JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet " etiketthoehe max. 140 "
    !by normal,$00              ; Normaldarstellung und Endekennzeichnung
    SEC                         ; Setze Carry-Flag als Indikator fuer ungueltige Hoehe
    RTS
; Pruefung der Etikettenhoehe war ok, dann hier weiter
++  LDY #$06                    ; Textfeldnummer, 'Abstand Laufrichtung'
    JSR TA009                   ; LA8C0, Wertekombination aus zwei Eingabefeldern berechnen
                                ; Das Ergebniss befindet sich anschliessend in $03,$04 in dezimaler Form

; Gueltigkeitspruefung nach Vorgabewerten
; Die Gesamthoehe muss ein Teiler der 3 Vorgabewerte sein.
; 304.8  (12")
; 254.0  (10")
; 203.2  (8")
    LDA #$00 
    STA $05
    STA $06
; addiere Wertepaar1 zum Wertepaar2
--  SED                         ; Dezimalmodus aktivieren
    CLC                         ; loesche Carry-Flag
    LDA $05
    ADC $03
    STA $05
    LDA $06
    ADC $04
    STA $06
    CLD
    CMP #$31                    ; vergleiche mit max. Wert der Vorgabe
    BCS ++                      ; Hoehe ueberschritten, dann Fehler 'Etikettenhoehe pruefen'

    LDY #$00 
-   CMP LAA5F,Y                 ; Vorgabe hoeherwertiges byte
    BNE +                       ; keine Uebereinstimmung, dann ueberspringe die Pruefung des nierderwertigen byte
    LDA $05                     ; niederwertiger Wert
    CMP LAA5F+1,Y               ; Vorgabe niederwertiges byte
    BEQ +++                     ; Pruefung war ok, dann zurueck zur Hauptroutine

+   INY                         ; stelle Zeiger auf naechstes Pruefpaar
    INY
    CPY #$06 
    BNE -                       ; loop, wenn noch nict alle Pruefpaare verglichen
    BEQ --                      ; wenn mit allen Pruefpaaren verglichen, zurueck zum addieren

.lA958
++  JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet " etiketthoehe pruefen! "
    !by $04,$00

    SEC                         ; setze Carry-Flag fuer Fehler
    RTS

+++ JSR TA0B7                   ; LA888, Text 'daten eingeben' in Bildschirm schreiben
    CLC                         ; kein Fehler, loesche Carry-Flag
    RTS

; -------------------------------
; Wandle Anzahl Bahnen in Hexwert nach $16
; -------------------------------
LA97E
    LDY #$09                    ; Textfeldnummer, 'Anzahl Bahnen'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                   ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03
; in $04 liegen die Anzahl der Bahnen in zweistelliger dezimaler Schreibweise
    LDA $04                     ; lade Anzahl Bahnen in Akku
    PHA                         ; rette den Wert
    AND #$0F                    ; maskiere die Einer
    STA $04                     ; speicher die Zehner in $04
    PLA                         ; hole den Gesamtwert wieder in den Akku
; 4-fach LSR, schiebt die Zehnerstelle in das untere Nibbel
    LSR
    LSR
    LSR
    LSR

    TAY                         ; uebernehme den Wert in das Y-Register
    BEQ ++                      ; wenn die Zehner null war, dann ueberspringe den naechsten Teil

; multipliziere die Zehnerstellen mit 10
    LDA #$00 
-   CLC
    ADC #$0A 
    DEY
    BNE -
; im Akku befinden sich nun die Zehnerstellen in Hexadezimaler Form
    CLC                         ; loesche Carry-Flag
    ADC $04                     ; addiere die Einerstellenzum Akku
    BCC +                       ; es sollte kein Ueberlauf stattfinden, daher jmp 

++  LDA $04                     ; lade die Einer, wenn keine Zehner vorhanden waren
+   STA ANZ_BAHNEN_HEX          ; speichere die Anzahl der Bahnen als Hexadezimal-Wert nach $16
    RTS

; -------------------------------
; Gesamtbreite ueberpruefen
; -------------------------------
; Die Gesamtbreite wird berechnet aus der Etikettenbreite + 'Abstand seitlich'
; Dieses Ergebniss wird mit der ANzahl der Bahnen multipliziert
; Diese erechnete Gesamtbreite darf 140 mm nicht uebersteigen
LA9A7
    LDY #$07                    ; Textfeldnummer, 'Etikettenbreite'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                   ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03
    LDA $04                     ; in $04 sind die Hunderter und Zehnerstellen der Eingabe
    CMP #$21                    ; vergleiche mit 21x
    BCC ++                      ; verzweige wenn kleiner
    BNE +                       ; wenn nicht gleich 21, dann Fehler, 'Etikett max. 200'
    LDA $03
    BEQ ++
+   JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet " etikettbreite max. 200 "
    !by normal,$00
    SEC                         ; setze Carry-Flag fuer Fehler
    RTS

++  LDY #$08                    ; Textfeldnummer, 'Abstand seitlich'
    JSR TA009                   ; LA8C0, Wertekombination aus zwei Eingabefeldern berechnen
; bisher wurde die Etikettenbreite mit dem Abstand seitlich kombiniert
; in $03,$04 ist der berechnete Wert gespeichert. Z.B. 123.4 ergibt $04 = 12, $03 = 34

; speicher die Werte nach $05,$06
    LDA $03
    STA $05
    LDA $04
    STA $06

    JSR TA135                   ; LA97E, wandle Anzahl Bahnen in Hexwert nach $16
    TAY                         ; speichere die Anzahl der Bahnen in das Y-Register als Zaehler fuer Multiplikation
    BEQ +++                     ; wenn die Anzahl der Bahnen 0 war, dann Fehler 'Etikett zu schmal'

    LDA #$00 
    STA $03                     ; loesche $03
    STA $04                     ; loesche $04
; Multipliziere die Geasmtbreite mit der Anzahl Bahnen
; der Multiplikator ist in Y
-   SED                         ; setze Dezimal-Flag
    CLC                         ; loesche Carry
    LDA $05                     ; Breite+Abstand unterer Wert
    ADC $03                     ; addiere $03
    STA $03
    LDA $06                     ; Breite+Abstand oberer Wert
    ADC $04                     ; addiere $04
    STA $04
    CLD                         ; loesche Dezimal-Flag
    BCS ++                      ; wenn ein Ueberlauf war, dann Fehler 'Etikett zu breit'
    DEY                         ; Zaehler um 1 verringern
    BNE -                       ; Wiederhole, wenn nicht 0
    CMP #$00                    ; pruefe oberen Wert
    BEQ +++                     ; wenn der Wert 0 war, dann Fehler 'Etikett zu schmal'
    CMP #$20                    ; vergleiche mit 20 (dez. Wert)
    BCC +                       ; kleiner 200, ok
    BNE ++                      ; nicht kleiner oder gleich 200, dan Fehler 'Etikett zu breit'
    LDA $03                     ; wenn $04 20 war, dann pruefe noch $03
    BNE ++                      ; wenn groesser, dann Fehler 'Etikett zu breit'

+   JSR TA0B7                   ; LA888, Text 'daten eingeben' in Bildschirm schreiben
    CLC                         ; kein Fehler, loesche Carry-Flag
    RTS

; Etikett zu breit
++  JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "   etikett zu breit!   "
    !by normal,$00
    SEC
    RTS

; Etikett zu schmal
+++ JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "   etikett zu schmal   "
    !by normal,$00
    SEC
    RTS
---------------------------------
; Vorgabewerrte fuer Etikettenhoehe + Abstand Laufrichtung
LAA5F
    !by $30,$48                 ; 304.8 mm (120")
    !by $25,$40                 ; 254.0 mm (100")
    !by $20,$32                 ; 203.2 mm (80")
---------------------------------
LAA65 PHA
,AA66 JSR TA13E                 ; LAC50, Speicherbereich $9B00- $9EFF mit Leerzeichen befuellen
,AA69 PLA
,AA6A STA $03
,AA6C LDA #$18 
,AA6E STA $04
,AA70 LDA #$00 
,AA72 STA $1A
,AA74 LDA #$9B 
,AA76 STA $1B
,AA78 LDX #$03 
,AA7A ASL $03
,AA7C ROL $04
,AA7E DEX
,AA7F BNE $AA7A
,AA81 LDY #$00 
,AA83 STY ZEILE                 ; $0A
,AA85 LDX CRSR_HORHE             ; Cursor Hoehe, $18
,AA87 TXA
,AA88 PHA
,AA89 LDY ZEILE                 ; $0A
,AA8B LDA ($03),Y
,AA8D STA $06
,AA8F LDY #$08 
,AA91 STY SPALTE                ; $0B
,AA93 LDY #$00 
,AA95 LDA #$20 
,AA97 ASL $06
,AA99 BCC $AA9D
,AA9B LDA #$C0 
,AA9D LDX CRSR_BREITE            ; Cursor Breite, $17
,AA9F STA ($1A),Y
,AAA1 INY
,AAA2 DEX
,AAA3 BNE $AA9F
,AAA5 DEC SPALTE                    ; $0B
,AAA7 BNE $AA95
,AAA9 CLC
,AAAA LDA $1A
,AAAC ADC #$20 
,AAAE STA $1A
,AAB0 BCC $AAB4
,AAB2 INC $1B
,AAB4 PLA
,AAB5 TAX
,AAB6 DEX
,AAB7 BNE $AA87
,AAB9 LDY ZEILE                 ; $0A
,AABB INY
,AABC CPY #$08 
,AABE BNE $AA83
,AAC0 RTS
---------------------------------
LAAC1 LDA #$00 
,AAC3 SEC
,AAC4 SBC #$20 
,AAC6 STA $1A
,AAC8 LDA #$9B 
,AACA SBC #$00 
,AACC STA $1B
,AACE LDY #$08 
,AAD0 STY ZEILE                 ; $0A
,AAD2 LDA $1A
,AAD4 STA $03
,AAD6 LDA $1B
,AAD8 STA $04
,AADA LDY #$20 
,AADC LDA ($1A),Y
,AADE ASL
,AADF ASL
,AAE0 STA $1C
,AAE2 LDY #$08 
,AAE4 STY SPALTE                ; $0B
,AAE6 LDY #$20 
,AAE8 LDA ($03),Y
,AAEA ASL
,AAEB ASL
,AAEC BNE $AAFA
,AAEE LDX $1C
,AAF0 STA $1C
,AAF2 BEQ $AAF7
,AAF4 JSR $A10E
,AAF7 JMP $AB03
---------------------------------
,AAFA LDX $1C
,AAFC STA $1C
,AAFE BNE $AB03
,AB00 JSR $A1A1
,AB03 CLC
,AB04 LDA $03
,AB06 ADC CRSR_BREITE            ; Cursor Breite, $17
,AB08 STA $03
,AB0A BCC $AB0E
,AB0C INC $04
,AB0E DEC SPALTE                    ; $0B
,AB10 BNE $AAE6
,AB12 LDY CRSR_HORHE             ; Cursor Hoehe, $18
,AB14 CLC
,AB15 LDA $1A
,AB17 ADC #$20 
,AB19 STA $1A
,AB1B BCC $AB1F
,AB1D INC $1B
,AB1F DEY
,AB20 BNE $AB14
,AB22 DEC ZEILE                 ; $0A
,AB24 BNE $AAD2
,AB26 RTS
---------------------------------
LAB27 TYA
-   CLC
,AB29 ADC #$20 
,AB2B DEX
,AB2C BNE -
,AB2E TAY
,AB2F RTS

; -------------------------------
; substrahiere X von Y
; -------------------------------
LAB30
-   DEY
    DEX
    BNE -
    RTS

; -------------------------------
; addiere X zu Y
; -------------------------------
LAB35
-   INY
    DEX
    BNE -
    RTS
---------------------------------
LAB3A LDY #$20 
,AB3C LDX CRSR_HORHE             ; Cursor Hoehe, $18
,AB3E JSR $A093                 ; LAB27
,AB41 LDA ($03),Y
,AB43 ASL
,AB44 ASL
,AB45 BNE $AB48
,AB47 RTS
---------------------------------
,AB48 LDX CRSR_BREITE            ; Cursor Breite, $17
,AB4A JSR TA126                 ; LAB30, subtrahiere X von Y
,AB4D LDA ($03),Y
,AB4F ASL
,AB50 ASL
,AB51 BEQ $AB54
,AB53 RTS
---------------------------------
,AB54 LDX CRSR_BREITE            ; Cursor Breite, $17
,AB56 JSR TA1B9                 ; LAB35, addiere X zu Y
,AB59 JSR $A07B
,AB5C RTS
---------------------------------
LAB5D TYA
,AB5E PHA
,AB5F JSR $A081
,AB62 DEY
,AB63 JSR $A081
,AB66 TYA
,AB67 SEC
,AB68 SBC #$20 
,AB6A TAY
,AB6B JSR $A081
,AB6E INY
,AB6F JSR $A081
,AB72 PLA
,AB73 TAY
,AB74 RTS
---------------------------------
LAB75 LDA ($03),Y
,AB77 ASL
,AB78 ASL
,AB79 BNE $AB7C
,AB7B RTS
---------------------------------
,AB7C LDA #$FF 
,AB7E STA ($03),Y
,AB80 RTS
---------------------------------
LAB81 LDY #$20 
,AB83 LDX CRSR_HORHE             ; Cursor Hoehe, $18
,AB85 JSR $A093                 ; LAB27
,AB88 LDA ($03),Y
,AB8A ASL
,AB8B ASL
,AB8C BEQ $AB8F
,AB8E RTS
---------------------------------
,AB8F LDX CRSR_BREITE            ; Cursor Breite, $17
,AB91 JSR TA162                 ; LAB30, subtrahiere X von Y
,AB94 LDA ($03),Y
,AB96 ASL
,AB97 ASL
,AB98 BNE $AB9B
,AB9A RTS
---------------------------------
,AB9B LDX CRSR_BREITE            ; Cursor Breite, $17
,AB9D JSR TA1B9                  ; LAB35, addiere X zu Y
,ABA0 JSR $A07B
,ABA3 RTS
---------------------------------
LABA4 DEY
,ABA5 JSR $A105
,ABA8 INY
,ABA9 INY
,ABAA JSR $A105
,ABAD DEY
,ABAE RTS
---------------------------------
LABAF JSR $A096
,ABB2 JSR $A105
,ABB5 LDX #$02 
,ABB7 JSR $A093                 ; LAB27
,ABBA JSR $A105
,ABBD JSR $A096
,ABC0 RTS
---------------------------------
LABC1 JSR $A108
,ABC4 JSR $A19B
,ABC7 RTS
---------------------------------
LABC8 TYA
,ABC9 SEC
,ABCA SBC #$20 
,ABCC TAY
,ABCD RTS
---------------------------------
LABCE INY
,ABCF JSR $A186
,ABD2 LDX #$01 
,ABD4 JSR $A093                 ; LAB27
,ABD7 DEY
,ABD8 JSR $A186
,ABDB JSR $A096
,ABDE DEY
,ABDF JSR $A186
,ABE2 JSR $A096
,ABE5 INY
,ABE6 JSR $A186
,ABE9 RTS
---------------------------------
LABEA TYA
,ABEB PHA
,ABEC LDY #$00 
,ABEE LDX CRSR_HORHE             ; Cursor Hoehe, $18
,ABF0 DEX
,ABF1 BEQ $ABFA
,ABF3 INY
,ABF4 INY
,ABF5 INY
,ABF6 INY
,ABF7 DEX
,ABF8 BNE $ABF3
,ABFA LDX CRSR_BREITE            ; Cursor Breite, $17
,ABFC DEX
,ABFD BEQ $AC03
,ABFF INY
,AC00 DEX
,AC01 BNE $ABFF
,AC03 LDA $AC27,Y
,AC06 TAX
,AC07 PLA
,AC08 TAY
,AC09 DEX
,AC0A BPL $AC0D
,AC0C RTS
---------------------------------
,AC0D BNE $AC12
,AC0F JMP $A105
---------------------------------
,AC12 DEX
,AC13 BNE $AC18
,AC15 JMP $A108
---------------------------------
,AC18 DEX
,AC19 BNE $AC1E
,AC1B JMP $A19B
---------------------------------
,AC1E DEX
,AC1F BNE $AC24
,AC21 JMP $A186
---------------------------------
,AC24 JMP TA066                 ; LABCE
---------------------------------
,AC27 !by $00,$01,$01,$02,$01,$01,$01,$02
,AC2F !by $01,$01,$04,$04,$03,$03,$04,$05

; -------------------------------
; Loesche Speicherbereich $0400 - $83FF
; -------------------------------
LAC37
    LDA #$00                    ; Start low byte
    STA $03
    LDA #$04                    ; Start high byre
    STA $04
    LDX #$80                    ; Zaehler high byte
    LDY #$00                    ; Zaehler low byte 
    LDA #$00                    ; Wert laden
-   STA ($03),Y                 ; in Speicher schreiben
    INY
    BNE -
    INC $04                     ; naechste Seite
    DEX
    BNE -                       ; nicht fertig
    RTS

; -------------------------------
; Fuelle Speicherbereich $9B00 - $9EFF mit #$20
; -------------------------------
LAC50
    LDX #$00 
    LDA #$20 
-   STA $9B00,X
    STA $9C00,X
    STA $9D00,X
    STA $9E00,X
    INX
    BNE -
    RTS

; -------------------------------
; Wert in DPI umrechnen
; -------------------------------
; In den Speicherstellen $04,$03 steht der Wert fuer die Berechnung
; hier wird der dezimale Wert aus $04,$03 in DPI umgerechnet (x / 25.4 * 72)
; anschliessend befindet sich dieser Wert in Hex-Form in den Speichestellen $06,$05
LAC64
; loesche Speicherstellen
    LDA #$00 
    STA $1C                     ; Zwischenspeicher
    STA $05
    STA $06

    SED                         ; schalte Dezimalmodus an
-   INC $05
    BNE +
    INC $06

+   SEC
    LDA $1C                     ; Zwischenspeicher
    SBC #$53 
    STA $1C                     ; Zwischenspeicher

    LDA $03                     ; Wert (dez.) unterer Wert
    SBC #$03 
    STA $03
    LDA $04                     ; Werte (dez.) oberer Wert
    SBC #$00 
    STA $04
    BCS -

    CLD                         ; schalt Dezimalmodus aus
    LDX $03
    BNE +
    DEC $04
+   DEC $03
    RTS

; -------------------------------
; Berechne die Anzahl der 8x8 Pixel-Felder
; -------------------------------
; hier werden aus den Angaben zur Hoehe und Breite des Etiketts
; die darzustellende Groesse des Etiketts auf dem Bildschirm
; in 8x8 Pixel-Feldern berechnet.
; Die Werte stehen anschliessend in Y=$1D, und X=$1E

LAC92
    LDY #$05                    ; Textfeldnummer, 'Etikettenhoehe'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                   ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03

; Etikettenhoehe in $04,$03 in dezimaler Schreibweise
    JSR TA0D5                   ; LAC64, Wert in $03,$04 in DPI umrechnen
                                ; anschliessend befindet sich dieser Wert in Hex-Form in den Speichestellen $06,$05
; Wert durch 8 teilen
    LDX #$03 
-   LSR $06
    ROR $05
    DEX
    BNE -
; Anzahl Felder in $05
    LDA $05
    STA ET_BYTEY                ; Als Hoehe speichern
    LDY #$07                    ; Textfeldnummer, 'Etikettenbreite'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                   ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03

; Etiekettenbreite in $04,$03 in dezimaler Schreibweise
    JSR TA0D5                   ; LAC64, Wert in $03,$04 in DPI umrechnen
; Wert durch 8 teilen
    LDX #$03 
-   LSR $06
    ROR $05
    DEX
    BNE -
; Anzahl Felder in $05
    LDA $05
    STA ET_BYTEX                ; Als Breite speichern
    RTS
---------------------------------
LACC3 LDA #$00 
,ACC5 STA $03
,ACC7 LDA #>BSSTART             ; Bildschirmposition High byte
,ACC9 STA $04
,ACCB SEC
,ACCC LDA ET_BYTEY
,ACCE SBC $1F
,ACD0 STA FILE_VEC
,ACD2 BEQ $ACD6
,ACD4 BCS $ACD8

,ACD6 LDA #$00 
,ACD8 CMP #$19 

,ACDA BCC $ACDE
,ACDC LDA #$19 
,ACDE STA ZEILE                 ; $0A
,ACE0 DEC FILE_VEC
,ACE2 SEC
,ACE3 LDA ET_BYTEX
,ACE5 SBC $20
,ACE7 STA FILE_VEC+1
,ACE9 BEQ $ACED
,ACEB BCS $ACEF
,ACED LDA #$00 
,ACEF CMP #$28 
,ACF1 BCC $ACF5
,ACF3 LDA #$28 
,ACF5 STA SPALTE                ; $0B
,ACF7 DEC FILE_VEC+1
,ACF9 SEC
,ACFA LDA $4F
,ACFC PHA
,ACFD SBC $1F
,ACFF BEQ $AD03
,AD01 BCS $AD05
,AD03 LDA #$00 
,AD05 CMP #$19 
,AD07 BCC $AD0B
,AD09 LDA #$19 
,AD0B STA $06
,AD0D SEC
,AD0E LDA $4E
,AD10 SBC $20
,AD12 BEQ $AD16
,AD14 BCS $AD18
,AD16 LDA #$00 
,AD18 CMP #$28 
,AD1A BCC $AD1E
,AD1C LDA #$28 
,AD1E STA $05
,AD20 CLC
,AD21 PLA
,AD22 ADC $51
,AD24 SEC
,AD25 SBC $1F
,AD27 BEQ $AD2B
,AD29 BCS $AD2D
,AD2B LDA #$00 
,AD2D CMP #$19 
,AD2F BCC $AD33
,AD31 LDA #$19 
,AD33 STA $27
,AD35 CLC
,AD36 LDA $4E
,AD38 ADC $50
,AD3A SEC
,AD3B SBC $20
,AD3D BEQ $AD41
,AD3F BCS $AD43
,AD41 LDA #$00 
,AD43 CMP #$28 
,AD45 BCC $AD49
,AD47 LDA #$28 
,AD49 STA $26
,AD4B SEC
,AD4C LDA POS_Y                 ; $24
,AD4E SBC $1F
,AD50 STA $31
,AD52 CLC
,AD53 ADC $4A
,AD55 STA $39
,AD57 SEC
,AD58 LDA POS_X                 ; $23
,AD5A SBC $20
,AD5C STA $32
,AD5E CLC
,AD5F ADC $49
,AD61 STA $3A
,AD63 LDX #$00 
,AD65 LDY #$00 
,AD67 LDA #$00 
,AD69 CPY SPALTE                    ; $0B
,AD6B BCS $ADAF
,AD6D CPX ZEILE                     ; $0A
,AD6F BCS $ADAF
,AD71 LDA #$01 
,AD73 CPX $31
,AD75 BCC $AD83
,AD77 CPX $39
,AD79 BCS $AD83
,AD7B CPY $32
,AD7D BCC $AD83
,AD7F CPY $3A
,AD81 BCC $ADAF
,AD83 LDA #$72 
,AD85 CPY FILE_VEC+1
,AD87 BEQ $ADAD
,AD89 CPX FILE_VEC
,AD8B BEQ $ADAD
,AD8D CPY #$00 
,AD8F BNE $AD95
,AD91 CPY $20
,AD93 BEQ $ADAD
,AD95 CPX #$00 
,AD97 BNE $AD9D
,AD99 CPX $1F
,AD9B BEQ $ADAD
,AD9D CPY $05
,AD9F BCC $ADAF
,ADA1 CPX $06
,ADA3 BCC $ADAF
,ADA5 CPY $26
,ADA7 BCS $ADAF
,ADA9 CPX $27
,ADAB BCS $ADAF
,ADAD LDA #$75 
,ADAF STA ($03),Y
,ADB1 INY
,ADB2 CPY #$28 
,ADB4 BNE $AD67
,ADB6 LDY #$00 
,ADB8 CLC
,ADB9 LDA $03
,ADBB ADC #$28 
,ADBD STA $03
,ADBF BCC $ADC3
,ADC1 INC $04
,ADC3 INX
,ADC4 CPX #$19 
,ADC6 BNE $AD67
,ADC8 RTS

; -------------------------------
; schalte auf Bitmap Mode
; -------------------------------
LADC9
    LDA VIC_ctrl_reg1           ; $D011, Control register 1
    ORA #$20                    ; %0010 0000 setze bit 5
    AND #$BF                    ; %1011 1111 loesche bit 6
    STA VIC_ctrl_reg1           ; $D011, Control register 1

    LDA VIC_mem_pnt             ; $D018, Memory pointers
    AND #$F0                    ; %1111 0000 loesche bits 0 - 3
    ORA #$08                    ; %0000 1000 setze bit 3
    STA VIC_mem_pnt             ; $D018, Memory pointers
    RTS

; -------------------------------
; schalte auf Text Mode
; -------------------------------
LADDE
    LDA VIC_ctrl_reg1           ; $D011, Control register 1
    AND #$DF                    ; $1101 1111 loesche bit 5
    ORA #$40                    ; %0100 0000 setze bit 6
    STA VIC_ctrl_reg1           ; $D011, Control register 1

    LDA VIC_mem_pnt             ; $D018, Memory pointers
    AND #$F0                    ; %1111 0000 loesche bits 0 - 3
    ORA #$02                    ; %0000 0010 setze bit 1
    STA VIC_mem_pnt             ; $D018, Memory pointers
    RTS
---------------------------------
LADF3 LDA #$00 
,ADF5 STA $1C
,ADF7 TXA
,ADF8 LDX #$03 
,ADFA ASL
,ADFB ROL $1C
,ADFD DEX
,ADFE BNE $ADFA
,AE00 CLC
,AE01 ADC #$00 
,AE03 STA $05
,AE05 LDA $1C
,AE07 ADC #$04 
,AE09 STA $06
,AE0B TYA
,AE0C BNE $AE0F
,AE0E RTS
---------------------------------
,AE0F CLC
,AE10 LDA $05
,AE12 ADC #$80 
,AE14 STA $05
,AE16 LDA $06
,AE18 ADC #$02 
,AE1A STA $06
,AE1C DEY
,AE1D BNE $AE0F
,AE1F RTS
---------------------------------
; -------------------------------
; Grafikbildschirm aktualisieren
; -------------------------------
LAE20 LDX $20
,AE22 LDY $1F
,AE24 JSR TA042                 ; LADF3
,AE27 LDA #$19 
,AE29 STA ZEILE                 ; $0A
,AE2B LDA #$00 
,AE2D STA $03
,AE2F LDA #$E0 
,AE31 STA $04
,AE33 LDY #$00 
,AE35 LDA ($05),Y
,AE37 STA ($03),Y
,AE39 INY
,AE3A CPY #$A0 
,AE3C BNE $AE35
,AE3E CLC
,AE3F LDA $03
,AE41 ADC #$A0 
,AE43 STA $03
,AE45 BCC $AE49
,AE47 INC $04
,AE49 CLC
,AE4A LDA $05
,AE4C ADC #$A0 
,AE4E STA $05
,AE50 BCC $AE54
,AE52 INC $06
,AE54 LDY #$00 
,AE56 LDA ($05),Y
,AE58 STA ($03),Y
,AE5A INY
,AE5B CPY #$A0 
,AE5D BNE $AE56
,AE5F CLC
,AE60 LDA $03
,AE62 ADC #$A0 
,AE64 STA $03
,AE66 BCC $AE6A
,AE68 INC $04
,AE6A CLC
,AE6B LDA $05
,AE6D ADC #$E0 
,AE6F STA $05
,AE71 LDA $06
,AE73 ADC #$01 
,AE75 STA $06
,AE77 DEC ZEILE                 ; $0A
,AE79 BNE $AE33
,AE7B RTS
---------------------------------
LAE7C LDA POS_X                 ; $23
,AE7E SEC
,AE7F SBC $20
,AE81 BCS $AE84
,AE83 RTS
---------------------------------
,AE84 CMP #$28 
,AE86 BCS $AE83
,AE88 TAX
,AE89 LDA POS_Y                 ; $24
,AE8B SEC
,AE8C SBC $1F
,AE8E BCS $AE91
,AE90 RTS
---------------------------------
,AE91 CMP #$19 
,AE93 BCS $AE90
,AE95 TAY
,AE96 CLC
,AE97 TXA
,AE98 ADC #$00 
,AE9A STA $03
,AE9C LDA #$00 
,AE9E ADC #>BSSTART               ; Bildschirmposition High byte
,AEA0 STA $04
,AEA2 LDA #$00 
,AEA4 STA $1C
,AEA6 TXA
,AEA7 LDX #$03 
,AEA9 ASL
,AEAA ROL $1C
,AEAC DEX
,AEAD BNE $AEA9
,AEAF CLC
,AEB0 ADC #$00 
,AEB2 STA $05
,AEB4 LDA $1C
,AEB6 ADC #$E0 
,AEB8 STA $06
,AEBA TYA
,AEBB BNE $AEBE
,AEBD RTS
---------------------------------
,AEBE CLC
,AEBF LDA $03
,AEC1 ADC #$28 
,AEC3 STA $03
,AEC5 BCC $AEC9
,AEC7 INC $04
,AEC9 CLC
,AECA LDA $05
,AECC ADC #$40 
,AECE STA $05
,AED0 LDA $06
,AED2 ADC #$01 
,AED4 STA $06
,AED6 DEY
,AED7 BNE $AEBE
,AED9 RTS

; -------------------------------
; Berechne gesamte Cursorbreite/hoehe
; -------------------------------
LAEDA
    LDA CRSR_BREITE             ; Cursor Breite, $17
    LDX $22                     ; Wert aus Tabelle bei .lB0E9
    BEQ ++                      ; verzweige wenn nichts zu tun ist
    BPL +                       ; wenn positiv, dann mit 2 multiplizieren
                                ; sonst multopliziere mit 4
    ASL                         ; x 2
+   ASL                         ; x 2
++  TAX                         ; gesamte Breite nach X

    LDA CRSR_HORHE              ; Cursor Hoehe, $18
    LDY $21                     ; Wert aus Tabelle bei .lB0E9
    BEQ ++                      ; verzweige wenn nichts zu tun ist
    BPL +                       ; wenn positiv, dann mit 2 multiplizieren
                                ; sonst multopliziere mit 4
    ASL                         ; x 2
+   ASL                         ; x 2
++  TAY                         ; gesamte Hoehe nach Y
    RTS
---------------------------------
LAEF1 LDA #$28 
,AEF3 STA $25
,AEF5 DEC $25
,AEF7 BNE $AEFB
,AEF9 SEC
,AEFA RTS
---------------------------------
,AEFB LDA POS_X                 ; $23
,AEFD BPL $AF04
,AEFF INC POS_X                 ; $23
,AF01 JMP $AEF5
---------------------------------
,AF04 SEC
,AF05 SBC $20
,AF07 BCS $AF12
,AF09 LDA $20
,AF0B SBC #$03 
,AF0D STA $20
,AF0F JMP $AF46
---------------------------------
,AF12 LDA POS_Y                 ; $24
,AF14 BPL $AF1B
,AF16 INC POS_Y                 ; $24
,AF18 JMP $AEF5
---------------------------------
,AF1B SEC
,AF1C SBC $1F
,AF1E BCS $AF29
,AF20 LDA $1F
,AF22 SBC #$03 
,AF24 STA $1F
,AF26 JMP $AF46
---------------------------------
,AF29 LDA $49
,AF2B CLC
,AF2C ADC POS_X                 ; $23
,AF2E CMP ET_BYTEX
,AF30 BEQ $AF39
,AF32 BCC $AF39
,AF34 DEC POS_X                 ; $23
,AF36 JMP $AEF5
---------------------------------
,AF39 SEC
,AF3A SBC $20
,AF3C CMP #$29 
,AF3E BCC $AF53
,AF40 LDA $20
,AF42 ADC #$03 
,AF44 STA $20
,AF46 BIT $4C
,AF48 BMI $AF50
,AF4A JSR TA04E                 ; LACC3
,AF4D JSR TA0B1                 ; LAE20, Grafikbildschirm aktualisieren
,AF50 JMP $AEF5
---------------------------------
,AF53 LDA $4A
,AF55 CLC
,AF56 ADC POS_Y                 ; $24
,AF58 CMP ET_BYTEY
,AF5A BEQ $AF63
,AF5C BCC $AF63
,AF5E DEC POS_Y                 ; $24
,AF60 JMP $AEF5
---------------------------------
,AF63 SEC
,AF64 SBC $1F
,AF66 CMP #$1A 
,AF68 BCC $AF73
,AF6A LDA $1F
,AF6C ADC #$03 
,AF6E STA $1F
,AF70 JMP $AF46
---------------------------------
,AF73 CLC
,AF74 RTS
---------------------------------
LAF75 RTS
---------------------------------
,AF76 PHA
,AF77 JSR $A0D2
,AF7A LDA $4A
,AF7C STA ZEILE                 ; $0A
,AF7E PLA
,AF7F LDY #$00 
,AF81 STA ($03),Y
,AF83 INY
,AF84 CPY $49
,AF86 BNE $AF81
,AF88 PHA
,AF89 CLC
,AF8A LDA $03
,AF8C ADC #$28 
,AF8E STA $03
,AF90 BCC $AF94
,AF92 INC $04
,AF94 PLA
,AF95 DEC ZEILE                 ; $0A
,AF97 BNE $AF7F
,AF99 RTS
---------------------------------
; watch
;
; nicht benutzte Codeteile, eventuell fuer Erweiterungen
LAF9A
    LDA #$01 
    JMP TA045                   ; LAF75, RTS

LAF9F
    LDA #$72 
    JMP TA045                   ; LAF75, RTS

; ende nicht benutzter Codeteil

; -------------------------------
; Abfrage Schriftgroesse
; -------------------------------
LAFA4
    PHA
    JSR TA057                   ; LADDE, schalte auf Textmode

    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.) in TF_TAB
    !by $04
    !pet "schriftgroesse",$00

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm 

    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
; Maske Schriftgroesse
    !by $03,$0B                 ; Spalte,Reihe
    !pet "1.stelle - schriftbreite",$40
    !by $03,$0D                 
    !pet "2.stelle - schrifthoehe",$40
    !by $03,$0F
    !pet "schriftgroesse",$2F,$40
    !by $09,$17 
    !pet "schriftgroesse waehlen"
    !by $00
---------------------------------
.lB021
    LDA #rot                    ; #$06
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $14,$0F,$0A             ; Spalte,Zeile,Textfeld (Schriftgroesse)
    !by $80                     ; Ende

    LDA #normal                 ; Normal 
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

-   JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $14,$0F,$0A             ; Schriftgroesse

    CMP #CRSR_U                 ; Cursor hoch 
    BEQ -
    LDY #$0A                    ; Textfeldnummer, 'Schriftgroesse'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                   ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03

    LDA $04                     ; lade Schriftgroesse (dez.)
    LSR                         ; separiere oberes Nibbel
    LSR
    LSR
    LSR

,B04A JSR $A099                 ; LB0CD,
    BCS +                     ; Fehler, dann  'Schriftgroesse pruefen'
    STY CRSR_BREITE            ; Cursor Breite, $17
,B051 STX $22

    LDA $04                   ; lade Schriftgroesse (dez.)
    AND #$0F                  ; maskiere die oberen bits

,B057 JSR $A099                 ; LB0CD
    BCS +                     ; Fehler, dann 'Schriftgroesse pruefen'
    STY CRSR_HORHE             ; Cursor Hoehe, $18
,B05E STX $21

    JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
,B063 STY $4A
,B065 STX $49
,B067 DEC $4C
,B069 JSR TA021                 ; LAEF1
,B06C INC $4C
,B06E BCS ++                    ; Fehler 'Schrift fuer Etikett zu gross'

; kurze Verzoegerung mit Blinkczaehler?
    LDA #$20                    ; Wert fuer Zaehler
    STA $02                     ; Blinkzaehler
-   LDA $02                     ; wird im IRQ herunter gezaehlt
    BNE -

    JSR TA0EA                 ; LADC9, schalte auf Bitmap Mode
,B07B JSR TA04E                 ; LACC3
    JSR TA0B1                 ; LAE20, Grafikbildschirm aktualisieren

    PLA
    RTS

; Fehler Schriftgroesse pruefen
+   JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $09,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "schriftgroesse pruefen"
    !by $04,$00
    JMP .lB021
    
; Fehler Schrift zu gross
++  JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $05,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "schrift fuer etikett zu gross!"
    !by $04,$00
    JMP .lB021

; -------------------------------
;
; -------------------------------
LB0CD
; im Akku ist die eingegebene Ziffer
    BNE +
    SEC                         ; bei 0 setze Carry-Flag  fuer Fehler
    RTS
---------------------------------
+   CMP #$09 
    BCC +                       ; kleiner 9, dann weiter
    RTS                         ; sonst zurueck mit gesetztem Carry-Flag fuer Fehler
---------------------------------
+   TAX                         ; Eingabe als Zeiger
    LDA .lB0E1-1,X
    TAY
    LDA .lB0E9-1,X
    TAX
    CLC
    RTS

; Tabelle fuer Schriftgroessen
; Schriftgroessen sind: 1,2, 3, 4, 5, 6, 7, 8
; in Bildschirmpunkten: 8,16,24,32,48,64,96,128
.lB0E1 !by $01,$02,$03,$04,$03,$04,$03,$04
; indikator zur Verarbeitung der oberen Werte
.lB0E9 !by $00,$00,$00,$00,$01,$01,$80,$80
---------------------------------
LB0F1 LDX INVERS                ; $2D
,B0F3 BEQ $B0FB
,B0F5 BCC $B0FA
,B0F7 CLC
,B0F8 BCC $B0FB
,B0FA SEC
,B0FB ROL $28
,B0FD LDX $29
,B0FF TXA
,B100 AND #$F8 
,B102 TAY
,B103 INX
,B104 STX $29
,B106 TXA
,B107 AND #$07 
,B109 BEQ $B10D
,B10B CLC
,B10C RTS
---------------------------------
,B10D LDA $28
,B10F STA ($03),Y
,B111 STA ($05),Y
,B113 LDA CRSR_BREITE            ; Cursor Breite, $17
,B115 LDX $22
,B117 BEQ $B11D
,B119 BPL $B11C
,B11B ASL
,B11C ASL
,B11D ASL
,B11E ASL
,B11F ASL
,B120 CMP $29
,B122 BEQ $B126
,B124 CLC
,B125 RTS
---------------------------------
,B126 LDA #$00 
,B128 STA $29
,B12A INC $03
,B12C BNE $B130
,B12E INC $04
,B130 INC $05
,B132 BNE $B136
,B134 INC $06
,B136 LDX $2A
,B138 INX
,B139 STX $2A
,B13B TXA
,B13C AND #$07 
,B13E BNE $B15A
,B140 CLC
,B141 LDA $03
,B143 ADC #$38 
,B145 STA $03
,B147 LDA $04
,B149 ADC #$01 
,B14B STA $04
,B14D CLC
,B14E LDA $05
,B150 ADC #$78 
,B152 STA $05
,B154 LDA $06
,B156 ADC #$02 
,B158 STA $06
,B15A LDA CRSR_HORHE             ; Cursor Hoehe, $18
,B15C LDX $21
,B15E BEQ $B164
,B160 BPL $B163
,B162 ASL
,B163 ASL
,B164 ASL
,B165 ASL
,B166 ASL
,B167 CMP $2A
,B169 SEC
,B16A RTS

; -------------------------------
; Menue *etikettentext*
; -------------------------------
LB16B
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $03
    !pet "*etikettentext*",$00

    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $04
    !pet " ",$00

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$09                 ; Spalte,Reihe
    !pet "etikettenname",$2F,$40
    !by $03,$0B
    !pet "etikettenhoehe",$2F,$40
    !by $03,$0D
    !pet "abstand laufrichtung",$2F,$40
    !by $03,$0F
    !pet "etikettenbreite",$2F,$40
    !by $03,$11
    !pet "abstand seitlich",$2F,$40
    !by $03,$13
    !pet "anzahl der bahnen",$2F,$40
    !by $20,$0B
    !pet "mm",$40
    !by $20,$0D
    !pet "mm",$40
    !by $20,$0F
    !pet "mm",$40
    !by $20,$11
    !pet "mm",$00
    JSR TA0B7                   ; LA888, Text 'daten eingeben' in Bildschirm schreiben
    LDA #rot                    ; $06 
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA030                   ; LA817, schreibe Textfeld x an Bildschirmposition Spalte,Zeile
    !by $12,$09,$02             ; 'ETIKETTENNAME'
    !by $1A,$0B,$05             ; 'ETIKETTENHOEHE'
    !by $19,$0D,$06             ; 'LAUFRICHTUNG'
    !by $1A,$0F,$07             ; 'ETIKETTENBREITE'
    !by $19,$11,$08             ; 'ABSTAND SEITLICH'
    !by $1B,$13,$09             ; 'ANZAHL BAHNEN'
    !by $80

    LDA #normal
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
; Eingabe Etikettenname
--  JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $12,$09,$02             ; 'ETIKETTENNAME'
    CMP #RETURN                 ; Return gedrueckt? 
    BNE +
    LDA F_ETIKETT               ; $38; Flag fuer Etikett gueltig
    BMI .lB2B0                  ; verzweige zum Grafikmodus, wenn ein gueltiges Etikett vorhanden ist
    RTS                         ; sonst bei RETURN zurueck zum Hauptmenue
---------------------------------
+   CMP #CRSR_U                  ; Cursor hoch
    BEQ --                      ; zurueck Eingabefeld bearbeiten
    LDA #$00 
    STA F_ETIKETT               ; $38, setze Etikett auf nicht gueltig
; Etikettenname in Anzeigefeld uebernehmen
    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $15,$02,$02             ; Spalte,Zeile,Textfeld 'ETIKETTENNAME'
    !by $80

; Eingabe Etikettenbreite
-   JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $1A,$0B,$05             ; 'ETIKETTENHOEHE'
    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    RTS                         ; bei RETURN zurueck zum Hauptmenue
---------------------------------
+   CMP #CRSR_U                 ; Cursor hoch
    BEQ --                      ; verzweige zu Etikettenname eingeben

; Eingabe Laufrichtung
--  JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $19,$0D,$06             ; 'LAUFRICHTUNG'
    CMP #RETURN                 ; Return gedrueckt? 
    BNE +
    RTS                         ; bei RETURN zurueck zum Hauptmenue
---------------------------------
+   CMP #CRSR_U                 ; Cursor hoch 
    BEQ -
    CMP #SHRETURN               ; Shift/Return gedrueckt? 
    BEQ .lB27E                  ; Shift/Return ueberspringt die Pruefung der Eingabe
    JSR TA0F0                   ; LA8ED Etikettenhoehe ueberpruefen
    BCS -                       ; nicht ok, dann zurueck zur Eingabe der Etikettenhoehe

; Eingabe Etikettenbreite
.lB27E
    JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $1A,$0F,$07             ; 'ETIKETTENBREITE'
    CMP #RETURN                 ; Return gedrueckt? 
    BNE +
    RTS
---------------------------------
+   CMP #CRSR_U                 ; Cursor hoch 
    BEQ --                      ; zurueck zur Eingabe der Laufrichtung

; Eingabe Abstand seitlich
-   JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $19,$11,$08             ; 'ABSTAND SEITLICH'
    CMP #RETURN                 ; Return gedrueckt? 
    BNE +
    RTS
---------------------------------
+   CMP #CRSR_U                 ; Cursor hoch 
    BEQ .lB27E

; Eingabe Anzahl Bahnen
    JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $1B,$13,$09             ; 'ANZAHL BAHNEN'
    CMP #RETURN                 ; Return gedrueckt? 
    BNE +
    RTS
---------------------------------
+   CMP #CRSR_U                 ; Cursor hoch 
    BEQ -
    JSR TA012                   ; LA9A7, Gesamtbreite ueberpruefen
    BCS .lB27E                  ; bei nicht korekter Breite zurueck zu Etikettenbreite eingeben
; Die gesamtzulaessige Breite wird berechnet aus ('ETIKETTENBREITE' + 'ABTAND SEITLICH') * 'ANZAHL BAHNEN'
; Der erechnete Wert darf 200 nicht ueberschreiten.
; Bei 0,0 Abstand, und einer Bahn kann die Etikettenbreite max. 200 betragen.

; kurze Verzoegerung mit Blinkczaehler?
.lB2B0
    LDA #$20                    ; Wert fuer Zaehler
    STA $02                     ; Blinkzaehler
-   LDA $02                     ; wird im IRQ herunter gezaehlt
    BNE -

    JSR TA03C                   ; LB2C9, Grafikmodus aktivieren

; kurze Verzoegerung mit Blinkczaehler?
    LDA #$20                    ; Wert fuer Zaehler
    STA $02                     ; Blinkzaehler
-   LDA $02                     ; wird im IRQ herunter gezaehlt
    BNE -

    JSR TA057                   ; LADDE, schalte auf Textmode
    DEC F_ETIKETT               ; $38
    RTS


; -------------------------------
; Grafikmodus aktivieren
; -------------------------------
LB2C9
; setze Default-Werte
    JSR TA090                   ; LA85D, beschreibe Textfeld
    !by $0A                     ; Schriftgroesse
    !pet "11",$00

    LDX #$01                    ; Vorgabewert fur Cursor Hoehe und Breite
    STX CRSR_HORHE              ; Cursor Hoehe, $18
    STX CRSR_BREITE             ; Cursor Breite, $17

    DEX                         ; x = #$00
    STX $21
    STX $22
    STX POS_Y                   ; $24
    STX POS_X                   ; $23
    STX $1F
    STX $20
    STX ZEICHENSATZ             ; $2C
    STX INVERS                  ; $2D
    STX DREHEN                  ; $2E
; Ende Default-Werte setzen
    JSR TA0EA                   ; LADC9, schalte auf Bitmap Mode
    JSR TA168                   ; LAC92, berechne die Anzahl der 8x8 Pixel-Felder
                                ; die Wete sind anschliessend in Y=$1D, X=$1E
,B2EF JSR TA04E                 ; LACC3
    JSR TA0B1                   ; LAE20, Grafikbildschirm aktualisieren
--  JSR TA0D8                   ; LAEDA, Berechne gesamte Cursorbreite/hoehe
,B2F8 STY $4A
,B2FA STX $49
,B2FC JSR TA04E                 ; LACC3

; warte auf Tastendruck
-   LDA $028E                   ; Taste aus Tastaturpuffer ???
    AND #$04                    ; teste auf RESTORE
    BEQ +                       ; nein, dann ueberspringe Funktionstastenanzeige
    JSR TA05D                   ; LF2F7, Funktionstasten Anzeige
+   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; keine Taste, dann neu pruefen
    CMP #RETURN                 ; Return gedrueckt? 
    BNE +                       ; kein RETURN, dann weiter zur Auswertung
    RTS                         ; bei RETURN zurueck zum Hauptmenue

; weiter mit Tastenauswertung
+   CMP #HOME                   ; $13 
    BEQ LB2C9                   ; Grafikmodus aktivieren
                                ; gehe zurueck in HOME Position, setze alle Attribute wieder auf Default
    JSR TA14A                   ; LB4CC, pruefe DEL
    JSR TA10B                   ; LB515, Pruefe PFEIL_L
    CMP #CRSR_R                 ; Cursor rechts 
    BNE +
    INC POS_X                   ; erhoehe Cursorposition X, $23
+   CMP #CRSR_L                 ; Cursor links 
    BNE +
    DEC POS_X                   ; veringere Cursorposition X, $23
+   CMP #CRSR_D                 ; Cursor runter 
    BNE +
    INC POS_Y                   ; erhoehe Cursorposition Y, $24
+   CMP #CRSR_U                 ; Cursor hoch 
    BNE +
    DEC POS_Y                   ; veringere CursorpositionY, $24
+   JSR TA051                   ; LB34A F-Tastenabfrage
    JSR TA039                 ; LB394
    JSR TA0D8                   ; LAEDA, Berechne gesamte Cursorbreite/hoehe
    STY $4A
    STX $49
    JSR TA021                 ; LAEF1
    BCS LB2C9                   ; Grafikmodus aktivieren
    JMP --

; -------------------------------
; F-Tastenabfrage
; -------------------------------
LB34A
    TAX
    CMP #F8                     ; $8C 
    BNE +
    JMP TA0DE                   ; LF24A, Abfrage Grafikbildschirm loeschen
---------------------------------
+   CMP #F1                     ; $85 
    BNE +
    JMP TA04B                   ; LAFA4, Schriftgroessenveraenderung
---------------------------------
+   CMP #F6                     ; $8B 
    BNE +
    JMP TA171                   ; LE91D, Grafik-Sondersymbole
---------------------------------
+   CMP #F4                     ; $8A 
    BNE +
    JMP $A09F                   ; Balkencodeauswahl
---------------------------------
+   CMP #F2                     ; $89 
    BNE +
    JMP TA0DB                   ; LEE70, Eingabe Etikett Zaehler
---------------------------------
; Schrift-, Grafikumschaltung
+   CMP #F3                     ; $86 
    BNE +
    LDA ZEICHENSATZ             ; $2C
    EOR #$80 
    STA ZEICHENSATZ             ; $2C
    TXA
    RTS
---------------------------------
; Inversdarstellung (negativ)
+   CMP #F7                     ; $88 
    BNE +
    LDA INVERS                  ; $2D
    EOR #$FF 
    STA INVERS                  ; $2D
    TXA
    RTS
---------------------------------
; 90 Grad Links-Verdrehung
+   CMP #F5                     ; $87 
    BNE +
    LDA DREHEN                  ; $2E
    EOR #$FF 
    STA DREHEN                  ; $2E
    TXA
    RTS
---------------------------------
+   TXA
    RTS
; -------------------------------
; F-Tastenabfrage ENDE
; -------------------------------

---------------------------------
LB394 PHA
,B395 AND #$7F 
,B397 CMP #$20 
,B399 BCS $B39D
,B39B PLA
,B39C RTS
---------------------------------
,B39D PLA
,B39E PHA
,B39F BMI $B3A5
,B3A1 AND #$3F 
,B3A3 BPL $B3A9
,B3A5 AND #$3F 
,B3A7 ORA #$40 
,B3A9 ORA ZEICHENSATZ           ; $2C
,B3AB EOR #$80 
,B3AD JSR $A08D
,B3B0 JSR $A1BC
,B3B3 JSR $A12C
,B3B6 JSR $A08D
,B3B9 JSR $A0D2
,B3BC LDA $05
,B3BE STA $03
,B3C0 LDA $06
,B3C2 STA $04
,B3C4 LDX POS_X                 ; $23
,B3C6 LDY POS_Y                 ; $24
,B3C8 JSR TA042                 ; LADF3
,B3CB LDA #$00 
,B3CD STA $29
,B3CF STA $2A
,B3D1 STA KONTRAST
,B3D3 LDA #$00 
,B3D5 STA $26
,B3D7 LDA #$9B 
,B3D9 STA $27
,B3DB LDX DREHEN                ; $2E
,B3DD BNE $B3E2
,B3DF JMP $A159
---------------------------------
,B3E2 JMP $A0C0
---------------------------------
LB3E5 LDA $29
,B3E7 LDX $22
,B3E9 BEQ $B3EF
,B3EB BPL $B3EE
,B3ED LSR
,B3EE LSR
,B3EF TAY
,B3F0 LDA ($26),Y
,B3F2 ASL
,B3F3 JSR $A0A5
,B3F6 BCC LB3E5
,B3F8 BEQ $B41F
,B3FA LDX $21
,B3FC BEQ $B411
,B3FE DEC KONTRAST
,B400 BEQ $B411
,B402 BPL LB3E5
,B404 LDY #$01 
,B406 LDX $21
,B408 BPL $B40C
,B40A LDY #$03 
,B40C STY KONTRAST
,B40E JMP LB3E5
---------------------------------
,B411 CLC
,B412 LDA $26
,B414 ADC #$20 
,B416 STA $26
,B418 BCC $B41C
,B41A INC $27
,B41C JMP LB3E5
---------------------------------
,B41F JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
,B422 STX $1C
,B424 PLA
,B425 PHA
,B426 JSR $A1A7
,B429 BCC $B434
,B42B CLC
,B42C LDA POS_X                 ; $23
,B42E ADC $1C
,B430 STA POS_X                 ; $23
,B432 PLA
,B433 RTS
---------------------------------
,B434 LDA POS_Y                 ; $24
,B436 ADC $4A
,B438 STA POS_Y                 ; $24
,B43A PLA
,B43B RTS
---------------------------------
LB43C LDX DREHEN                ; $2E
,B43E BNE $B441
,B440 RTS
---------------------------------
,B441 PHA
,B442 LDA CRSR_BREITE            ; Cursor Breite, $17
,B444 PHA
,B445 LDA CRSR_HORHE             ; Cursor Hoehe, $18
,B447 STA CRSR_BREITE            ; Cursor Breite, $17
,B449 PLA
,B44A STA CRSR_HORHE             ; Cursor Hoehe, $18
,B44C PLA
,B44D RTS
---------------------------------
LB44E LDA $26
,B450 PHA
,B451 LDA $27
,B453 PHA
,B454 LDA $2A
,B456 LDX $21
,B458 BEQ $B45E
,B45A BPL $B45D
,B45C LSR
,B45D LSR
,B45E STA $1C
,B460 LDA CRSR_HORHE             ; Cursor Hoehe, $18
,B462 ASL
,B463 ASL
,B464 ASL
,B465 CLC
,B466 SBC $1C
,B468 TAY
,B469 LDA ($26),Y
,B46B ASL
,B46C JSR $A0A5
,B46F BCS $B496
,B471 LDX $22
,B473 BEQ $B488
,B475 DEC KONTRAST
,B477 BEQ $B488
,B479 BPL $B454
,B47B LDY #$01 
,B47D LDX $22
,B47F BPL $B483
,B481 LDY #$03 
,B483 STY KONTRAST
,B485 JMP $B454
---------------------------------
,B488 CLC
,B489 LDA $26
,B48B ADC #$20 
,B48D STA $26
,B48F BCC $B493
,B491 INC $27
,B493 JMP $B454
---------------------------------
,B496 BEQ $B4A5
,B498 LDA #$00 
,B49A STA KONTRAST
,B49C PLA
,B49D STA $27
,B49F PLA
,B4A0 STA $26
,B4A2 JMP $A0C0
---------------------------------
,B4A5 JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
,B4A8 STY $1C
,B4AA LDA POS_Y                 ; $24
,B4AC SEC
,B4AD SBC $1C
,B4AF STA POS_Y                 ; $24
,B4B1 PLA
,B4B2 PLA
,B4B3 PLA
,B4B4 RTS
---------------------------------
,B4B5 !by $DD,$A5,$B4,$B5,$A1,$B6,$AA,$A7,$00
---------------------------------
LB4BE LDX #$07 
,B4C0 CMP $B4B5,X
,B4C3 BNE $B4C7
,B4C5 CLC
,B4C6 RTS
---------------------------------
,B4C7 DEX
,B4C8 BPL $B4C0
,B4CA SEC
,B4CB RTS
---------------------------------
; -------------------------------
; Pruefe DEL, (nur im Grafikmodus)
; -------------------------------
LB4CC
    CMP #DEL                    ; $14 
    BEQ +
    RTS
---------------------------------
+   PHA
,B4D2 JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
,B4D5 STX $1C
,B4D7 LDA DREHEN                ; $2E
,B4D9 BNE $B4E5
,B4DB SEC
,B4DC LDA POS_X                 ; $23
,B4DE SBC $1C
,B4E0 STA POS_X                 ; $23
,B4E2 CLC
,B4E3 BCC $B4EE
,B4E5 STY $1C
,B4E7 CLC
,B4E8 LDA POS_Y                 ; $24
,B4EA ADC $1C
,B4EC STA POS_Y                 ; $24
,B4EE JSR TA021                 ; LAEF1
,B4F1 BCS $B513
,B4F3 JSR $A0D2
,B4F6 LDA $05
,B4F8 STA $03
,B4FA LDA $06
,B4FC STA $04
,B4FE LDX POS_X                 ; $23
,B500 LDY POS_Y                 ; $24
,B502 JSR TA042                 ; LADF3
,B505 LDA #$00 
,B507 STA $2A
,B509 STA $29
,B50B CLC
,B50C JSR $A0A5
,B50F BCC $B50B
,B511 BNE $B50B
,B513 PLA
,B514 RTS

; -------------------------------
; Pruefe PFEIL_L
; -------------------------------
LB515
    CMP #PFEIL_L                ; $5F 
    BEQ +
    RTS
---------------------------------
+   JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
,B51D STY $1C
,B51F LDA DREHEN                ; $2E
,B521 BNE $B531
,B523 LDA #$00 
,B525 STA POS_X                 ; $23
,B527 CLC
,B528 LDA POS_Y                 ; $24
,B52A ADC $1C
,B52C STA POS_Y                 ; $24
,B52E LDA #$0D 
,B530 RTS
---------------------------------
,B531 STX $1C
,B533 LDA ET_BYTEY
,B535 STA POS_Y                 ; $24
,B537 CLC
,B538 LDA POS_X                 ; $23
,B53A ADC $1C
,B53C STA POS_X                 ; $23
,B53E LDA #$0D 
,B540 RTS
---------------------------------

; -------------------------------
; sende Dateiname
; -------------------------------
; Aufruf mit $61,$6F,$F0,$F1, oder $FF im Akku
LB541
    PHA
    LDA #LWNR                   ; Laufwerksnummer
    JSR TA189                   ; LF8B6, LISTEN senden
    PLA
    JSR TA111                   ; LF964, Sekundaeradresse nach LISTEN senden
; speichere Ruecksprungadresse nach ($31)
    PLA
    STA $31
    PLA
    STA $32
; ($31) zeigt nun auf den zu ueberpruefenden Namen - 1
    LDY #$00                    ; index
-   INC $31                     ; stelle auf naechstes Zeichen
    BNE +
    INC $32

+   LDA ($31),Y                 ; lade Byte (Namensteil)
    BEQ +                       ; verzweige wenn Ende-Kennung0
    JSR TA1B0                   ; LF988, IECOUT ein Byte auf IEC-Bus
    JMP -                       ; naechstes Zeichen

; hole Ruecksprungadress zurueck auf Stapel
+   LDA $32
    PHA
    LDA $31
    PHA
    RTS                         ; zurueck
---------------------------------
; -------------------------------
; CLOSE ???
; -------------------------------
; Aufruf mit entweder #$E0, oder $E1 im Akku
LB56A PHA
,B56B LDA #LWNR                 ; Laufwerksnummer
,B56D JSR TA189                 ; LF8B6, LISTEN senden
,B570 PLA
,B571 JSR TA111                 ; LF964, Sekundaeradresse nach LISTEN senden
,B574 JSR TA120                 ; LF9A9, UNLISTEN senden
,B577 RTS
---------------------------------
LB578 LDA #LWNR                 ; Laufwerksnummer
,B57A JSR TA08A                 ; LF8B3, TALK senden
,B57D LDA #$6F                  ; Sekundaeradresse
,B57F JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden

,B582 LDY #$00 
,B584 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen

,B587 LDX $30
,B589 BNE $B5A4

,B58B CMP #$0D 
,B58D BEQ $B5A4
,B58F CPY #$02                  ; Zaehlerende erreicht?
,B591 BCS $B5A1                 ; nein, dann verzweige

,B593 AND #$0F 
,B595 ASL $2F
,B597 ASL $2F
,B599 ASL $2F
,B59B ASL $2F
,B59D ORA $2F
,B59F STA $2F
,B5A1 INY
,B5A2 BNE $B584

,B5A4 JSR TA1B3                 ; LF99A, UNTALK senden
,B5A7 LDA $2F
,B5A9 RTS

; -------------------------------
; Teste auf gueltige Etikettendisk
; -------------------------------
LB5AA
    LDA #$F0 
    JSR TA087                   ; LB541, sende Dateiname
    !pet "0:bdf",$00
    JSR TA120                   ; LF9A9, UNLISTEN senden
    JSR $A0E4                   ; LB578
    BNE +                       ; File nicht vorhanden
    LDA #LWNR                   ; Laufwerksnummer
    JSR TA08A                   ; LF8B3, TALK senden
    LDA #$60 
    JSR TA1A4                   ; LF972, Sekunsaeradresse nach TALK senden
    JSR TA054                   ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $36
    JSR TA054                   ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $37
    JSR TA1B3                   ; LF99A, UNTALK senden
    LDA #$E0 
    JSR TA0A8                   ; LB56A, CLOSE
,B5D9 JSR TA060                 ; LB64A, $0:ttt
    CLC
    RTS

; Fehler Etikettendisk nicht eingleegt
+   JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $01                     ; Diskettenname
    !pet " ",$00
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0A,$0D                 ; Spalte,Reihe
    !pet "etikettendiskette ist",$40
    !by $0C,$0F                 ; Spalte,Reihe
    !pet "nicht eingelegt!",$40
    !by $01,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "diskette einlegen und return druecken",normal,$00

-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; keine Taste
    CMP #RETURN                 ; Return gedrueckt?
    BNE -                       ; kein RETURN gedrueckt
    SEC
    RTS
---------------------------------
LB64A
    LDA #$00                    ; lade Akku mit 0
    STA STATUS                  ; loesche STATUS
    LDA #$F0 
    JSR TA087                   ; LB541, sende Dateiname
    !pet "$0:ttt",$00
    JSR TA120                   ; LF9A9, UNLISTEN senden
    LDA #LWNR                   ; Laufwerksnummer
    JSR TA08A                   ; LF8B3, TALK senden
    LDA #$60 
    JSR TA1A4                   ; LF972, Sekunsaeradresse nach TALK senden
    LDY #$01                    ; Textfeldnummer, 'Diskettenname'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
-   JSR TA054                   ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    LDX STATUS
    BEQ +
    SEC
    RTS
---------------------------------
+   CMP #$22 
,B677 BNE -
,B679 LDY #$00 
-   JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,B67E LDX STATUS
,B680 BEQ +
,B682 SEC
,B683 RTS
---------------------------------
+   STA (TF_P),Y
,B686 INY
,B687 CPY #$10 
,B689 BNE -
,B68B JSR TA1B3                 ; LF99A, UNTALK senden
,B68E LDA #$E0 
,B690 JSR TA0A8                 ; LB56A, CLOSE
,B693 CLC
,B694 RTS
---------------------------------
LB695 LDA #LWNR                 ; Laufwerksnummer
,B697 JSR TA08A                 ; LF8B3, TALK senden
,B69A LDA #$60 
,B69C JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
,B69F LDY #$04 
-   JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,B6A4 LDX STATUS
,B6A6 BEQ +
,B6A8 SEC
,B6A9 RTS
---------------------------------
+   DEY
,B6AB BNE -
,B6AD CLC
,B6AE RTS
---------------------------------
LB6AF JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,B6B2 LDX STATUS
,B6B4 BEQ +
,B6B6 SEC
,B6B7 RTS
---------------------------------
+   CMP #$00 
,B6BA BNE LB6AF
,B6BC JSR TA1B3                 ; LF99A, UNTALK senden
,B6BF CLC
,B6C0 RTS
---------------------------------
LB6C1 LDA #$00                  ; lade Akku mit 0
,B6C3 STA STATUS                ; loesche STATUS
,B6C5 LDA #$F0 
,B6C7 JSR TA087                 ; LB541, sende Dateiname
,B6CA !pet "$0:bf*",$00
,B6D1 JSR TA120                 ; LF9A9, UNLISTEN senden
,B6D4 JSR $A150                 ; LB695
,B6D7 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,B6DA JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,B6DD JSR TA02A                 ; LB6AF
,B6E0 RTS
---------------------------------
LB6E1 PHA
,B6E2 TXA
,B6E3 PHA
,B6E4 TYA
,B6E5 PHA
,B6E6 JSR $A150
,B6E9 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,B6EC CMP #$20 
,B6EE BEQ $B6E9
,B6F0 CMP #$22 
,B6F2 BEQ $B6FF
,B6F4 JSR TA1B3                 ; LF99A, UNTALK senden
,B6F7 LDA #$E0 
,B6F9 JSR TA0A8                 ; LB56A, CLOSE
,B6FC SEC
,B6FD BCS $B71B
,B6FF LDY #$00 
,B701 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,B704 LDX STATUS
,B706 BEQ $B70B
,B708 SEC
,B709 BCS $B71B
,B70B CMP #$22 
,B70D BNE $B711
,B70F LDA #$20 
,B711 STA (FILE_VEC),Y
,B713 INY
,B714 CPY #$10 
,B716 BNE $B701
,B718 JSR TA02A                 ; LB6AF
,B71B PLA
,B71C TAY
,B71D PLA
,B71E TAX
,B71F PLA
,B720 RTS
---------------------------------
LB721 LDY ET_BYTEY
,B723 LDA #$00 
,B725 STA $27
,B727 CLC
,B728 ADC ET_BYTEX
,B72A BCC $B72E
,B72C INC $27
,B72E DEY
,B72F BNE $B727
,B731 STA $26
,B733 LDY #$05 
,B735 LSR $27
,B737 ROR $26
,B739 DEY
,B73A BNE $B735
,B73C INC $26
,B73E BNE $B742
,B740 INC $27
,B742 LDA $26
,B744 CMP $36
,B746 LDA $27
,B748 SBC $37
,B74A RTS
---------------------------------
LB74B TXA
,B74C PHA
,B74D TYA
,B74E PHA
,B74F JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,B752 LDY #$00 
,B754 LDA (TF_P),Y
,B756 BMI $B75E
,B758 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,B75B INY
,B75C BNE $B754
,B75E JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,B761 PLA
,B762 TAY
,B763 PLA
,B764 TAX
,B765 RTS

; -------------------------------
; Menue *speichern*
; -------------------------------
LB766
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $04                     ; 'Untermenue'
    !pet "*speichern*",$00

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    LDA F_ETIKETT               ; $38, Etikett im Speicher?
    BNE +
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $09,$0f                 ; Spalte,Reihe
    !pet "kein gueltiges etikett",$40
    !by $0A,$11
    !pet "im arbeitsspeicher!",$00
    JMP .lBE40                  ; Ausgabe "Return druecken"
---------------------------------
+   JSR TA02D                   ; LB5AA, Teste auf gueltige Etikettendisk
    BCC +
    RTS
---------------------------------
+   JSR TA024                 ; LBD74, Directory einlesen
    LDA DIR_PLACE             ; Anzahl Dateien
    CMP #$0A                  ; 10 ?
    BCS +                     ; verzweige wenn gleich oder groesser
,B7C1 JSR $A16B
,B7C4 BCC +
; Diskette ist voll
+   JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0A,$0F               ; Spalte,Reihe
    !pet "diskette ist belegt!",$40
    !by $04,$11
    !pet "neue etikettendiskette einlegen!",$00
    JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
+   LDA #$F1 
,B80B JSR TA087                 ; LB541, sende Dateiname
,B810 !pet "0:bf",$00
,B813 LDY #$02                  ; Textfeldnummer, 'Etikettenname'
,B815 JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,B818 LDY #$00 
,B81A LDA (TF_P),Y
,B81C JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,B81F INY
,B820 CPY #$0E 
,B822 BNE $B81A
,B824 JSR TA120                 ; LF9A9, UNLISTEN senden
,B827 JSR $A0E4                 ; LB578
,B82A BEQ $B875
,B82C CMP #$63 
,B82E BEQ $B833
,B830 JMP $A07E
---------------------------------
,B833 JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,B836 !by $08,$0F               ; Spalte,Reihe
,B838 !pet "der etikettenname ist auf",$40
,B852 !by $05,$11
,B854 !pet "der diskette schon vorhanden!",$00
,B872 JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
,B875 LDA #LWNR                 ; Laufwerksnummer
,B877 JSR TA189                 ; LF8B6, LISTEN senden
,B87A JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,B87D !by $06,$0F               ; Spalte,Reihe
,B87F !pet "das etikett wird gespeichert",$00
---------------------------------
,B89C LDA #$61 
,B89E JSR TA111                 ; LF964, Sekundaeradresse nach LISTEN senden
,B8A1 LDA $26
,B8A3 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,B8A6 LDA $27
,B8A8 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,B8AB JSR $A1B6
,B8AE LDA ET_BYTEX
,B8B0 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,B8B3 LDA ET_BYTEY
,B8B5 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,B8B8 LDY #$02 
,B8BA JSR $A117
,B8BD LDY #$05 
,B8BF JSR $A117
,B8C2 INY
,B8C3 CPY #$0A 
,B8C5 BNE $B8BF
,B8C7 LDA ET_BYTEY
,B8C9 STA ZEILE                     ; $0A
,B8CB LDA #$00 
,B8CD STA $03
,B8CF LDA #$04 
,B8D1 STA $04
,B8D3 LDA ET_BYTEX
,B8D5 STA SPALTE                    ; $0B
,B8D7 LDA $03
,B8D9 PHA
,B8DA LDA $04
,B8DC PHA
,B8DD LDY #$00 
,B8DF LDA ($03),Y
,B8E1 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,B8E4 INY
,B8E5 CPY #$08 
,B8E7 BNE $B8DF
,B8E9 CLC
,B8EA LDA $03
,B8EC ADC #$08 
,B8EE STA $03
,B8F0 BCC $B8F4
,B8F2 INC $04
,B8F4 DEC SPALTE                    ; $0B
,B8F6 BNE $B8DD
,B8F8 PLA
,B8F9 STA $04
,B8FB PLA
,B8FC CLC
,B8FD ADC #$80 
,B8FF STA $03
,B901 LDA $04
,B903 ADC #$02 
,B905 STA $04
,B907 DEC ZEILE                 ; $0A
,B909 BNE $B8D3
,B90B JSR TA120                 ; LF9A9, UNLISTEN senden
,B90E LDA #$E1 
,B910 JSR TA0A8                 ; LB56A, CLOSE
,B913 SEC
,B914 LDA $36
,B916 SBC $26
,B918 STA $36
,B91A LDA $37
,B91C SBC $27
,B91E STA $37
,B920 JSR $A195
,B923 JMP TA183                 ; LBE1C, Disk Inhalt
---------------------------------
LB926 JSR TA090                 ; LA85D, beschreibe Textfeld (Nr.)
,B929 !by $04
,B92A !pet "*etikett laden*",$00

,B93A JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
,B93D JSR TA02D                 ; LB5AA Teste auf gueltige Etikettendisk
,B940 BCC $B943
,B942 RTS
---------------------------------
,B943 JSR TA024                 ; LBD74, Directory einlesen
,B946 JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
,B949 JSR TA027                 ; LBDA5, Directory anzeigen
,B94C LDA DIR_PLACE
,B94E BNE $B953
,B950 JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
,B953 JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,B956 !by $06,$17,bl_weiss      ; Spalte,Reihe,Atribut
,B959 !pet "mit zifferntaste auswaehlen!",normal,$00
---------------------------------
,B977 JSR TA11D                 ; LA6C7, Tasteneingabe
,B97A BCS $B977
,B97C CMP #RETURN               ; Return gedrueckt? 
,B97E BNE $B981
,B980 RTS
---------------------------------
,B981 CMP #$30 
,B983 BCC $B977
,B985 CMP #$3A 
,B987 BCS $B977
,B989 AND #$0F 
,B98B CMP DIR_PLACE
,B98D BCS $B977
,B98F ASL
,B990 ASL
,B991 ASL
,B992 ASL
,B993 STA FILE_VEC
,B995 LDA #$CA 
,B997 STA FILE_VEC+1
,B999 LDA #$F0 
,B99B JSR TA087                 ; LB541, sende Dateiname
,B99E !pet "bf",$00
,B9A1 LDY #$02 
,B9A3 LDA (FILE_VEC),Y
,B9A5 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,B9A8 INY
,B9A9 CPY #$10 
,B9AB BNE $B9A3
,B9AD JSR TA120                 ; LF9A9, UNLISTEN senden
,B9B0 JSR $A0E4                 ; LB578
,B9B3 BEQ $B9B6
,B9B5 RTS
---------------------------------
,B9B6 JSR TA0AB                 ; LAC37 Loesche Speicherbereich $0400 - $83FF
,B9B9 LDA #$00 
,B9BB STA F_ETIKETT             ; $38, 0 fuer kein Etikett im Speicher
,B9BD STA STATUS                ; loesche SATUS
,B9BF LDA #LWNR                 ; Laufwerksnummer
,B9C1 JSR TA08A                 ; LF8B3, TALK senden
,B9C4 LDA #$60 
,B9C6 JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
,B9C9 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,B9CC JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,B9CF JSR TA078                 ; LF207, Statusmeldung auslesen
,B9D2 STA ET_BYTEX
,B9D4 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,B9D7 STA ET_BYTEY
,B9D9 LDY #$02 
,B9DB JSR TA177                 ; LBD55, Lese Headerdaten aus File
,B9DE JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
,B9E1 JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,B9E4 !by $08,$0F               ; Spalte,Reihe
,B9E6 !pet "das etikett wird geladen",$00
---------------------------------
,B9FF LDY #$05 
,BA01 JSR $A177
,BA04 INY
,BA05 CPY #$0A 
,BA07 BNE $BA01
,BA09 LDA ET_BYTEY
,BA0B STA ZEILE                 ; $0A
,BA0D LDA #$00 
,BA0F STA $03
,BA11 LDA #$04 
,BA13 STA $04
,BA15 LDA ET_BYTEX
,BA17 STA SPALTE                ; $0B
,BA19 LDA $03
,BA1B PHA
,BA1C LDA $04
,BA1E PHA
,BA1F LDY #$00 
,BA21 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,BA24 PHA
,BA25 LDA STATUS
,BA27 AND #$BF 
,BA29 BEQ $BA2F
,BA2B PLA
,BA2C PLA
,BA2D PLA
,BA2E RTS
---------------------------------
,BA2F PLA
,BA30 STA ($03),Y
,BA32 INY
,BA33 CPY #$08 
,BA35 BNE $BA21
,BA37 CLC
,BA38 LDA $03
,BA3A ADC #$08 
,BA3C STA $03
,BA3E BCC $BA42
,BA40 INC $04
,BA42 DEC SPALTE                    ; $0B
,BA44 BNE $BA1F
,BA46 PLA
,BA47 STA $04
,BA49 PLA
,BA4A CLC
,BA4B ADC #$80 
,BA4D STA $03
,BA4F LDA $04
,BA51 ADC #$02 
,BA53 STA $04
,BA55 DEC ZEILE                 ; $0A
,BA57 BNE $BA15
,BA59 JSR TA1B3                 ; LF99A, UNTALK senden
,BA5C LDA #$E0 
,BA5E JSR TA0A8                 ; LB56A, CLOSE
,BA61 LDA #$FF 
,BA63 STA F_ETIKETT             ; $38 , #$FF fuer Etikett im Speicher
,BA65 RTS

; -------------------------------
; Etikett loeschen
; -------------------------------
LBA66 JSR TA090                 ; LA85D, beschreibe Textfeld (Nr.)
,BA69 !by $04
,BA6A !pet "*et.loeschen*",$00

,BA78 JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
,BA7B JSR TA02D                 ; LB5AA, Teste auf gueltige Etikettendisk
,BA7E BCC $BA81
,BA80 RTS
---------------------------------
,BA81 JSR TA024                 ; LBD74, Directory einlesen
,BA84 JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
,BA87 JSR TA027                 ; LBDA5, Directory anzeigen
,BA8A LDA DIR_PLACE
,BA8C BNE $BA91
,BA8E JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
,BA91 JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,BA94 !by $06,$17,bl_weiss      ; Spalte,Reihe,Atribut
,BA96 !pet "mit zifferntaste auswaehlen!",normal,$00
---------------------------------
,BAB5 JSR TA11D                 ; LA6C7, Tasteneingabe
,BAB8 BCS $BAB5
,BABA CMP #RETURN               ; Return gedrueckt? 
,BABC BNE $BABF
,BABE RTS
---------------------------------
,BABF CMP #"0"                  ; #$30 
,BAC1 BCC $BAB5
,BAC3 CMP #":"                  ; #$3A 
,BAC5 BCS $BAB5
,BAC7 AND #$0F                  ; loesche obere 4 bits
,BAC9 CMP DIR_PLACE
,BACB BCS $BAB5
,BACD ASL
,BACE ASL
,BACF ASL
,BAD0 ASL
,BAD1 STA FILE_VEC
,BAD3 LDA #$CA 
,BAD5 STA FILE_VEC+1
,BAD7 JSR $A114
,BADA BCC $BADD
,BADC RTS
---------------------------------
,BADD LDA #$F0 
,BADF JSR TA087                 ; LB541, sende Dateiname
,BAE2 !pet "0:bf",$00
,BAE7 LDY #$02 
,BAE9 LDA (FILE_VEC),Y
,BAEB JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,BAEE INY
,BAEF CPY #$10 
,BAF1 BNE $BAE9
,BAF3 JSR TA120                 ; LF9A9, UNLISTEN senden
,BAF6 JSR $A0E4                 ; LB578
,BAF9 BEQ $BAFC
,BAFB RTS
---------------------------------
,BAFC LDA #LWNR                 ; Laufwerksnummer
,BAFE JSR TA08A                 ; LF8B3, TALK senden
,BB01 JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,BB04 !by $0A,$0F               ; Spalte,Reihe
,BB06 !pet "etikett wird geloescht",$00
---------------------------------
,BB1D LDA #$60 
,BB1F JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
,BB22 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,BB25 STA $26
,BB27 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,BB2A STA $27
,BB2C JSR TA1B3                 ; LF99A, UNTALK senden
,BB2F LDA #$E0 
,BB31 JSR TA0A8                 ; LB56A, CLOSE
,BB34 LDA #$6F                  ; Sekundaeradresse
,BB36 JSR TA087                 ; LB541, sende Dateiname
,BB39 !pet "s0:bf",$00
,BB3F LDY #$02 
,BB41 LDA (FILE_VEC),Y
,BB43 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,BB46 INY
,BB47 CPY #$10 
,BB49 BNE $BB41
,BB4B JSR TA120                 ; LF9A9, UNLISTEN senden
,BB4E JSR $A0E4                 ; LB578
,BB51 CMP #$26 
,BB53 BEQ LBB68                 ; diskette ist schreibgeschuetzt
,BB55 CLC
,BB56 LDA $36
,BB58 ADC $26
,BB5A STA $36
,BB5C LDA $37
,BB5E ADC $27
,BB60 STA $37
,BB62 JSR $A195
,BB65 JMP TA183                 ; LBE1C, Disk Inhalt
---------------------------------
LBB68 JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
,BB6B JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,BB6E !by $05,$0D               ; Spalte,Reihe
,BB70 !pet "diskette ist schreibgeschuetzt",$00
,BB8F JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
LBB92 JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
,BB95 JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,BB98 !by $07,$0D               ; Spalte,Reihe
,BB9A !pet "soll wirklich das etikett",$40
,BBB4 !by $0C,$0F
,BBB6 !by $00

,BBB7 LDY #$02 
,BBB9 TYA
,BBBA PHA
,BBBB LDA (FILE_VEC),Y
,BBBD JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
,BBC0 PLA
,BBC1 TAY
,BBC2 INY
,BBC3 CPY #$10 
,BBC5 BNE $BBB9
,BBC7 JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,BBCA !by $0B,$11               ; Spalte,Reihe
,BBCC !pet "geloescht werden",$2F,$40
,BBDE !by $08,$13
,BBE0 !pet "ja   - shift + return",$40
,BBF6 !by $08,$14
,BBF8 !pet "nein - return",$40
,BC06 !by $0C,$17,bl_weiss      ; Spalte,Reihe,Atribut
,BC09 !pet "eingabe waehlen!",normal,$00 
---------------------------------
,BC1B JSR TA11D                 ; LA6C7, Tasteneingabe
,BC1E BCS $BC1B
,BC20 CMP #RETURN                    ; Return gedrueckt? 
,BC22 BNE $BC26
,BC24 SEC
,BC25 RTS
---------------------------------
,BC26 CMP #SHRETURN                    ; Shift/Return gedrueckt? 
,BC28 BNE $BC1B
,BC2A JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
,BC2D CLC
,BC2E RTS

; -------------------------------
; Menue *diskette*
; -------------------------------
LBC2F
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $04                     ; 'Untermenue'
    !pet " ",$00                ; loesche Textfeld

    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $03                     ; 'Menue'
    !pet "* diskette *",$00     ; mit '* diskette *'

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$0A                 ; Spalte,Reihe
    !pet "inhaltsverzeichnis(",bl_weiss,"1",normal,")",$40
    !by $08,$0C
    !pet "etikett speichern.(",bl_weiss,"2",normal,")",$40
    !by $08,$0E
    !pet "etikett laden.....(",bl_weiss,"3",normal,")",$40
    !by $08,$10
    !pet "etikett loeschen..(",bl_weiss,"4",normal,")",$40
    !by $08,$12
    !pet "disk einrichten...(",bl_weiss,"5",normal,")",$40
    !by $05,$17,bl_weiss      ; Spalte,Reihe,Atribut
    !pet "mit zifferntaste auswaehlen!",normal,$00

-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; warte auf Taste
    CMP #RETURN                 ; Return gedrueckt? 
    BNE +                       ; nein, dann weiter
    RTS                         ; zurueck zum Hauptmenue
---------------------------------
+   CMP #"1"                    ; '1' fuer Directory
    BNE +                       ; nein, dann weiter
    JSR TA183                   ; LBE1C, Directory anzeigen
    JMP TA0BD                   ; LBC2F, zurueck zu Menue * diskette *
---------------------------------
+   CMP #"2"                    ; '2' fuer Etikett speichern
    BNE +                       ; nein, dann weiter
    JSR TA084                   ; LB766, Etikett speichern
    JMP TA0BD                   ; LBC2F, Menue * diskette *
---------------------------------
+   CMP #"3"                    ; '3' fuer Etikett laden
    BNE +
    JSR TA0F9                   ; LB926, Menue *etikett laden*
    RTS
---------------------------------
+   CMP #"4" 
    BNE +
    JSR TA069                   ; LBA66, *et.loeschen*
    JMP TA0BD                   ; LBC2F, Menue * diskette *
---------------------------------
+   CMP #"5" 
    BNE -
    JSR TA153                   ; LE000, Menue *einrichten*
    JMP TA0BD                   ; LBC2F, Menue * diskette *
---------------------------------
LBD29 LDA #$F1 
,BD2B JSR TA087                 ; LB541, sende Dateiname
,BD2E !pet $5B,"0:bdf",$00
,BD35 JSR TA120                 ; LF9A9, UNLISTEN senden
,BD38 LDA #LWNR                 ; Laufwerksnummer
,BD3A JSR TA189                 ; LF8B6, LISTEN senden
,BD3D LDA #$61 
,BD3F JSR TA111                 ; LF964, Sekundaeradresse nach LISTEN senden
,BD42 LDA $36
,BD44 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,BD47 LDA $37
,BD49 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,BD4C JSR TA120                 ; LF9A9, UNLISTEN senden
,BD4F LDA #$E1 
,BD51 JSR TA0A8                 ; LB56A, CLOSE
,BD54 RTS

; -------------------------------
; Lese Headerdaten aus File
; -------------------------------
LBD55
; rette Register
    TXA
    PHA
    TYA
    PHA

    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$00                    ; Zaehler
-   JSR TA054                   ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    BMI +                       ; Ende bei negativem Wert
    PHA
    LDA (TF_P),Y
    ASL
    PLA
    BCS -
    STA (TF_P),Y
    INY
    BNE -

; Register zurueckholen
+   PLA
    TAY
    PLA
    TAX
    RTS

; -------------------------------
; Direcktory einlaesen
; -------------------------------
LBD74 JSR $A0BA                 ; LB6C1  ; $0:bf*
,BD77 LDY #<DIRECTORY           ; Directory Adresse in $CA00
,BD79 STY FILE_VEC               ; $33
,BD7B LDA #>DIRECTORY
,BD7D STA FILE_VEC+1             ; $34
,BD7F JSR $A14D
,BD82 STY DIR_PLACE
,BD84 BCC $BD87
,BD86 RTS
---------------------------------
,BD87 INY
,BD88 CPY #$0A 
,BD8A BNE $BD97
,BD8C LDA #$E0 
,BD8E JSR TA0A8                 ; LB56A, CLOSE
,BD91 LDY #$0A 
,BD93 STY DIR_PLACE
,BD95 BNE $BD86
,BD97 CLC
,BD98 LDA FILE_VEC
,BD9A ADC #$10 
,BD9C STA FILE_VEC
,BD9E BCC $BDA2
,BDA0 INC FILE_VEC+1
,BDA2 JMP $BD7F

; -------------------------------
; Directory anzeigen
; -------------------------------
LBDA5 LDA #$09 
,BDA7 STA ZEILE                 ; $0A
,BDA9 LDA #$0A 
,BDAB STA SPALTE                ; $0B
,BDAD LDX #$00 
,BDAF STX FILE_VEC
,BDB1 LDA #$CA 
,BDB3 STA FILE_VEC+1
,BDB5 LDA DIR_PLACE
,BDB7 BNE $BDE6
,BDB9 JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,BDBC !by $0A,$0F               ; Spalte,Reihe
,BDBE !pet "keine etiketten auf",$40
,BDD2 !by $0C,$10
,BDD4 !pet "dieser diskette!",$00
---------------------------------
,BDE5 RTS
---------------------------------
,BDE6 JSR TA144                 ; LA417, Berechne Bildschirmposition
,BDE9 LDY #$02 
,BDEB TXA
,BDEC ORA #$30 
,BDEE JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
,BDF1 LDA #$2E 
,BDF3 JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
,BDF6 LDA #$20 
,BDF8 JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
,BDFB LDA (FILE_VEC),Y
,BDFD STY $1C
,BDFF JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
,BE02 LDY $1C
,BE04 INY
,BE05 CPY #$10 
,BE07 BNE $BDFB
,BE09 CLC
,BE0A LDA FILE_VEC
,BE0C ADC #$10 
,BE0E STA FILE_VEC
,BE10 BCC $BE14
,BE12 INC FILE_VEC+1
,BE14 INC ZEILE                 ; $0A
,BE16 INX
,BE17 CPX DIR_PLACE
,BE19 BCC $BDE6
,BE1B RTS

; -------------------------------
; Disk Inhalt
; -------------------------------
LBE1C
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $04                     ; Untermenue
    !pet "*disk-inhalt*",$00

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA02D                   ; LB5AA Teste auf gueltige Etikettendisk
    BCC +                       ; verzweige wenn kein Fehler
    RTS                         ; zurueck bei Fehler
---------------------------------
+   JSR TA024                   ; LBD74, Directory einlesen
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA027                   ; LBDA5, Directory anzeigen
; Ausgabe 'Return druecken'     ; wird auch von anderen Stellen aufgerufen
.lBE40
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0c,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "return druecken!"
    !by normal,$00

-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; keine Taste
    CMP #RETURN                 ; Return gedrueckt?
    BNE -                       ; kein RETURN gedrueckt
    RTS
---------------------------------
LBE62
    !fill $C000-6-LBE62,$FF

LBFFA !word NMI_vector
LBFFC !word RESET_vector
LBFFE !word IRQ_vector

*=$D000
;
!source "source/TESA-CHAR.asm"
!source "source/TESA-DB00.asm"
; Die Zeichensatzdaten sind fuer eine Quellcodeanalyse nicht relevant

*=$E000
; -------------------------------
; Menue *einrichten*
; -------------------------------
LE000
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $04
    !pet "*einrichten*",$00

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    LDA #$6F                    ; Sekundaeradresse
    JSR TA087                   ; LB541, sende Dateiname
    !pet "i0",$00

    JSR TA120                   ; LF9A9, UNLISTEN senden
,E01F JSR $A0E4                 ; LB578
    BEQ +
    JMP .lE11B
---------------------------------
+   JSR TA060                   ; LB64A, $0:ttt
    BCC +
    JMP .lE11B
---------------------------------
+   JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm

    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $04,$0A                 ; Spalte,Reihe
    !pet "die diskette hat schon den namen",$00

    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $0C,$0C,$01             ; Spalte,Zeile,Textfeld
    !by $80

    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $02,$0E                 ; Spalte,Reihe
    !pet "wenn sie die diskette neu einrichten",$40
    !by $02,$0F
    !pet "gehen die gespeicherten daten",$40
    !by $02,$10
    !pet "verloren!",$40
    !by $02,$12
    !pet "diskette neu einrichten/",$40
    !by $05,$14
    !pet "ja   - shift + return",$40
    !by $05,$15
    !pet "nein - return",$40
    !by $0d,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "eingabe waehlen!",normal,$00

-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -
    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    RTS
---------------------------------
+   CMP #SHRETURN               ; Shift/Return gedrueckt?
    BNE -
.lE11B
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$0F                 ; Spalte,Reihe
    !pet "diskettenname/",$40
    !by $0A,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "disknamen eingeben!",$06,$00
    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $12,$0F,$01             ; Spalte,Zeile,Textfeld
    !by $80
    LDA #normal                 ; Normal
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $12,$0F,$01             ; 'Diskettenname'

    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    RTS
---------------------------------
+   CMP #CRSR_U                 ; Cursor hoch, zurueck 
    BEQ .lE11B

; kurze Verzoegerung mit Blinkczaehler?
    LDA #$20                    ; Wert fuer Zaehler
    STA $02                     ; Blinkzaehler
-   LDA $02                     ; wird im IRQ herunter gezaehlt
    BNE -

--  JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    LDA #$00
    STA STATUS                  ; STATUS loeschen
    LDA #$FF
    JSR TA087                   ; LB541, sende Dateiname
    !pet "n0:",$00

    LDY #$01                    ; Textfeldnummer, 'Diskettenname'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$00                    ; Zaehler
-   LDA (TF_P),Y                ; lade Namen
    JSR TA1B0                   ; LF988, IECOUT ein Byte auf IEC-Bus
    INY                         ; zaehle eins hoch
    CPY #$10                    ; max. 16 Zeichen
    BNE -                       ; verzweige wenn nicht
; sende ID "TS"
    LDA #","
    JSR TA1B0                   ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA #"T"
    JSR TA1B0                   ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA #"S"
    JSR TA1B0                   ; LF988, IECOUT ein Byte auf IEC-Bus
    JSR TA120                   ; LF9A9, UNLISTEN senden
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $05,$0E                 ; Spalte,Reihe
    !pet "bitte warten bis die diskette",$40
    !by $0A,$10
    !pet "neu eingerichtet ist",$00

    LDA #$6F                    ; Sekundaeradresse
    JSR TA087                   ; LB541, sende Dateiname
    !pet "i0",$00

    JSR TA120                   ; LF9A9, UNLISTEN senden
    LDA STATUS
    BNE --
    JSR $A0E4                   ; LB578
    BEQ +
    RTS
---------------------------------
; schreibe eine Datei 'bdf' mit dem Inhalt "$50,$02,$0D,$00"
+   LDA #$F1
    JSR TA087                   ; LB541, sende Dateiname
    !pet "0:bdf",$00
    JSR TA120                   ; LF9A9, UNLISTEN senden
    LDA #$61
    JSR TA087                   ; LB541, sende Dateiname
    !pet $50,$02,$0D,$00
    JSR TA120                   ; LF9A9, UNLISTEN senden
    LDA #$E1
    JSR TA0A8                   ; LB56A, CLOSE
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $07,$0F                 ; Spalte,Reihe
    !pet "die diskette ist eingerichtet!",$00
    JMP .lBE40                  ; Ausgabe "Return druecken"
                                ; und Ruecksprung
; -------------------------------
; *Druckstart*
; -------------------------------
LE238
    LDA F_ETIKETT               ; Ist ein Etikett im Speicher?
    BNE +                       ; Ja, dann weiter
; kein gueltiges Etikett
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $09,$0F                 ; Spalte,Reihe
    !pet "kein gueltiges etikett",$40
    !by $0B,$11
    !pet "im arbeitsspeicher!",$00
    JMP .lBE40                  ; Ausgabe "Return druecken"

; -------------------------------
; es ist ein gueltiges Etikett im Speicher
; dann hier weiter
+   JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by normal
    !pet "*druckstart*",$00

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$0E                 ; Spalte,Reihe
    !pet "anzahl der etiketten/",$40
    !by $05,$17
    !pet "anzahl der etiketten eingeben!",rot,$00

    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $19,$0E,$0B             ; Spalte,Zeile,Textfeld 'ANZAHL ETIKETTEN'
    !by $80

    LDA #normal                 ; Normal
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

-   JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $19,$0E,$0B             ; 'ANZAHL ETIKETTEN'

    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    RTS
---------------------------------
+   CMP #CRSR_U                  ; Cursor hoch
    BEQ -
    LDY #$0B                    ; Textfeldnummer, 'ANZAHL ETIKETTEN'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                   ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03
; Beispiel:
; Es wurden 123 Etiketten eingegeben,
; Im Feld stand nun $20,$31,$32,$33
; In $04 steht nun #$01, und in $03 steht nun #$23

; veringere Wert in $04,$03 um eins, Anzahl Etiketten
; speichere in $3A,$39
    SED                         ; behandle Dezimalwerte
    SEC
    LDA $03
    SBC #$01
    STA $39
    LDA $04
    SBC #$00
    STA $3A
    CLD                         ; schalte zurueck auf Hexwerte
    BCC -                       ; springe zurueck zur Eingabe, wenn die Anzahl der Etiketten 0 war

; kurze Verzoegerung mit Blinkczaehler?
    LDA #$20                    ; Wert fuer Zaehler
    STA $02                     ; Blinkzaehler
-   LDA $02                     ; wird im IRQ herunter gezaehlt
    BNE -

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$0B                 ; Spalte,Reihe
    !pet "ist der drucker on-line/",$40
    !by $08,$0D
    !pet "sind etiketten eingelegt/",$40
    !by $08,$10
    !pet "normaldruck....(",bl_weiss,"1",normal,")",$40
    !by $08,$12
    !pet "kontrastdruck..(",bl_weiss,"2",normal,")",$40
    !by $0C,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "druckart waehlen!",normal,$00
---------------------------------
-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -
    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    RTS
---------------------------------
+   LDX #$00
    CMP #"1"
    BEQ +
    DEX
    CMP #"2"
    BNE -
+   STX KONTRAST                ; $2B, Flag fuer Kontrastdruck
    BEQ +                       ; hier kann nur '2' gewesen sein
    RTS
---------------------------------
+   JMP TA16E                   ; LE4D8, etiketten werden gedruckt!

; -------------------------------
; *druckstart* Ende
; -------------------------------

; -------------------------------
; setze PortB auf Ausgang
; -------------------------------
LE39F
    LDA #$FF
    STA CIA2_DDRB               ; $DD03 Data Direction Port B
    LDA #$00
    STA CIA2_PRB                ; $DD01 Data Port B
    STA CIA2_PRB                ; $DD01 Data Port B
    RTS
---------------------------------
; -------------------------------
; Byte(s) an Drucker senden
; -------------------------------
LE3AD
    PHA
    LDA $45                     ; Flag fuer Druckabbruch
    BNE +                       ; Ende
-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS ++                      ; wenn kein Tastdruck erkannt wurde
    CMP #RETURN                 ; Return gedrueckt?
    BNE ++                      ; weiter zum drucken
    DEC $45                     ; Flag fuer Druckabbruch
+   PLA
    SEC
    RTS
---------------------------------
++  LDA CIA2_ICR                ; $DD0D Interrupt control and status
    AND #$10
    BEQ -
    PLA                         ; Zeichen holen
    STA CIA2_PRB                ; $DD01 Data Port B, Zeichen ausgeben
    CLC
    RTS

; -------------------------------
; Menue *drucken*
; -------------------------------
LE3CD
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $03
    !pet "*drucken*",$00
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)

    !by $04
    !pet " ",$00
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm

    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$0C                 ; Spalte,Reihe
    !pet "etikettenauswahl..(",bl_weiss,"1",normal,")",$40
    !by $08,$0E
    !pet "zaehlereinstellung(",bl_weiss,"2",normal,")",$40
    !by $08,$10
    !pet "druckstart........(",bl_weiss,"3",normal,")",$40
    !by $05,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "mit zifferntaste auswaehlen!",normal,$00
---------------------------------
-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -
    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    RTS                         ; zurueck zum Hauptmenue
---------------------------------
+   CMP #"1"
    BNE +
    JSR TA0F9                   ; LB926 Menue *etikett laden*
    JMP TA0C6                   ; LE3CD Menue *drucken*
---------------------------------
+   CMP #"3"
    BNE +
    JSR TA036                   ; LE238 *Druckstart*
    JMP TA0C6                   ; LE3CD Menue *drucken*
---------------------------------
+   CMP #"2"
    BNE -
    JSR TA15F                   ; LEF57 Zaehlereinstellung
    JMP TA0C6                   ; LE3CD Menue *drucken*
; -------------------------------
; Menue *drucken* Ende
; -------------------------------

; -------------------------------
; sende CODES1 an Drucker
; -------------------------------
LE47E
    LDX #$00
-   LDA CODES1,X                ; hole Wert
    BEQ +                       ; Nullbyte, dann fertig
    JSR TA075                   ; LE3AD, Byte(s) an Drucker senden
    BCC ++                      ; kein Fehler, dann naechstes Byte
+   RTS

++  INX
    BNE -
    RTS

CODES1
    !by $1B,$2E,$4D             ; [ESC], [.], [M]   Select Graphics Resolution 72 dpi
    !by $1B,$2E,$38             ; [ESC], [.], [8]   Select 8-Pin Graphics
    !by $16,$00                 ; [CTRL+V]          Select Pin Graphics

; -------------------------------
; sende CODES2 an Drucker
; -------------------------------
LE497
    LDX #$00
-   LDA CODES2,X                ; hole Wert
    BEQ +                       ; Nullbyte, dann fertig
    JSR TA075                   ; LE3AD, Byte(s) an Drucker senden
    BCC ++                      ; kein Fehler, dann naechstes Byte
+   RTS

++  INX
    BNE -
    RTS

CODES2
    !by $16,$0D,$16,$0A,$00     ; CTRL+V], [CTRL-M](CR), [CTRL+V], [CTRL+J](LF)     Carriage Return and LF

; -------------------------------
; sende CODES3 an Drucker
; -------------------------------
LE4AD
    LDX #$00
-   LDA CODES3,X                ; hole Wert
    BEQ +                       ; Nullbyte, dann fertig
    JSR TA075                   ; LE3AD, Byte(s) an Drucker senden
    BCC ++                      ; kein Fehler, dann naechstes Byte
+   RTS

++  INX
    BNE -
    RTS
---------------------------------
CODES3
    !by $16,$17,$16,$17,$00     ; [CTRL+V], [CTRL+W], [CTRL+V], [CTRL+W]    2x Micro Line Feed

; -------------------------------
; sende CODES4 an Drucker
; -------------------------------
LE4C3
    LDX #$00
-   LDA CODES4,X                ; hole Wert
    BEQ +                       ; Nullbyte, dann fertig
    JSR TA075                   ; LE3AD, Byte(s) an Drucker senden
    BCC ++                      ; kein Fehler, dann naechstes Byte
+   RTS

++  INX
    BNE -
    RTS
---------------------------------
CODES4
    !by $16,$1B,$36,$00         ; [CTRL+V], [ESC], [6]      Select Normal Text FONT 


; -------------------------------
; etiketten werden gedruckt
; -------------------------------
LE4D8
; Bildschirmausgabe
    JSR TA15C                   ; LE39F, setze PortB auf Ausgang

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $07,$0A                 ; Spalte,Reihe
    !pet "etiketten werden gedruckt!",$40
    !by $07,$10
    !pet "druckabbruch mit return!",$00

    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $12,$0D,$0B             ; Spalte,Zeile,Textfeld 'ANZAHL ETIKETTEN'
    !by $80
; Ende Bildschirmausgabe

    JSR TA135                   ; LA97E, wandle Anzahl Bahnen in Hexwert und speicher nach $16
    LDY #$09                    ; Textfeldnummer, 'Anzahl Bahnen'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                   ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03
    LDA $04                     ; lade Anzahl Bahnen (dez.)
    STA ANZ_BAHNEN_DEC          ; speicher nach $3B
; Die Anzahl der Bahnen ist nun in $16 als 2 stelliger Hexwert,
; und in $3B als zweistelliger Dezimalwert

    LDY #$07                    ; Textfeldnummer, 'Etikettenbreite'
    JSR TA11A                   ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                   ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03
    LDY #$08                    ; Textfeldnummer, 'Abstand seitlich'
    JSR TA009                   ; LA8C0, Wertekombination aus zwei Eingabefeldern berechnen
                                ; Das Ergebniss befindet sich anschliessend in $03,$04 in deximaler Form

    JSR TA0D5                   ; LAC64, Wert in $03,$04 in DPI umrechnen
                                ; anschliessend befindet sich dieser Wert in Hex-Form in den Speichestellen $06,$05
    LDA #$00
    STA $27
    LDA ET_BYTEX                ; Breite in Bytes
; multipliziere mit 8
    LDX #$03
-   ASL
    ROL $27
    DEX
    BNE -
    STA $26                     ; In $26 ist nun das Eergebniss von Breite in Bits (Bytes x 8)

    SEC
,E550 LDA $05
,E552 SBC $26
,E554 STA $26
,E556 LDA $06
,E558 SBC $27
,E55A STA $27

,E55C LDY #$05                  ; Textfeldnummer, 'Etikettenhoehe
,E55E JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,E561 JSR TA0E1                 ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03
,E564 LDY #$06                  ; Textfeldnummer, 'Laufrichtung'
,E566 JSR TA009                 ; LA8C0, Wertekombination aus zwei Eingabefeldern berechnen
                                ; Das Ergebniss befindet sich anschliessend in $03,$04 in deximaler Form
,E569 JSR TA0D5                 ; LAC64, Wert in $03,$04 in DPI umrechnen
                                ; anschliessend befindet sich dieser Wert in Hex-Form in den Speichestellen $06,$05
,E56C LDA $05
,E56E AND #$07
,E570 STA $59
,E572 LDX #$03
,E574 LSR $06
,E576 ROR $05
,E578 DEX
,E579 BNE $E574
,E57B SEC
,E57C LDA $05
,E57E SBC ET_BYTEY
,E580 STA $2A
,E582 JSR TA05A                 ; LE47E, sende CODES1 an Drucker

,E585 LDA #$00
,E587 STA ZEILE                 ; $0A
,E589 LDA #$00
,E58B STA $07
,E58D LDA #$04
,E58F STA $08
,E591 JSR $A19E                 ; LF12E, Anfangswert

,E594 JSR $A0C3                 ; LE637
,E597 BCC $E59F                 ; verzweige wenn kein Fehler
,E599 JSR $A1AA                 ; LE61D, Seitenende? Druckende? 
,E59C BCC $E585
,E59E RTS
---------------------------------
,E59F CLC
,E5A0 LDA $07
,E5A2 ADC #$80
,E5A4 STA $07
,E5A6 LDA $08
,E5A8 ADC #$02
,E5AA STA $08
,E5AC JSR TA06F                 ; LE497, sende CODES2 an Drucker, CR LF
,E5AF BCC $E5B7                 ; verzweige wenn kein Fehler
,E5B1 JSR $A1AA                 ; LE61D, Drueckende
,E5B4 BCC $E585
,E5B6 RTS
---------------------------------
,E5B7 INC ZEILE                 ; $0A
,E5B9 LDA ZEILE                 ; $0A
,E5BB CMP ET_BYTEY
,E5BD BNE $E594

,E5BF LDY $2A
,E5C1 BEQ $E5D1
,E5C3 JSR TA06F                 ; LE497, sende CODES2 an Drucker, CR LF
,E5C6 BCC $E5CE                 ; verzweige wenn kein Fehler
,E5C8 JSR $A1AA                 ; LE61D, Seitenende? Druckende? 
,E5CB BCC $E585
,E5CD RTS
---------------------------------
,E5CE DEY
,E5CF BNE $E5C3
,E5D1 LDY $59
,E5D3 BEQ $E5E3
,E5D5 JSR TA0FF                 ; LE4AD, sende CODES3 an Drucker
,E5D8 BCC $E5E0                 ; verzweige wenn kein Fehler
,E5DA JSR $A1AA                 ; LE61D, Seitenende? Druckende? 
,E5DD BCC $E585
,E5DF RTS
---------------------------------
,E5E0 DEY
,E5E1 BNE $E5D5
,E5E3 SED
,E5E4 SEC
,E5E5 LDA $39
,E5E7 SBC ANZ_BAHNEN_DEC        ; $3B
,E5E9 STA $39
,E5EB LDA $3A
,E5ED SBC #$00
,E5EF STA $3A
,E5F1 CLD
,E5F2 PHP
,E5F3 JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,E5F6 !by $11,$0D               ; Spalte,Reihe
,E5F8 !pet " ",$00
,E5FA LDX #$01
,E5FC LDA $39,x
,E5FE LSR
,E5FF LSR
,E600 LSR
,E601 LSR
,E602 ORA #$30
,E604 JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
,E607 LDA $39,X
,E609 AND #$0F
,E60B ORA #$30
,E60D JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
,E610 DEX
,E611 BPL $E5FC
,E613 PLP
,E614 BCC $E619
,E616 JMP $E585
---------------------------------
,E619 JSR TA033                 ; LE4C3, sende CODES4 an Drucker, normal mode
,E61C RTS
---------------------------------
; -------------------------------
; Seitenende,Druckende  ???
; -------------------------------
LE61D
    LDA #$03                    ; Schleifenzaehler
    STA $1C
-   DEC $1C
    BEQ +
    LDA #$00                    ; Wert fuer kein Abbruch
    STA $45                     ; nach $45
    JSR TA075                   ; LE3AD, Byte(s) an Drucker senden

    JSR TA06F                   ; LE497, sende CODES2 an Drucker, CR LF
    BCS -                       ; verzweige wenn ein Fehler aufgetreten ist
+   NOP
    JSR TA033                   ; LE4C3, sende CODES4 an Drucker, normal mode
    SEC
    RTS
---------------------------------
LE637 JSR $E650
,E63A BCC $E63D
,E63C RTS
---------------------------------
,E63D LDA KONTRAST
,E63F BEQ $E63C
,E641 LDA #$16
,E643 LDX #$01
,E645 JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
,E648 BCC $E64B
,E64A RTS
---------------------------------
,E64B LDA #$0D
,E64D DEX
,E64E BPL $E645
,E650 LDA ANZ_BAHNEN_HEX         ; Lade Anzahl der Bahnen ,$16
,E652 STA $44
,E654 JSR $A17A                     ; LF13E
,E657 LDA $07
,E659 PHA
,E65A LDA $08
,E65C PHA
,E65D JSR $A0C9
,E660 LDA ET_BYTEX
,E662 STA SPALTE                ; $0B
,E664 LDX #$00
,E666 STX $47
,E668 STX $48
,E66A JSR $A138
,E66D BCC $E672
,E66F PLA
,E670 PLA
,E671 RTS
---------------------------------
,E672 CLC
,E673 LDA $07
,E675 ADC #$08
,E677 STA $07
,E679 BCC $E67D
,E67B INC $08
,E67D DEC SPALTE                    ; $0B
,E67F BNE $E66A
,E681 JSR $A09C
,E684 PLA
,E685 STA $08
,E687 PLA
,E688 STA $07
,E68A DEC $44
,E68C BNE $E690
,E68E CLC
,E68F RTS
---------------------------------
,E690 LDA $48
,E692 BEQ $E657
,E694 LDX $47
,E696 BEQ $E6A6
,E698 LDY #$08
,E69A LDA #$00
,E69C JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
,E69F DEY
,E6A0 BNE $E69A
,E6A2 DEC $47
,E6A4 BNE $E698
,E6A6 LDY $26
,E6A8 LDX $27
,E6AA BNE $E6B0
,E6AC CPY #$00
,E6AE BEQ $E657
,E6B0 LDA #$00
,E6B2 JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
,E6B5 BCC $E6BA
,E6B7 PLA
,E6B8 PLA
,E6B9 RTS
---------------------------------
,E6BA CPY #$00
,E6BC BNE $E6C3
,E6BE CPX #$00
,E6C0 BEQ $E657
,E6C2 DEX
,E6C3 DEY
,E6C4 JMP $E6B0

; -------------------------------
; Menuepunkt *Sonderprogramme*
; -------------------------------
LE6C7
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm


    LDA #$F0
    JSR TA087                   ; LB541, sende Dateiname
    !pet "0:sonprg",$00
    JSR TA120                   ; LF9A9, UNLISTEN senden
    JSR $A0E4                   ; LB578
    BEQ +                       ; verzweige wenn wenn ein Sonderprogrammdiskette gefunden wurde

    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $07,$0C                 ; Spalte,Reihe
    !pet "programm-diskette ist",$40
    !by $0C,$0F
    !pet "nicht eingelegt!",$40
    !by $01,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "diskette einlegen und return druecken",normal,$00

-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; keine Taste
    CMP #RETURN                 ; Return gedrueckt?
    BNE -                       ; kein RETURN gedrueckt
    SEC
    NOP
    RTS

+   LDA #$00
    STA STATUS
    LDA #LWNR                   ; Laufwerksnummer
    JSR TA08A                   ; LF8B3, TALK senden
    LDA #$60
    JSR TA1A4                   ; LF972, Sekundaeradresse nach TALK senden
    JSR TA054                   ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA FILE_VEC                ; Ladeadresse LOW Byte
    JSR TA054                   ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA FILE_VEC+1              ; Ladeadresse HIGH Byte
; lade Programm in Speicher
-   JSR TA054                   ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    LDY #$00
    STA (FILE_VEC),Y
    INC FILE_VEC                ; erhoehe Speicheradresse
    BNE +
    INC FILE_VEC+1

+   LDA STATUS
    BEQ -                       ; verzweige bei 0
    JSR TA1B3                   ; LF99A, UNTALK senden
    LDA #$E0
    JSR TA0A8                   ; LB56A, CLOSE
    JMP $9000                   ; starte das Sonderprogramm
---------------------------------
LE778 LDY #$00
,E77A STY $46
,E77C LDA ($07),Y
,E77E BEQ $E782
,E780 DEC $46
,E782 LDX #$07
,E784 LSR
,E785 ROR $003C,X
,E788 DEX
,E789 BPL $E784
,E78B INY
,E78C CPY #$08
,E78E BNE $E77C
,E790 LDX $46
,E792 BNE $E798
,E794 INC $47
,E796 CLC
,E797 RTS
---------------------------------
,E798 DEC $48
,E79A LDX $47
,E79C BEQ $E7AC
,E79E LDY #$08
,E7A0 LDA #$00
,E7A2 JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
,E7A5 DEY
,E7A6 BNE $E7A0
,E7A8 DEC $47
,E7AA BNE $E79E
,E7AC LDX #$00
,E7AE LDX $47
,E7B0 LDA $003C,X
,E7B3 CMP #$16
,E7B5 BNE $E7BF
,E7B7 JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
,E7BA BCC $E7BD
,E7BC RTS
---------------------------------
,E7BD LDA #$16
,E7BF JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
,E7C2 BCC $E7C5
,E7C4 RTS
---------------------------------
,E7C5 INX
,E7C6 CPX #$08
,E7C8 BNE $E7B0
,E7CA CLC
,E7CB RTS

; -------------------------------
; Initialisiere Hauptmenue
; -------------------------------
LE7CC
    JSR TA13B                   ; LA7ED  Textfelder initialisieren
    JSR TA17D                   ; LE823  Menue *hauptmenue*
; sollte hier ein 'JMP $A17D' sein?

; -------------------------------
; was macht dieser nachfolgende Codeteil?
; wir der ueberhaupt angesprungen?
; wenn ja, dann haengt er hier in einer Endlosschleife
-   CLC
    BCC -

    JSR TA18C                   ; LA485 ; Bildschirmmaske erstellen
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $02,$08               ; Spalte,Reihe
    !pet "abcdefghijklmnopqrstuvwxyz",$5B,$5C,$40
    !by $5E,$5F,$40
    !by $02,$0A
    !pet " !",$22,"#$%& ()*+,-./0123456789:;<=>?",$00

-   CLC
    BCC -

; -------------------------------
; *Hauptmenue*
; -------------------------------
MENUE1
LE823
    LDX #$FF
    TXS

    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $03
    !pet "*hauptmenue*",$00

    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $04
    !pet " ",$00

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm

    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$0A                 ; Spalte,Reihe
    !pet "etikettentext.....(",bl_weiss,"1",normal,")",$40
    !by $08,$0C
    !pet "drucken...........(",bl_weiss,"2",normal,")",$40
    !by $08,$0E
    !pet "diskette..........(",bl_weiss,"3",normal,")",$40
    !by $08,$10
    !pet "ende,loeschen.....(",bl_weiss,"4",normal,")",$40
    !by $08,$12
    !pet "sonderprogramme...(",bl_weiss,"5",normal,")",$40
    !by $05,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "mit zifferntaste auswaehlen!",normal,$00
---------------------------------
-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -
    CMP #"1"
    BNE +
    JSR TA048                   ; LB16B Menue *etikettentext*
    JMP TA17D                   ; LE823 Menue *hauptmenue*
---------------------------------
+   CMP #"2"
    BNE +
    JSR TA0C6                   ; LE3CD Menue *drucken*
    JMP TA17D                   ; LE823 Menue *hauptmenue*
---------------------------------
+   CMP #"3"
    BNE +
    JSR TA0BD                   ; LBC2F Menue *diskette*
    JMP TA17D                   ; LE823 Menue *hauptmenue*
---------------------------------
+   CMP #"4"
    BNE +
    JSR TA165                   ; LF43A SUB-Menue *ende,loeschen*
    JMP TA17D                   ; LE823 Menue *hauptmenue*
---------------------------------
+   CMP #"5"
    BNE -
    JSR TA1E3                   ; LE6C7 Sonderprogramme , 0:sonprg
    JMP TA17D                   ; LE823 Menue *hauptmenue*

; -------------------------------
; Grafik-Sondersymbole
; -------------------------------
LE91D
    PHA
    JSR TA057                   ; LADDE, schalte auf Textmode
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by normal                  ; $04
    !pet "sonderzeichen",$00
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR $A0ED                   ; LEA5C, 0:extgraf
    BCS .lE96E                  ; bei Fehler, zurueck zu Etikett bearbeiten

    JSR TA024                   ; LBD74, Directory einlesen
    JSR TA027                   ; LBDA5, Directory anzeigen
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $06,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "mit zifferntaste auswaehlen!",normal,$00
,E965 JSR TA11D                 ; LA6C7, Tasteneingabe
,E968 BCS $E965
,E96A CMP #RETURN                    ; Return gedrueckt?
,E96C BNE $E979
.lE96E
    JSR TA0EA                 ; LADC9, schalte auf Bitmap Mode
,E971 JSR TA04E                 ; LACC3
,E974 JSR TA0B1                 ; LAE20, Grafikbildschirm aktualisieren
,E977 PLA
,E978 RTS
---------------------------------
,E979 CMP #$30
,E97B BCC $E965
,E97D CMP #$3A
,E97F BCS $E965
,E981 AND #$0F
,E983 CMP DIR_PLACE
,E985 BCS $E965
,E987 ASL
,E988 ASL
,E989 ASL
,E98A ASL
,E98B STA FILE_VEC
,E98D LDA #$CA
,E98F STA FILE_VEC+1
,E991 LDA #$F0
,E993 JSR TA087                 ; LB541, sende Dateiname
,E996 !pet "bf",$00
,E999 LDY #$02
,E99B LDA (FILE_VEC),Y
,E99D JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,E9A0 INY
,E9A1 CPY #$10
,E9A3 BNE $E99B
,E9A5 JSR TA120                 ; LF9A9, UNLISTEN senden
,E9A8 JSR $A0E4                 ; LB578
,E9AB BNE .lE96E                  ; zurueck zu Etikett bearbeiten
,E9AD LDA #LWNR                 ; Laufwerksnummer
,E9AF JSR TA08A                 ; LF8B3, TALK senden
,E9B2 LDA #$60
,E9B4 JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
,E9B7 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,E9BA STA $49
,E9BC JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,E9BF STA $4A
,E9C1 JSR TA1B3                 ; LF99A, UNTALK senden
,E9C4 DEC $4C
,E9C6 JSR TA021                 ; LAEF1
,E9C9 INC $4C
,E9CB BCC +
,E9CD JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,E9D0 !by $05,$17,bl_weiss      ; Spalte,Reihe,Atribut
,E9D3 !pet "symbol fuer etikett zu gross!",$00
,E9F1 LDA #$E0
,E9F3 JSR TA0A8                 ; LB56A, CLOSE
,E9F6 JMP $E965
---------------------------------
+   JSR $A174
,E9FC BCC $EA02
,E9FE PLA
,E9FF JMP TA171                 ; LE91D, Grafik-Sondersymbole
---------------------------------
,EA02 JSR $A0D2
,EA05 LDA $05
,EA07 STA $03
,EA09 LDA $06
,EA0B STA $04
,EA0D LDX POS_X                 ; $23
,EA0F LDY POS_Y                 ; $24
,EA11 JSR TA042                 ; LADF3
,EA14 ASL $49
,EA16 ASL $49
,EA18 ASL $49
,EA1A LDA #LWNR                 ; Laufwerksnummer
,EA1C JSR TA08A                 ; LF8B3, TALK senden
,EA1F LDA #$60
,EA21 JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
,EA24 LDY #$00
,EA26 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,EA29 EOR #$FF
,EA2B STA ($03),Y
,EA2D STA ($05),Y
,EA2F INY
,EA30 CPY $49
,EA32 BNE $EA26
,EA34 CLC
,EA35 LDA $03
,EA37 ADC #$40
,EA39 STA $03
,EA3B LDA $04
,EA3D ADC #$01
,EA3F STA $04
,EA41 CLC
,EA42 LDA $05
,EA44 ADC #$80
,EA46 STA $05
,EA48 LDA $06
,EA4A ADC #$02
,EA4C STA $06
,EA4E DEC $4A
,EA50 BNE $EA24
,EA52 JSR TA1B3                 ; LF99A, UNTALK senden
,EA55 LDA #$E0
,EA57 JSR TA0A8                 ; LB56A, CLOSE
,EA5A PLA
,EA5B RTS
---------------------------------
LEA5C LDA #$F0
,EA5E JSR TA087                 ; LB541, sende Dateiname
,EA61 !pet "0:extgraf",$00

,EA6B JSR TA120                 ; LF9A9, UNLISTEN senden
,EA6E JSR $A0E4                 ; LB578
,EA71 BNE $EA7A
,EA73 LDA #$E0
,EA75 JSR TA0A8                 ; LB56A, CLOSE
,EA78 CLC
,EA79 RTS
---------------------------------
,EA7A JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
,EA7D JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,EA80 !by $07,$0D               ; Spalte,Reihe
,EA82 !pet "grafiksymbol-diskette ist",$40
,EA9C !by $0C,$0F
,EA9E !pet "nicht eingelegt!",$40
,EAAF !by $01,$17,bl_weiss      ; Spalte,Reihe,Atribut
,EAB2 !pet "diskette einlegen und return druecken",normal,$00
---------------------------------
-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; keine Taste
    CMP #RETURN                 ; Return gedrueckt?
    BNE -                       ; kein RETURN gedrueckt
,EAE2 SEC
,EAE3 RTS
---------------------------------
LEAE4 JSR TA0EA                 ; LADC9, schalte auf Bitmap Mode
,EAE7 JSR TA04E                 ; LACC3
,EAEA JSR TA0B1                 ; LAE20, Grafikbildschirm aktualisieren
,EAED NOP
,EAEE BIT $52
,EAF0 BPL $EAFA
,EAF2 LDA POS_X                 ; $23
,EAF4 STA $4E
,EAF6 LDA POS_Y                 ; $24
,EAF8 STA $4F
,EAFA JSR TA04E                 ; LACC3
,EAFD JSR TA11D                 ; LA6C7, Tasteneingabe
,EB00 BCS $EAFD
,EB02 CMP #RETURN                    ; Return gedrueckt?
,EB04 BNE $EB08
,EB06 SEC
,EB07 RTS
---------------------------------
,EB08 CMP #$89
,EB0A BEQ $EB0E
,EB0C CMP #$8B
,EB0E BEQ $EB14
,EB10 CMP #$8A
,EB12 BNE $EB16
,EB14 CLC
,EB15 RTS
---------------------------------
,EB16 CMP #CRSR_R                ; Cursor rechts
,EB18 BNE $EB1C
,EB1A INC POS_X                 ; $23
,EB1C CMP #CRSR_L                ; Cursor links
,EB1E BNE $EB22
,EB20 DEC POS_X                 ; $23
,EB22 CMP #CRSR_D                ; Cursor runter
,EB24 BNE $EB28
,EB26 INC POS_Y                 ; $24
,EB28 CMP #CRSR_U                ; Cursor hoch
,EB2A BNE $EB2E
,EB2C DEC POS_Y                 ; $24
,EB2E JSR TA021                 ; LAEF1
,EB31 BCC $EAED
,EB33 RTS

; -------------------------------
; Menue *strichcode*
; -------------------------------
LEB34
    PHA
    JSR TA057                 ; LADDE, schalte auf Textmode
    JSR TA090                 ; LA85D, beschreibe Textfeld (Nr.)
    !by normal                  ; $04             
    !pet "*strichcode*",$00
    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm

    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0A,$09               ; Spalte,Reihe
    !pet "ean  8..........(",bl_weiss,"1",normal,")",$40
    !by $0A,$0B
    !pet "ean 13..........(",bl_weiss,"2",normal,")",$40
    !by $0A,$0D
    !pet "2,5 interleaved.(",bl_weiss,"3",normal,")",$40
    !by $0A,$0F
    !pet "code 39.........(",bl_weiss,"4",normal,")",$40
    !by $0A,$11
    !pet "code von disk...(",bl_weiss,"5",normal,")",$40
    !by $06,$17,bl_weiss      ; Spalte,Reihe,Atribut
    !pet "mit zifferntaste auswaehlen!",normal,$00

-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; keine Taste
    CMP #RETURN                 ; Return gedrueckt?
    BNE +                       ; kein RETURN gedrueckt
.lEBF1
    JMP .lE96E                  ; zurueck zu Etikett bearbeiten
---------------------------------
+   CMP #"3"
    BNE +
    JMP TA12F                   ; LEC4B, Eingabe 2 aus 5
---------------------------------
+   CMP #"2"
    BNE +
    JMP TA0CC                   ; LFA31, Eingabe EAN 13
---------------------------------
+   CMP #"1"
    BNE +
    JMP TA162                   ; LFB4C, Eingabe EAN 8
---------------------------------
+   CMP #"4"
    BNE +
    JMP TA141                   ; LFCF0, Eingabe CODE 39
---------------------------------
+   CMP #"5"
    BNE -
    JMP TA01B                   ; LFDF1, Lade Balkencode
---------------------------------

LEC17 ROL $28
,EC19 LDX $29
,EC1B TXA
,EC1C LSR
,EC1D LSR
,EC1E LSR
,EC1F TAY
,EC20 INX
,EC21 STX $29
,EC23 TXA
,EC24 AND #$07
,EC26 BEQ $EC2A
,EC28 CLC
,EC29 RTS
---------------------------------
,EC2A LDA $28
,EC2C STA $CAE0,Y
,EC2F SEC
,EC30 RTS
---------------------------------
LEC31 PHA
,EC32 TYA
,EC33 PHA
,EC34 LDA $1C
,EC36 EOR #$FF
,EC38 STA $1C
,EC3A TXA
,EC3B PHA
,EC3C LDA $1C
,EC3E ASL
,EC3F JSR TA102                 ; LEC17
,EC42 PLA
,EC43 TAX
,EC44 DEX
,EC45 BNE $EC3A
,EC47 PLA
,EC48 TAY
,EC49 PLA
,EC4A RTS

; -------------------------------
; Eingabe 2 aus 5
; -------------------------------
LEC4B
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$0D                 ; Spalte,Reihe
    !pet "ziffernfolge fuer 2 aus 5 eingeben",$40
    !by $0C,$17
    !pet "daten eingeben!",$00
    LDA #rot                    ; $06
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $06,$0F,$0C             ; Spalte,Zeile,Textfeld (Daten 2 aus 5)
    !by $80

    LDA #normal                 ; Normal
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $06,$0F,$0C             ; Daten 2 aus 5

    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    JMP .lEBF1                  ; JMP .lE96E, zurueck zu Etikett bearbeiten
---------------------------------
+   LDA #$00
    STA $29
    STA $1C
    LDY #$04
-   LDX #$01
    JSR TA00C                 ; LEC31
    DEY
    BNE -
    STY SPALTE                ; $0B
    LDY #$0C                  ; Textfeldnummer, 'Daten 2 aus 5'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
--  LDY SPALTE                ; lade Y mit sSpaltenposition aus $0B
    LDA (TF_P),Y              ; lade Wert aus Textfeld_position
    CMP #"0"                  ; vergleiche den eingebenen Wert mit "0"
    BCC ++                    ; verzweige wenn kleiner 0
    CMP #$3A
    BCS ++                    ; verzweige wenn groesser 9
    AND #$0F                  ; maskiere die oberenbits
    TAX                       ; transportiere den Zahlwert in das X-Register
    LDA $ED16,X
    STA $0026
    INY
    LDA (TF_P),Y
    INY
    STY SPALTE                ; $0B
    AND #$0F
    TAX
    LDA $ED16,X
    STA $27
    LDY #$05
-   LDX #$01
    LSR $26
    BCC +
    LDX #$03
+   JSR TA00C                 ; LEC31
    LDX #$01
    LSR $27
    BCC +
    LDX #$03
+   JSR TA00C                 ; LEC31
    DEY
    BNE -
    JMP --
---------------------------------
++  LDX #$03
    JSR TA00C                 ; LEC31
    CLC
    JSR TA102                 ; LEC17
    SEC
    JSR TA102                 ; LEC17
    BCS +
-   CLC
    JSR TA102                 ; LEC17
    BCC -
+   JMP $A132                   ; LED56, Codegroesse Darstellung Balkencode
---------------------------------

,ED16 !by $0C,$11,$12,$03,$14,$05,$06,$18,$09,$0A

LED20 JSR $A0D2
,ED23 LDA $05
,ED25 STA $03
,ED27 LDA $06
,ED29 STA $04
,ED2B LDX POS_X                 ; $23
,ED2D LDY POS_Y                 ; $24
,ED2F JSR TA042                 ; LADF3
,ED32 RTS
---------------------------------
LED33 LDA FILE_VEC
,ED35 BIT F_BCODE               ; $5B Flag
,ED37 BPL $ED40
,ED39 LDA FILE_VEC
,ED3B BPL $ED40
,ED3D CLC
,ED3E BCC $ED53
,ED40 PHA
,ED41 AND #$07
,ED43 BNE $ED50
,ED45 PLA
,ED46 LSR
,ED47 LSR
,ED48 LSR
,ED49 TAY
,ED4A LDA $CAE0,Y
,ED4D STA FILE_VEC+1
,ED4F PHA
,ED50 PLA
,ED51 ASL FILE_VEC+1
,ED53 INC FILE_VEC
,ED55 RTS

; -------------------------------
; Codegroesse
; -------------------------------
LED56
-   JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$11                 ; Spalte,Reihe
    !pet "codegroesse/ ",$00
    LDY #$00
    JSR TA147                   ; LA6DB, Zeicheneingabe mit Blinkmodus
    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    JMP .lEE4C                  ; loesche Flag F_BCODE, zurueck zur Etikettendarstellung
---------------------------------
+   CMP #"1"
    BCC -                       ; verzweige wenn kleiner 1
    CMP #$3A                    ; <: ; bedeutet, nicht groesser als 9
    BCS -                       ; verzweige wenn groesser 9
    AND #$0F                    ; maskiere die oberen Bits
    STA $4B                     ; speicher nach $4B
    LDA #$04
    LDX F_BCODE                 ; $5B Flag
    BEQ +
    LDA #$05
+   STA $1C
    LDA $29
    LSR
    LSR
    LSR
    TAY
    LDA $1C
    BIT DREHEN                ; $2E
    BPL +                       ; verzweige wenn drehen nicht aktiv

    TYA
    LDY $1C
+   LDX #$00
    STX $49

    STX $4A
,EDA0 LDX $4B
,EDA2 CLC
,EDA3 PHA
,EDA4 ADC $4A
,EDA6 STA $4A
,EDA8 TYA
,EDA9 ADC $49
,EDAB STA $49
,EDAD PLA
,EDAE DEX
,EDAF BNE $EDA2
,EDB1 LDA $49
,EDB3 CMP #$20
,EDB5 BCS $EDC0
,EDB7 DEC $4C
,EDB9 JSR TA021                 ; LAEF1
,EDBC INC $4C
,EDBE BCC $EDE9
,EDC0 JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
,EDC3 !by $05,$17,bl_weiss      ; Spalte,Reihe,Atribut
,EDC6 !pet "barcode fuer etikett zu gross!",normal,$00
---------------------------------
,EDE6 JMP $A132                   ; LED56, Codegroesse Darstellung Balkencode
---------------------------------
,EDE9 JSR $A174
,EDEC BCC $EDF1
,EDEE JMP .lEE4C                 ; loesche Flag F_BCODE, zurueck zur Etikettendarstellung
---------------------------------
,EDF1 LDA CRSR_BREITE            ; Cursor Breite, $17
,EDF3 PHA
,EDF4 LDA CRSR_HORHE             ; Cursor Hoehe, $18
,EDF6 PHA
,EDF7 LDA $22
,EDF9 PHA
,EDFA LDA $21
,EDFC PHA
,EDFD LDA #$00
,EDFF STA $29
,EE01 STA $2A
,EE03 STA $21
,EE05 STA $22
,EE07 STA FILE_VEC
,EE09 LDA $49
,EE0B STA CRSR_BREITE            ; Cursor Breite, $17
,EE0D LDA $4A
,EE0F STA CRSR_HORHE             ; Cursor Hoehe, $18
,EE11 JSR TA03F                 ; LED20
,EE14 BIT DREHEN                ; $2E
,EE16 BMI $EE53
,EE18 LDA #$00
,EE1A BIT F_BCODE               ; $5B Flag
,EE1C BPL $EE20
,EE1E LDA #$F8
,EE20 STA FILE_VEC
,EE22 JSR $A180
,EE25 LDA $4B
,EE27 STA $1C
,EE29 PHP
,EE2A JSR $A0A5
,EE2D BCS $EE36
,EE2F PLP
,EE30 DEC $1C
,EE32 BNE $EE29
,EE34 BEQ $EE22
,EE36 BEQ $EE3C
,EE38 PLA
,EE39 JMP $EE18
---------------------------------
,EE3C JSR TA00F                 ; LF033
,EE3F PLA
,EE40 PLA
,EE41 STA $21
,EE43 PLA
,EE44 STA $22
,EE46 PLA
,EE47 STA CRSR_HORHE             ; Cursor Hoehe, $18
,EE49 PLA
,EE4A STA CRSR_BREITE            ; Cursor Breite, $17
.lEE4C LDA #$00
,EE4E STA F_BCODE               ; $5B Flag
,EE50 JMP .lEBF1                ; JMP .lE96E, zurueck zu Etikett bearbeiten
---------------------------------
,EE53 JSR $A180
,EE56 LDA $4B
,EE58 STA $1C
,EE5A PHP
,EE5B JSR $A0A5
,EE5E BCS $EE64
,EE60 PLP
,EE61 JMP $EE5A
---------------------------------
,EE64 BEQ $EE6D
,EE66 PLP
,EE67 DEC $1C
,EE69 BNE $EE5A
,EE6B BEQ $EE53
,EE6D JMP $EE3C

; -------------------------------
; Eingabe Etikett Zaehler
; -------------------------------
LEE70
    PHA
    JSR TA057                   ; LADDE, schalte auf Textmode
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $04
    !pet "etikett zaehler",$00

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $06,$0D                 ; Spalte,Reihe
    !pet "anzahl der stellen eingeben!",$40
    !by $0C,$17
    !pet "daten eingeben!",$40
    !by $01,$12
    !pet "shift + return - zahlenfeld loeschen",$40
    !by $06,$0F

    !pet "(1-8)/ ",$00

-   LDY #$00
    JSR TA147                   ; LA6DB, Zeicheneingabe mit Blinkmodus
    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    JMP .lEBF1                  ; JMP .lE96E, zurueck zu Etikett bearbeiten
---------------------------------
+   CMP #SHRETURN               ; Shift/Return gedrueckt?
    BEQ ++                      ; Eingabe loeschen und zurueck
; pruefe Eingabe auf Ziffer
    CMP #"1"
    BCC -
    CMP #"9"
    BCS -

    AND #$0F                    ; maskiere die oberen Bits
    STA $4D
,EF0C STA $1C
,EF0E JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
,EF11 TXA
,EF12 BIT DREHEN                ; $2E
,EF14 BPL +
,EF16 TYA
+   STA $03
,EF19 LDA #$00
-   CLC
,EF1C ADC $03
,EF1E DEC $1C
,EF20 BNE -
,EF22 BIT DREHEN                ; $2E
,EF24 BPL +
,EF26 TAY
,EF27 TXA
+   TAX
,EF29 STX $50
,EF2B STY $51
,EF2D LDA CRSR_BREITE            ; Cursor Breite, $17
,EF2F STA $53
,EF31 LDA CRSR_HORHE             ; Cursor Hoehe, $18
,EF33 STA $54
,EF35 LDA $22
,EF37 STA $55
,EF39 LDA $21
,EF3B STA $56
,EF3D LDA INVERS                ; $2D
,EF3F STA $58
,EF41 LDA DREHEN                ; $2E
,EF43 STA $57
,EF45 DEC $52
,EF47 JSR $A174
,EF4A INC $52
,EF4C BCC +
++  LDA #$00
,EF50 STA $50
,EF52 STA $51
+   JMP .lEBF1                ; JMP .lE96E, zurueck zu Etikett bearbeiten
---------------------------------
; Zaehlereinstellung
LEF57
    LDA Z_ETIKETT             ; $50
    BNE +                     ; Zaehler nicht "0"
; Zaehler leer
    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$0F               ; Spalte,Reihe
    !pet "kein zaehler im etikett!",$00
    JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
; Zaehler vorhanden
+   JSR TA090                 ; LA85D, beschreibe Textfeld (Nr.)
    !by $04
    !pet "zaehler stellen",$00

    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$0C               ; Spalte,Reihe
    !pet "anfangswert/",$40
    !by $03,$0E
    !pet "schrittweite positiv/",$40
    !by $03,$10
    !pet "schrittweite negativ/",$40
    !by $0C,$17
    !pet "daten eingeben!",$06,$00

    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $1A,$0C,$0D             ; Spalte,Zeile,Textfeld 'ANFANGSWERT'
    !by $1A,$0E,$0E             ; 'SCHRITTWEITE POSITIV'
    !by $1A,$10,$12             ; 'SCHRITTWEITE NEGATIV'
    !by $80

    LDA #normal                 ; Normal
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

-   JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $1A,$0C,$0D             ; 'ANFANGSWERT'

    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    RTS                         ; zurueck zum Menue *drucken*
---------------------------------
+   CMP #CRSR_U                  ; Cursor hoch
    BEQ -

--  JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $1A,$0E,$0E             ; 'SCHRITTWEITE POSITIV'

    CMP #RETURN                  ; Return gedrueckt?
    BNE +
    RTS                         ; zurueck zum Menue *drucken*
---------------------------------
+   CMP #CRSR_U                  ; Cursor hoch
    BEQ -

    JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $1A,$10,$12             ; 'SCHRITTWEITE NEGATIV'

    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    RTS                         ; zurueck zum Menue *drucken*
---------------------------------
+   CMP #CRSR_U                  ; Cursor hoch
    BEQ --

; kurze Verzoegerung mit Blinkczaehler?
    LDA #$20                    ; Wert fuer Zaehler
    STA $02                     ; Blinkzaehler
-   LDA $02                     ; wird im IRQ herunter gezaehlt
    BNE -
    RTS                         ; zurueck zum Menue *drucken*

; Etikettenzaehlereinstellung Ende
; -------------------------------

---------------------------------
LF033 LDA F_BCODE               ; $5B Flag
,F035 BNE $F038
,F037 RTS
---------------------------------
,F038 LDA DREHEN                ; $2E
,F03A BNE $F049
,F03C LDA POS_Y                 ; $24
,F03E CLC
,F03F ADC $4A
,F041 SEC
,F042 SBC $4B
,F044 STA POS_Y                 ; $24
,F046 CLC
,F047 BCC $F066
,F049 LDA POS_X                 ; $23
,F04B CLC
,F04C ADC $49
,F04E SEC
,F04F SBC $4B
,F051 STA POS_X                 ; $23
,F053 CLC
,F054 LDA POS_Y                 ; $24
,F056 ADC $4A
,F058 SEC
,F059 SBC $4B
,F05B STA POS_Y                 ; $24
,F05D BIT F_BCODE               ; $5B Flag
,F05F BMI $F066
,F061 SEC
,F062 SBC $4B
,F064 STA POS_Y                 ; $24
,F066 LDA $4B
,F068 STA CRSR_BREITE            ; Cursor Breite, $17
,F06A STA CRSR_HORHE             ; Cursor Hoehe, $18
,F06C LDY #$0F
,F06E BIT F_BCODE               ; $5B Flag
,F070 BMI $F074
,F072 LDY #$10                  ; Textfeldnummer, 'Daten EAN 8'
,F074 JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,F077 LDY #$00
,F079 LDA (TF_P),Y
,F07B BPL $F07E
,F07D RTS
---------------------------------
,F07E TAX
,F07F TYA
,F080 PHA
,F081 TXA
,F082 JSR TA039                 ; LB394
,F085 PLA
,F086 TAY
,F087 INY
,F088 JMP $F079
---------------------------------
LF08B LDA $50
,F08D BNE $F090
,F08F RTS
---------------------------------
,F090 LDA ZEILE                 ; $0A
,F092 CMP $4F
,F094 BCS $F097
,F096 RTS
---------------------------------
,F097 SEC
,F098 SBC $51
,F09A BCC $F0A1
,F09C CMP $4F
,F09E BCC $F0A1
,F0A0 RTS
---------------------------------
,F0A1 LDA $26
,F0A3 PHA
,F0A4 LDA $27
,F0A6 PHA
,F0A7 LDA $07
,F0A9 PHA
,F0AA LDA $08
,F0AC PHA
,F0AD LDA ZEILE                 ; $0A
,F0AF PHA
,F0B0 LDA $2A
,F0B2 PHA
,F0B3 LDA KONTRAST
,F0B5 PHA

,F0B6 JSR $F0CF

,F0B9 PLA
,F0BA STA KONTRAST
,F0BC PLA
,F0BD STA $2A
,F0BF PLA
,F0C0 STA ZEILE                 ; $0A
,F0C2 PLA
,F0C3 STA $08
,F0C5 PLA
,F0C6 STA $07
,F0C8 PLA
,F0C9 STA $27
,F0CB PLA
,F0CC STA $26
,F0CE RTS
---------------------------------
,F0CF LDY #$0D                  ; Textfeldnummer, 'Anfangswert'
,F0D1 JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,F0D4 LDA $53
,F0D6 STA CRSR_BREITE            ; Cursor Breite, $17
,F0D8 LDA $54
,F0DA STA CRSR_HORHE             ; Cursor Hoehe, $18
,F0DC LDA $55
,F0DE STA $22
,F0E0 LDA $56
,F0E2 STA $21
,F0E4 LDA $4E
,F0E6 STA POS_X                 ; $23
,F0E8 STA $20
,F0EA LDA $4F
,F0EC STA POS_Y                 ; $24
,F0EE STA $1F
,F0F0 LDA $58
,F0F2 STA INVERS                ; $2D
,F0F4 LDA $57
,F0F6 STA DREHEN                ; $2E
,F0F8 BIT DREHEN                ; $2E
,F0FA BPL $F10B
,F0FC JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
,F0FF STY $1C
,F101 CLC
,F102 LDA POS_Y                 ; $24
,F104 ADC $51
,F106 SEC
,F107 SBC $1C
,F109 STA POS_Y                 ; $24
,F10B DEC $4C
,F10D JSR TA021                 ; LAEF1
,F110 INC $4C
,F112 SEC
,F113 LDA #$08
,F115 SBC $4D
,F117 TAY
,F118 TYA
,F119 PHA
,F11A LDA (TF_P),Y
,F11C JSR TA039                 ; LB394
,F11F DEC $4C
,F121 JSR TA021                 ; LAEF1
,F124 INC $4C
,F126 PLA
,F127 TAY
,F128 INY
,F129 CPY #$08
,F12B BNE $F118
,F12D RTS
---------------------------------
LF12E LDY #$0D                  ; Textfeldnummer, 'Anfangswert'
,F130 JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,F133 LDY #$07
-   LDA (TF_P),Y
,F137 STA $CAE0,Y
,F13A DEY
,F13B BPL -
,F13D RTS
---------------------------------
LF13E LDY #$0D                  ; Textfeldnummer, 'Anfangswert'
,F140 JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,F143 LDY #$07
,F145 LDA $CAE0,Y
,F148 STA (TF_P),Y
,F14A DEY
,F14B BPL $F145
,F14D RTS
---------------------------------
LF14E LDY #$0E                  ; Textfeldnummer, 'Schrittweite positiv'
,F150 JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,F153 LDA TF_P                  ; TF_pointer low byte
,F155 STA $05
,F157 LDA TF_P+1                ; TF_pointer high byte
,F159 STA $06
,F15B LDY #$0D                  ; Textfeldnummer, 'Anfangswert'
,F15D JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,F160 LDY #$07
,F162 CLC
,F163 LDA ($05),Y
,F165 AND #$0F
,F167 STA $1C
,F169 LDA (TF_P),Y
,F16B AND #$0F
,F16D SED
,F16E ADC $1C
,F170 CLD
,F171 TAX
,F172 BEQ $F17A
,F174 AND #$0F
,F176 ORA #$30
,F178 STA (TF_P),Y
,F17A TXA
,F17B AND #$F0
,F17D CLC
,F17E BEQ $F181
,F180 SEC
,F181 DEY
,F182 BPL $F163
,F184 LDY #$12                  ; Textfeldnummer, 'Schrittweite negativ'
,F186 JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,F189 LDA TF_P                  ; Textfeld_pointer low byte
,F18B STA $05
,F18D LDA TF_P+1                ; Textfeld_pointer high byte
,F18F STA $06
,F191 LDY #$0D                  ; Textfeldnummer, 'Anfangswert'
,F193 JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,F196 LDY #$07
,F198 SEC
,F199 LDA ($05),Y
,F19B AND #$0F
,F19D STA $1C
,F19F LDA (TF_P),Y
,F1A1 AND #$0F
,F1A3 SED
,F1A4 SBC $1C
,F1A6 CLD
,F1A7 TAX
,F1A8 AND #$0F
,F1AA ORA #$30
,F1AC STA (TF_P),Y
,F1AE TXA
,F1AF AND #$F0
,F1B1 SEC
,F1B2 BEQ $F1B5
,F1B4 CLC
,F1B5 DEY
,F1B6 BPL $F199
,F1B8 LDY #$00
,F1BA LDA (TF_P),Y
,F1BC AND #$0F
,F1BE BNE $F1C9
,F1C0 LDA #$20
,F1C2 STA (TF_P),Y
,F1C4 INY
,F1C5 CPY #$08
,F1C7 BNE $F1BA
,F1C9 RTS
---------------------------------
LF1CA LDA #$FF
,F1CC JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F1CF LDA $53
,F1D1 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F1D4 LDA $54
,F1D6 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F1D9 LDA $55
,F1DB JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F1DE LDA $56
,F1E0 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F1E3 LDA $4E
,F1E5 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F1E8 LDA $4F
,F1EA JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F1ED LDA $50
,F1EF JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F1F2 LDA $51
,F1F4 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F1F7 LDA $4D
,F1F9 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F1FC LDA $58
,F1FE JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F201 LDA $57
,F203 JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
,F206 RTS

; -------------------------------
; Statusmeldung auslesen
; -------------------------------
LF207 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F20A CMP #$FF
,F20C BEQ $F20F
,F20E RTS
---------------------------------
,F20F JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F212 STA $53
,F214 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F217 STA $54
,F219 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F21C STA $55
,F21E JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F221 STA $56
,F223 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F226 STA $4E
,F228 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F22B STA $4F
,F22D JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F230 STA $50
,F232 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F235 STA $51
,F237 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F23A STA $4D
,F23C JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F23F STA $58
,F241 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F244 STA $57
,F246 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,F249 RTS

; -------------------------------
; Abfrage Grafikbidschirm loeschen
; -------------------------------
LF24A
    PHA
    JSR TA057                   ; LADDE, schalte auf Textmode
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $04
    !pet "bild loeschen",$00

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0C,$09                 ; Spalte,Reihe
    !pet "soll wirklich der",$40
    !by $0F,$0B
    !pet "bildschirm",$40
    !by $0C,$0D
    !pet "geloescht werden/",$40
    !by $0A,$10
    !pet "ja   - shift + return",$40
    !by $0A,$11
    !pet "nein - return",$40
    !by $0B,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet " eingabe waehlen! ",normal,$00
---------------------------------
-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; auf Taste warten
    CMP #SHRETURN                ; Shift/Return gedrueckt?
    BNE $F2EC
    JSR TA0AB                   ; LAC37 Loesche Speicherbereich $0400 - $83FF
    LDA #$00
,F2E8 STA $50
,F2EA STA $51
,F2EC JSR TA0B1                 ; LAE20, Grafikbildschirm aktualisieren
,F2EF JSR TA04E                 ; LACC3
,F2F2 JSR TA0EA                 ; LADC9, schalte auf Bitmap Mode
,F2F5 PLA
,F2F6 RTS

; -------------------------------
; Funktionstatsten Anzeige
; -------------------------------
LF2F7
    PHA
    JSR TA057                   ; LADDE, schalte auf Textmode
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $04
    !pet "funktionstasten",$00

    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$07                 ; Spalte,Reihe
    !pet "f1 - schriftgroessen veraenderung",$40
    !by $03,$09
    !pet "f2 - fortlaufende numerierung",$40
    !by $03,$0B
    !pet "f3 - schrift,grafik-umschaltung",$40
    !by $03,$0D
    !pet "f4 - balkencodeauswahl",$40
    !by $03,$0F
    !pet "f5 - 90 grad links verdrehung",$40
    !by $03,$11
    !pet "f6 - grafik sonder-symbole",$40
    !by $03,$13
    !pet "f7 - inversdarstellung (negativ)",$40
    !by $03,$15
    !pet "f8 - bildschirm loeschen",$40
    !by $0B,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet " return druecken! ",normal,$00

-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; keine Taste
    CMP #RETURN                 ; Return gedrueckt?
    BNE -                       ; kein RETURN gedrueckt
    JSR TA0B1                   ; LAE20, Grafikbildschirm aktualisieren
,F432 JSR TA04E                 ; LACC3
    JSR TA0EA                 ; LADC9, schalte auf Bitmap Mode
    PLA
    RTS

; -------------------------------
; SUB-Menue *ende,loeschen*
; -------------------------------
LF43A
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $03
    !pet "ende,loeschen",$00
---------------------------------
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $05,$0E                 ; Spalte,Reihe
    !pet "programmende.......(",bl_weiss,"1",normal,")",$40
    !by $05,$10
    !pet "speicher loeschen..(",bl_weiss,"2",normal,")",$40
    !by $05,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet " mit zifferntaste auswaehlen! ",normal,$00
---------------------------------
-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; warte auf Taste
    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    RTS                         ; Zurueck zum Hauptmenue
---------------------------------
+   CMP #"2"                    ; teste auf '2'
    BNE +
    JMP TA0FC                   ; LF601 SUB-Menue loeschen
---------------------------------
+   CMP #"1"                    ; teste auf '1'
    BNE +                       ; teste auf Waschmaschine
    JMP TA192                   ; LF55D Ausschaltmeldung

; -------------------------------
; Waschmaschine
; -------------------------------
+   CMP #$01                    ; CTRL+A
    BNE -

    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $03
    !pet "waschmaschine",$00
    JSR TA090                   ; LA85D, beschreibe Textfeld (Nr.)
    !by $04
    !pet "buntwaesche",$00
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$0B                 ; Spalte,Reihe
    !pet "wenn sich der bildschirm",$40
    !by $08,$0D
    !pet "jetzt dreht, sitzen sie",$40
    !by $08,$0F
    !pet "vor ihrer waschmaschine.",$40
    !by $0B,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet " weniger saufen! ",normal,$00

-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; warte auf eine Taste
    JMP TA17D                   ; LE823 Menue *hauptmenue*
; -------------------------------

; -------------------------------
; Ausschaltmeldung
; -------------------------------
LF55D
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$09                 ; Spalte,Reihe
    !pet "bitte nehmen sie die diskette aus",$40
    !by $03,$0B
    !pet "dem laufwerk!",$40
    !by $03,$0E
    !pet "schalten sie das steuergeraet und",$40
    !by $03,$10
    !pet "den drucker am hauptschalter aus.",$40
    !by $0A,$15
    !pet "auf wiedersehen !!!",$00

-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; keine Taste
    CMP #RETURN                 ; Return gedrueckt?
    BNE -                       ; kein RETURN gedrueckt
    JMP TA17D                   ; LE823 Menue *hauptmenue*

; -------------------------------
; SUB-Menue 'loeschen'
; -------------------------------
LF601
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0B,$09                 ; Spalte,Reihe
    !pet "soll wirklich der",$40
    !by $0D,$0B
    !pet "arbeitsspeicher",$40
    !by $0B,$0D
    !pet "geloescht werden/",$40
    !by $08,$10
    !pet "ja   - shift + return",$40
    !by $08,$11
    !pet "nein - return",$40
    !by $0a,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet " eingabe waehlen! ",normal,$00

-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; warte auf Taste, warum?
    CMP #RETURN                 ; Return gedrueckt?
    BNE +                       ; Teste auf Shift/Return
    JMP TA17D                   ; LE823, Menue *hauptmenue*

+   CMP #SHRETURN                ; Shift/Return gedrueckt?
    BNE -                       ; gehe zurueck
    JMP RESET                   ; $A362

; -------------------------------
; hole eine Taste aus Tastaturpuffer
; -------------------------------
LF693
    LDA ANZ_TAST                ; $C6
    BNE +                       ; Taste 
    CLC                         ; keine Taste CLC
    RTS

+   SEI
    LDY TAST_BUFF               ; $0277, erstes Zeichen holen
    LDX #$00                    ; Zaehler auf Null
-   LDA TAST_BUFF+1,X           ; Puffer nach
    STA TAST_BUFF,X             ; vorne aufruecken
    INX                         ; Zaehler erhoehen
    CPX ANZ_TAST                ; mit Anzahl der
    BNE -                       ; Zeichen vergleichen
    DEC ANZ_TAST                ; Zeichenzahl erniedrigen
    TYA                         ; Zeichen in Akku holen
    CLI                         ; Interrupt freigeben
    CLC                         ; Carry loeschen
    RTS

; -------------------------------
; initialisiere VIC und CIA
; -------------------------------
LF6B0
    LDA #$00
    STA VIC_ctrl_reg2           ; $D016, Control register 2
    JSR TA1BF                   ; LF6BC, initialisiere CIA
    JSR TA1C2                   ; LF720, initialisiere VIC
    RTS

; -------------------------------
; initialisiere CIA
; -------------------------------
LF6BC
    LDA #$7F
    STA CIA1_ICR                ; $DC0D, Interrupt control and status
    STA CIA2_ICR                ; $DD0D, Interrupt control and status
    STA CIA1_PRA                ; $DC00, Data Port A
    LDA #$08
    STA CIA1_CRA                ; $DC0E, Control Timer A
    STA CIA2_CRA                ; $DD0E, Control Timer A
    STA CIA1_CRB                ; $DC0F, Control Timer B
    STA CIA2_CRB                ; $DD0F, Control Timer B
    LDX #$00
    STX CIA1_DDRB               ; $DC03, Data Direction Port B
    STX CIA2_DDRB               ; $DD03, Data Direction Port B
    STX SID_FM_VC               ; $D418, SID FilterMod and VolumeControl
    DEX
    STX CIA1_DDRA               ; $DC02, Data Direction Port A
    LDA #$07
    STA CIA2_PRA                ; $DD00, Data Port A
    LDA #$3F
    STA CIA2_DDRA               ; $DD02, Data Direction Port A
    LDA #$E6
    STA $01
    LDA #$2F
    STA $00
.lF6F6                           ; Einsprung von $F730
    LDA $02A6
    BEQ +
    LDA #$25
    STA CIA1_TALO               ; $DC04, Timer A Low Byte
    LDA #$40
    BNE ++
+   LDA #$95
    STA CIA1_TALO               ; $DC04, Timer A Low Byte
    LDA #$42
++  STA CIA1_TAHI               ; $DC05, Timer A HIGH Byte
    LDA #$81
    STA CIA1_ICR                ; $DC0D, interrupt control and status
    LDA CIA1_CRA                ; $DC0E, Control Timer A
    AND #$80
    ORA #$11
    STA CIA1_CRA                ; $DC0E, Control Timer A
    JMP TA1CB                   ; LF864, set bit 4 in CIA2_PRA: CLOCK OUT
---------------------------------
LF720
    JSR TA1C5                   ; LF733
-   LDA VIC_Rast_counter        ; $D012, Raster counter
    BNE -
    LDA VIC_irq_reg             ; $D019, Interrupt register
    AND #$01
    STA $02A6
    JMP .lF6F6
---------------------------------
LF733
    JSR TA1C8                   ; LF760, VIC-Register setzen
    LDA #$00
    STA $0291
    STA $CF
    LDA #$48
    STA $028F
    LDA #$EB
    STA $0290
    LDA #$0A
    STA $0289
    STA $028C
    LDA #$0E
    STA $0286
    LDA #$04
    STA $028B
    LDA #$0C
    STA $CD
    STA $CC
    RTS

; -------------------------------
; VIC-Register stzen
; -------------------------------
LF760
    LDX #$2F                    ; Zaehler
-   LDA VICREGTBL,X
    STA $CFFF,X
    DEX
    BNE -
    RTS
---------------------------------
VICREGTBL
LF76C
    !by $ff,$00,$00,$00,$00,$00,$00,$00
    !by $00,$00,$00,$00,$00,$00,$00,$00
    !by $00,$00,$9b,$37,$00,$00,$00,$08
    !by $00,$14,$0f,$00,$00,$00,$00,$00
    !by $00,$0e,$06,$01,$02,$03,$04,$00
    !by $01,$02,$03,$04,$05,$06,$07

; -------------------------------
; Tastaturabfrage
; -------------------------------
LF79B
    LDA #$00
    STA $028D                   ; Shift/CTRL Flag zuruecksetzen
    LDY #$40                    ; $40 = keine Taste gedrueckt
    STY $CB                     ; nach Code fuer gedrueckte Taste

    STA CIA1_PRA                ; $DC00 Data Port A
    LDX CIA1_PRB                ; $DC01 Data Port B
    CPX #$FF                    ; keine Taste gedrueckt ?
    BNE TASTE                   ; Taste gedrueckt
    JMP KEINE_TASTE             ; keine Taste gedrueckt

; Taste gedrueckt
; in MODE1 liegt die Tastaturtabelle,
; welche vom Tesa-Char-ROM $DB00 in's RAM nach $CB00 kopiert wurde
TASTE
    TAY                         ; Y-Register loeschen, Akku war 0
    LDA #<MODE1                 ; $00
    STA KEYTAB                  ; Zeiger auf Tastaturtabelle setzen , $F5
    LDA #>MODE1                 ; $CB
    STA KEYTAB+1

    LDA #$FE                    ; starte mit erster Zeile
    STA CIA1_PRA                ; $DC00 Data Port A
--  LDX #$08                    ; 8 Matrixzeilen
    PHA                         ; Bitstellung fuer Matrix retten
-   LDA CIA1_PRB                ; $DC01 Data Port B
    CMP CIA1_PRB                ; $DC01 Data Port B
    BNE -                       ; warte bis stabil
-   LSR                         ; bit in's Carry schieben
    BCS +++                     ; verzweige wenn nicht gedrueckt
    PHA                         ; Bitstellung retten 
    LDA (KEYTAB),Y              ; ASCII-Code aus Tabelle holen ($F5)
    CMP #$05                    ; groesser 4, dann keine Control-Taste
    BCS +                       ; verzweige wenn keine Control-Taste                    
    CMP #$03                    ; pruefe auf STOP-Taste
    BEQ +                       ; falls ja, dann verzweige
    ORA $028D                   ; Flag fuer Shift,
    STA $028D                   ; COMMOD.-Taste oder CTRL setzen
    BPL ++                      ; unbedingter Sprung
+   STY $CB                     ; Nummer der Taste merken
++  PLA                         ; Akku holen
+++ INY                         ; Zaehler fuer Taste erhoehen
    CPY #$41                    ; schon alle Tasten?
    BCS +                       ; wenn ja, verzweige
    DEX                         ; naechste Matrixspalte
    BNE -                       ; unbedingter Sprung
    SEC                         ; Carry stzen
    PLA                         ; gespeicherte Bitfolge holen
    ROL                         ; verschieben und
    STA CIA1_PRA                ; in Port A schreiben ,$DC00 Data Port A
    BNE --                      ; unbedingter Sprung
+   PLA

    LDA $028D                   ; Flag fuer Shift/CTRL
    ASL                         ; Wert mit 2 multiplizieren
    CMP #$08                    ; vergleiche mit CTRL
    BCC +                       ; nein, dann verzweige
    LDA #$06                    ; Tabellenzeiger fuer CTRL
+   TAX                         ; in X-Register uebertragen
    LDA KEYCODE,X               ; LFEA2, LOW-Byte der Tabellenadresse laden
    STA KEYTAB                  ; und in Zeigeradress LOW schreiben, $F5
    LDA KEYCODE+1,X             ; LFEA2, HIGH-Byte der Tabellenadresse laden
    STA KEYTAB+1                ; und in Zeigeradresse HIGH schreiben

    LDY $CB                     ; Nummer der Taste
    CPY #$40                    ;
    BCC +                       ; verzweige wenn kleiner $40
    LDA #$FF                    ; sonst lade #$FF um Tastendruck zu ueberspringen ???
    BNE ++                      ; unbedingter Sprung

+   LDA (KEYTAB),Y              ; ASCII-Wert aus Tabelle holen, ($F5)
++  TAX                         ; gedrueckte Taste ins X-Register retten
    CPY $C5                     ; mit letzter Taste vergleichen
    BEQ +                       ; verzweige wenn gleiche Taste
    LDY #$20                    ; Wert fuer Wiederholverzoegerung
    STY $028C                   ; in Wiederholverzoegerungszaehler

    BNE KEINE_TASTE             ; unbedingter Sprung
+   LDY $028C                   ; Wiederholverzoegerungszaehler
    BEQ +                       ; wenn abgelaufen, so verzweige
    DEC $028C                   ; herunterzaehlen
    BNE ++                      ; 0? nein, dann verzweige
+   DEC $028B                   ; Wiederholgeschwindikeitszaehler
    BNE ++                      ; 0? nein, dann verzweige
    LDY #$04                    ; Wiederholgeschwindikeitszaehler 
    STY $028B                   ; neu setzen
    LDY ANZ_TAST                ; Anzahl Zeichen im Tastaturpuffer
    DEY                         ; herunterzaehlen
    BPL ++                      ; mehr als ein Zeichen im Puffer, dann ignorieren

KEINE_TASTE
    LDY $CB                     ; Tastennummermatrixcode
    STY $C5                     ; umspeichern
    LDY $028D                   ; Lade Shift-Flag
    STY $028E                   ; entprellen?

    CPX #$FF                    ; Tastaturcode ungueltig?
    BEQ ++                      ; ja, dann ignorieren
    TXA                         ; Taste aus X-Register zurueck in Akku
    LDX ANZ_TAST                ; Anzahl Zeichen im Tastaturpuffer
    CPX $0289                   ; mit Maximalzahl vergleichen
    BCS ++                      ; Puffer voll, dann Zeichen ignorieren
    STA $0277,X                 ; Zeichen in Tastaturpuffer speichern
    INX                         ; Zeichenzahl erhoehen
    STX ANZ_TAST                ; und abspeichern

FIFO_SKIP:
++
    LDA #$7F                    ; Lade $7F
    STA CIA1_PRA                ; Schreibe $7F nach Port A (Alle Spalten deaktivieren)
    LDA CIA1_ICR                ; Acknowledge IRQ (Interrupt-Controller)

; IRQ-Ende
; Register wieder holen
    PLA
    TAY
    PLA
    TAX
    PLA
    RTI

; -------------------------------
; set CLOCK OUT
; -------------------------------
LF864
    LDA CIA2_PRA                ; $DD00 Data Port A
    ORA #%00010000               ; set bit 4: CLOCK OUT
    STA CIA2_PRA                ; $DD00 Data Port A
    RTS

; -------------------------------
; clear CLOCK OUT
; -------------------------------
LF86D
    LDA CIA2_PRA                ; $DD00 Data Port A
    AND #%11101111               ; clear bit 4: CLOCK OUT
    STA CIA2_PRA                ; $DD00 Data Port A
    RTS

; -------------------------------
; set DATA OUT
; -------------------------------
LF876
    LDA CIA2_PRA                ; $DD00 Data Port A
    ORA #%00100000               ; set bit 5: DATA OUT
    STA CIA2_PRA                ; $DD00 Data Port A
    RTS

; -------------------------------
; clear DATA OUT
; -------------------------------
LF87F
    LDA CIA2_PRA                ; $DD00 Data Port A
    AND #%11011111               ; clear bit 5: DATA OUT
    STA CIA2_PRA                ; $DD00 Data Port A
    RTS
---------------------------------
; -------------------------------
; Hardware-Rückmeldung aus DATA holen
; -------------------------------
LF888
    LDA CIA2_PRA              ; $DD00 Data Port A
    CMP CIA2_PRA              ; $DD00 Data Port A
    BNE LF888
    ASL
    RTS

; ----------------------------------------------------------------
; Ende der RS232 Uebertragung abwarten
; gibt es die hier wirklich?
; ----------------------------------------------------------------
LF892
   PHA                           ; Akku auf Stack retten
   LDA $02A1                     ; RS-232 NMI Status laden
   BEQ +                         ; nicht gesetzt, dann ok
-  LDA $02A1                     ; RS-232 NMI Status laden
   AND #$03                      ; Bit 0 = senden und Bit 1 = empfangen
   BNE -                         ; Warten bis beide Bits geloescht sind
   LDA #$10                      ; Bitwert fuer Interrupt durch
   STA CIA2_ICR                  ; 'Flag'-Leitung setzen
   LDA #$00                      ; RS-232 NMI Status
   STA $02A1                     ; zuruecksetzen
+  PLA                           ; Akku wieder holen
   RTS                           ; Ruecksprung

; -------------------------------
; Verzoegerungsschleife
; -------------------------------
LF8AB
    TXA
    LDX #$B8
-   DEX
    BNE -
    TAX
    RTS

; -------------------------------
; TALK senden
; -------------------------------
LF8B3
    ORA #$40                    ; Bit fuer TALK setzen
    !by $2C                     ; ueberspringe nachfolgenden Befehl
; -------------------------------
; LISTEN senden
; -------------------------------
LF8B6
    ORA #$20                    ; Bit fuer LISTEN setzen
    JSR TA1CE                   ; LF892, Ende der RS232 Uebertragung abwarten ???
.lF8BB
    PHA                         ; Akku merken
    BIT C3P0                    ; Noch Zeichen im Puffer ?, $94
    BPL +                       ; Verzweige wenn nein
    SEC                         ; Carry-Flag setzen
    ROR R2D2                    ; Bit für EOI setzen, $A3
    JSR TA1D1                   ; LF8EA, Byte auf IEC-Bus ausgeben

    LSR C3P0                    ; Flag fuer Zeichen im Puffer loeschen, $94
    LSR R2D2                    ; Flag fuer EOI loeschen, $A3
+   PLA                         ; Akku wieder holen
    STA BSOUR                   ; und im Puffer speichern, $95
    SEI                         ; Interruptflag stzen
    JSR TA1D4                   ; LF87F, clear bit 5 CIA2_PRA : DATA OUT
    CMP #$3F                    ; Akku kann nicht $3F sein
    BNE +                       ; unbedingter Sprung
    JSR TA1D7                   ; LF86D, clear bit 4 CIA2_PRA : CLOCK OUT
+   LDA CIA2_PRA                ; $DD00, Data Port A
    ORA #$08                    ; ATN HIGH stzen
    STA CIA2_PRA                ; $DD00, Data Port A
; Seundaeradresse nach LISTEN senden
.lF8E0                          
    SEI                         ; Interruptflag setzen
    JSR TA1CB                   ; LF864, set bit 4 in CIA2_PRA: CLOCK OUT
    JSR TA1D4                   ; LF87F, clear bit 5 CIA2_PRA : DATA OUT
    JSR TA1E0                   ; Verzoegerungsschleife

; -------------------------------
; Byte auf IEC-Bus ausgeben
; -------------------------------
LF8EA
    SEI                         ; Interruptflag setzen
    JSR TA1D4                   ; LF87F, clear bit 5 CIA2_PRA : DATA OUT
    JSR TA1DA                   ; Hardware-Rückmeldung aus DATA holen

    BCS .lF957                  ; DATA low, dann Laufwerk nicht vorhanden
    JSR TA1D7                   ; LF86D, clear bit 4 CIA2_PRA : CLOCK OUT
    BIT R2D2                    ; Bit fuer EOI gesetzt?
    BPL .lF904                  ; nein, dann verzweige
-   JSR TA1DA                   ; Hardware-Rückmeldung aus DATA holen
    BCC -                       ; warten bis Listener bereit
-   JSR TA1DA                   ; Hardware-Rückmeldung aus DATA holen
    BCS -                       ; warte auf DATA high
.lF904
    JSR TA1DA                   ; Hardware-Rückmeldung aus DDATA holen
    BCC .lF904                  ; warten bis bereit fuer Daten
    JSR TA1CB                   ; LF864, set bit 4 in CIA2_PRA: CLOCK OUT
    LDA #$08                    ; Bitzaehler fuer serielle
    STA COUNT                   ; Ausgabe setzen

-   LDA CIA2_PRA                ; $DD00, Data Port A
    CMP CIA2_PRA                ; $DD00, Data Port A
    BNE -                       ; verzweige wenn Aenderung

    ASL                         ; Datenbit in's Carry
    BCC +++                     ; DATA HIGH, dann 'TIME OUT'
    ROR BSOUR                   ; naechstes Bit fuer die Ausgabe
    BCS ++                      ; verzweige wenn Bit gesetzt
    JSR TA1DD                   ; LF876 set bit 5: DATA OUT
    BNE +                       ; unbedingter Sprung
++  JSR TA1D4                   ; LF87F clear bit 5 CIA2_PRA : DATA OUT
+   JSR TA1D7                   ; LF86D clear bit 4 CIA2_PRA : CLOCK OUT

    NOP                         ; Listener
    NOP                         ; 8 Microsekunden Zeit zur
    NOP                         ; Verarbeitung der
    NOP                         ; Daten geben

    LDA CIA2_PRA                ; $DD00 Data Port A
    AND #$DF                    ; DATA auf LOW
    ORA #$10                    ; und CLOCK auf HIGH setzen
    STA CIA2_PRA                ; $DD00 Data Port A
    DEC COUNT                   ; naechstes Bit
    BNE -                       ; mache weiter, wenn och nicht alle

    LDA #$04                    ; 4 als TIMER Wert setzen
    STA CIA1_TBHI               ; $DC07 Timer B High Byte
    LDA #$19                    ; Wert fuer Timer B
    STA CIA1_CRB                ; $DC0F Control Timer B
    LDA CIA1_ICR                ; $DC0D Interrupt control and status
-   LDA CIA1_ICR                ; $DC0D Interrupt control and status
    AND #$02                    ; TIMER B abgelaufen?
    BNE +++                     ; ja, dann 'TIME OUT'
    JSR TA1DA                   ; Hardware-Rückmeldung aus DATA holen
    BCS -                       ; warten auf DATA HIGH
    CLI                         ; Interruptflag loeschen
    RTS
---------------------------------
.lF957
    LDA #$80                    ; Geraet nicht vorhanden
    !by $2C
+++ LDA #$03                    ; "TIME OUT"
.lF95C
    ORA STATUS                  ; Statusflag testen
    STA STATUS                  ; und wieder setzen
    CLI                         ; Interruptflag loeschen
    CLC                         ; Carry loeschen
    BCC .lF9AE                  ; unbedingter Sprung

; -------------------------------
; Sekundaeradresse nach LISTEN senden
; -------------------------------
LF964
    STA BSOUR                   ; in Puffer speichern
    JSR .lF8E0                  ; Seundaeradresse ausgeben
.lF969
    LDA CIA2_PRA                ; $DD00 Data Port A
    AND #$F7                    ; ATN zuruecksetzen
    STA CIA2_PRA                ; $DD00 Data Port A
    RTS

; -------------------------------
; Sekunsaeradresse nach TALK senden
; -------------------------------
LF972
    STA BSOUR                   ; in Puffer speichern
    JSR .lF8E0                  ; Seundaeradresse ausgeben
    SEI                         ; Interruptflag setzen
    JSR TA1DD                   ; LF876 set bit 5 CIA2_PRA : DATA OUT
    JSR .lF969                  ; ATN zuruecksetzen
    JSR TA1D7                   ; LF86D clear bit 4 CIA2_PRA : CLOCK OUT
-   JSR TA1DA                   ; Hardware-Rückmeldung aus DATA holen
    BMI -                       ; auf CLOCK HIGH warten
    CLI                         ; Interruptflag loeschen
    RTS

; -------------------------------
; IECOUT ein Byte auf IEC-Bus
; -------------------------------
LF988
    BIT C3P0                    ; noch ein Byte auszugeben ?
    BMI +                       ; verzweige wenn ja
    SEC                         ; setze Carry-Flag
    ROR C3P0                    ; Flag fuer gepuffertes Byte setzen
    BNE ++                      ; unbedingter Sprung
+   PHA                         ; Byte merken
    JSR TA1D1                   ; LF8EA, Byte auf IEC-Bus ausgeben
    PLA                         ; Byte zurueckholen und
++  STA BSOUR                   ; in Ausgaberegister holen
    CLC                         ; Carry loeschen
    RTS

; -------------------------------
; UNTALK senden
; -------------------------------
LF99A
    SEI                         ; Interruptflag setzen
    JSR TA1CB                   ; LF864 set bit 4 in CIA2_PRA: CLOCK OUT
    LDA CIA2_PRA                ; $DD00 Data Port A
    ORA #$08                    ; ATN auf HIGH setzen
    STA CIA2_PRA                ; $DD00 Data Port A
    LDA #$5F                    ; Kennzeichnung fuer UNTALK
    !by $2C                     ; ueberspringe den naechsten Befehl

; -------------------------------
; UNLISTEN senden
; -------------------------------
LF9A9
    LDA #$3F                    ; Kennzeichnung fuer UNLSITEN
    JSR .lF8BB                  ; ausgeben
.lF9AE
    JSR .lF969                  ; ATN zuruecksetzen
.lF9B1
    TXA                         ; X-Register merken
    LDX #$0A                    ; Warteschleife von
-   DEX                         ; ca. 40 Microsekunden
    BNE -                       ; abwarten
    TAX
    JSR TA1D7                   ; LF86D clear bit 4 CIA2_PRA : CLOCK OUT
    JMP TA1D4                   ; LF87F clear bit 5 CIA2_PRA : DATA OUT

; -------------------------------
; IECIN ein Zeichen vom IEC-Bus holen
; -------------------------------
LF9BE
    SEI                         ; Interruptflag setzen
    LDA #$00                    ; 0 laden
    STA COUNT                   ; Zaehler loeschen
    JSR TA1D7                   ; LF86D clear bit 4 CIA2_PRA : CLOCK OUT
-   JSR TA1DA                   ; Hardware-Rückmeldung aus DATA holen
    BPL -                       ; warte auf CLOCK LOW
--  LDA #$01                    ; lade Wert fuer Timer
    STA CIA1_TBHI               ; $DC07 Timer B High Byte
    LDA #$19                    ; Timer starten
    STA CIA1_CRB                ; $DC0F Control Timer B
    JSR TA1D4                   ; LF87F clear bit 5 CIA2_PRA : DATA OUT
    LDA CIA1_ICR                ; $DC0D Interrupt control and status
-   LDA CIA1_ICR                ; $DC0D Interrupt control and status
    AND #$02                    ; Timer B abgelaufen?
    BNE +                       ; ja, 'TIME OUT'
    JSR TA1DA                   ; Hardware-Rückmeldung aus DATA holen
    BMI -                       ; warte auf CLOCK HIGH
    BPL ++                      ; unbedingter Sprung
+   LDA COUNT                   ; lade Zaehler
    BEQ +                       ; verzweige wenn 0
    LDA #$02                    ; 'TIME OUT'
    JMP .lF95C                  ; Status setzen

; Timer war abgelaufen
+   JSR TA1DD                   ; LF876 set bit 5 CIA2_PRA : DATA OUT
    JSR TA1D7                   ; LF86D clear bit 4 CIA2_PRA : CLOCK OUT
    LDA #$40                    ; Bit 6 fuer 'END OR IDENTIFY'
    ORA STATUS                  ; Statusflag setzen und
    STA STATUS                  ; wieder abspeichern
    INC COUNT                   ; Zaehler erhoehen
    BNE --                      ; unbedingter Sprung

; Bytetransfer
++  LDA #$08                    ; #$08 als
    STA COUNT                   ; Bitzaehler setzen

--  LDA CIA2_PRA                ; $DD00 Data Port A
    CMP CIA2_PRA                ; $DD00 Data Port A
    BNE --                      ; warte bis Datenport stabil ist

    ASL                         ; Datenbit in's Carry schieben
    BPL --                      ; erneut holen, wenn CLOCK = 1
    ROR $A4                     ; Datenbit in Puffer schieben
-   LDA CIA2_PRA                ; $DD00 Data Port A
    CMP CIA2_PRA                ; $DD00 Data Port A
    BNE -                       ; warte bis Datenport stabil ist
    ASL                         ; Datenbit in's Carry schieben
    BMI -                       ; erneut, wenn CLOCK = 0
    DEC COUNT                   ; Bitzaehler verringern
    BNE --                      ; verzweige wenn noch nicht alle bits gesendet
    JSR TA1DD                   ; LF876 set bit 5 CIA2_PRA : DATA OUT
    BIT STATUS
    BVC +                       ; verzweige wenn kein 'EOI'
    JSR .lF9B1                  ; warten und clear CLOCK und DATA
+   LDA $A4                     ; lade Datenbyte in Akku
    CLI                         ; Interruptflag loeschen
    CLC                         ; Carry loeschen
    RTS

; -------------------------------
; Eingabe EAN 13
; -------------------------------
LFA31
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$0D                 ; Spalte,Reihe
    !pet "ziffernfolge fuer ean 13 eingeben",$40
    !by $0C,$17
    !pet "daten eingeben!",$00
-   LDA #rot                    ; $06
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $06,$0F,$0F             ; Spalte,Zeile,Textfeld (Daten EAN 13)
    !by $80

    LDA #normal                 ; Normal
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $06,$0F,$0F             ; Daten EAN 13

    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    JMP .lEBF1                  ; JMP .lE96E, zurueck zu Etikett bearbeiten
---------------------------------
+   JSR TA198                   ; LFC30, Pruefsummenberechnung fuer Barcodes EAN 8 und EAN 13
    BCS -                       ; Fehler, dann zurueck zu Daten eingeben
,FA90 LDA #$00
,FA92 STA $29
,FA94 STA $1C
,FA96 LDY #$03
,FA98 LDX #$01
,FA9A JSR TA00C                 ; LEC31
,FA9D DEY
,FA9E BNE $FA98
,FAA0 STY SPALTE                ; $0B
,FAA2 LDY #$0F                  ; Textfeldnummer, 'Date EAN 13'
,FAA4 JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,FAA7 LDY SPALTE                ; $0B
,FAA9 LDA (TF_P),Y
,FAAB AND #$0F
,FAAD TAX
,FAAE LDA $FB38,X
,FAB1 STA $26
,FAB3 INC SPALTE                ; $0B
,FAB5 LDY SPALTE                ; $0B
,FAB7 LDA (TF_P),Y
,FAB9 AND #$0F
,FABB TAX
,FABC LDA $FB42,X
,FABF STA $27
,FAC1 LDX #$04
,FAC3 STX ZEILE                 ; $0A
,FAC5 BIT $26
,FAC7 BMI $FAD3
,FAC9 LDA #$00
,FACB ASL $27
,FACD ROL
,FACE ASL $27
,FAD0 ROL
,FAD1 BCC $FADB
,FAD3 LDA $27
,FAD5 AND #$03
,FAD7 LSR $27
,FAD9 LSR $27
,FADB TAX
,FADC INX
,FADD JSR TA00C                 ; LEC31
,FAE0 DEC ZEILE                 ; $0A
,FAE2 BNE $FAC5
,FAE4 ASL $26
,FAE6 CPY #$06
,FAE8 BNE $FAB3
,FAEA LDY #$05
,FAEC LDX #$01
,FAEE JSR TA00C                 ; LEC31
,FAF1 DEY
,FAF2 BNE $FAEC
,FAF4 INC SPALTE                ; $0B
,FAF6 LDY SPALTE                ; $0B
,FAF8 LDA (TF_P),Y
,FAFA AND #$0F
,FAFC TAX
,FAFD LDA $FB42,X
,FB00 STA $27
,FB02 LDX #$04
,FB04 STX ZEILE                 ; $0A
,FB06 LDA #$00
,FB08 ASL $27
,FB0A ROL
,FB0B ASL $27
,FB0D ROL
,FB0E TAX
,FB0F INX
,FB10 JSR TA00C                 ; LEC31
,FB13 DEC ZEILE                 ; $0A
,FB15 BNE $FB06
,FB17 CPY #$0C
,FB19 BNE $FAF4
,FB1B LDY #$03
,FB1D LDX #$01
,FB1F JSR TA00C                 ; LEC31
,FB22 DEY
,FB23 BNE $FB1D
,FB25 BCS $FB2D
,FB27 CLC
,FB28 JSR TA102                 ; LEC17
,FB2B BCC $FB27
,FB2D CLC
,FB2E JSR TA102                 ; LEC17
,FB31 BCC $FB2D
,FB33 DEC F_BCODE               ; $5B Flag
,FB35 JMP $A132                   ; LED56, Codegroesse Darstellung Balkencode
---------------------------------
,FB38 !by $00,$2C,$34,$38,$4C,$64,$70,$54
,FB40 !by $58,$68
---------------------------------
,FB42 !by $90,$54,$45,$30,$09,$18,$03,$21
,FB4A !by $12,$81

; -------------------------------
; Eingabe EAN 8
; -------------------------------
LFB4C
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$0D                 ; Spalte,Reihe
    !pet "ziffernfolge fuer ean 8 eingeben",$40
    !by $0C,$17
    !pet "daten eingeben!",$00
-   LDA #rot                    ; $06
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $06,$0F,$10             ; Spalte,Zeile,Textfeld (Daten EAN 8)
    !by $80

    LDA #normal                 ; Normal
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $06,$0F,$10             ; Daten EAN 8

    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    JMP .lEBF1                  ; JMP .lE96E, zurueck zu Etikett bearbeiten
---------------------------------
+   JSR TA198                   ; LFC30, Pruefsummenberechnung fuer Barcodes EAN 8 und EAN 13
    BCS -                       ; Pruefsummenfehler, dann zurueck
,FBAA LDA #$00
,FBAC STA $29
,FBAE STA $1C
,FBB0 LDY #$03
,FBB2 LDX #$01
,FBB4 JSR TA00C                 ; LEC31
,FBB7 DEY
,FBB8 BNE $FBB2
,FBBA STY SPALTE                ; $0B
,FBBC LDY #$10                  ; Textfeldnummer, 'Daten EAN 8'
,FBBE JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,FBC1 LDY SPALTE                ; $0B
,FBC3 LDA (TF_P),Y
,FBC5 AND #$0F
,FBC7 TAX
,FBC8 LDA $FB42,X
,FBCB STA $27
,FBCD LDX #$04
,FBCF STX ZEILE                 ; $0A
,FBD1 LDA #$00
,FBD3 ASL $27
,FBD5 ROL
,FBD6 ASL $27
,FBD8 ROL
,FBD9 TAX
,FBDA INX
,FBDB JSR TA00C                 ; LEC31
,FBDE DEC ZEILE                 ; $0A
,FBE0 BNE $FBD1
,FBE2 INC SPALTE                ; $0B
,FBE4 CPY #$03
,FBE6 BNE $FBC1
,FBE8 LDY #$05
,FBEA LDX #$01
,FBEC JSR TA00C                 ; LEC31
,FBEF DEY
,FBF0 BNE $FBEA
,FBF2 LDY SPALTE                ; $0B
,FBF4 LDA (TF_P),Y
,FBF6 AND #$0F
,FBF8 TAX
,FBF9 LDA $FB42,X
,FBFC STA $27
,FBFE LDX #$04
,FC00 STX ZEILE                 ; $0A
,FC02 LDA #$00
,FC04 ASL $27
,FC06 ROL
,FC07 ASL $27
,FC09 ROL
,FC0A TAX
,FC0B INX
,FC0C JSR TA00C                 ; LEC31
,FC0F DEC ZEILE                 ; $0A
,FC11 BNE $FC02
,FC13 INC SPALTE                ; $0B
,FC15 CPY #$07
,FC17 BNE $FBF2
,FC19 LDY #$03
,FC1B LDX #$01
,FC1D JSR TA00C                 ; LEC31
,FC20 DEY
,FC21 BNE $FC1B
,FC23 BCS $FC2B
,FC25 CLC
,FC26 JSR TA102                 ; LEC17
,FC29 BCC $FC25
,FC2B INC F_BCODE               ; $5B Flag
,FC2D JMP $A132                   ; LED56, Codegroesse Darstellung Balkencode

; -------------------------------
; Pruefsummenberechnung fuer Barcodes EAN 8 und EAN 13
; -------------------------------
LFC30
    LDY #$00
; Diese Routine setzt den Wert in Y auf die Anzahl der Stellen im aktuell ausgewaehltem Textfeld +1
-   LDA (TF_P),Y
    BMI +                       ; wenn #$80 gefunden wurde, dann zeigt Y auf das Textfeld Ende +1
    INY
    BNE -                       ; loop bis Textfeld Ende +1

; berechne die Pruefsummesumme der eingegbenen Zahl
+   DEY                         ; stelle Y nun auf das Textfeld Ende
    LDA (TF_P),Y                ; die letzte Stelle beinhaltet die Pruefsumme des CODES
    AND #$0F                    ; maskiere die obern 4 bit
    STA $1C                     ; speichere den Wert in den Zwischenspeicher

    DEY                         ; stelle Y auf den naechsten zu holenden Wert
    LDA #$00                    ; Lade 0 in Accu
    SED                         ; setze Dezimal Flag

; hole den naechsten Wert und multipliziere mit 3
; loop
--  LDX #$03                    ; Lade x mit multiplikator
-   CLC                         ; loesche Carry-Flag
    ADC (TF_P),Y                ; Lade einen Wert und addiere zum Accu
    DEX                         ; Multiplikator runterzaehlen
    BNE -                       ; wiederhole 3 mal
; hole naechsten Wert und addiere zum Accu
    DEY                         ; stelle Y auf den naechsten zu holenden Wert
    BMI +                       ; wenn #$80, dann alle Werte abgearbeitet
    CLC                         ; loesche Carry-Flag
    ADC (TF_P),Y                ; addiere Wert zum Accu
    DEY                         ; stelle Y auf den naechsten zu holenden Wert
    BPL --                      ; verzweige, wenn Y nicht < 0
; alle Werte wurden abgearbeitet

; im Accu befindest sich nun das Ergebniss der Berechnung
+   STA $09                     ; speicher den berechneten Wert nach $09 (Zwischenspeicher)
    LDA #$10                    ; lade Accu mit 10, dezimalmodus ist noch an
    SEC                         ; setze Carry-Flag fuer Subtraktion
    SBC $09                     ; subtrahiere berechneten Wert von 10
    CLD
    AND #$0F                    ; maskiere die oberen 4 bits
    CMP $1C                     ; vergleiche mit zuvor gespeichertem Wert fuer die Pruefsumme
    BNE +                       ; keine Uebereinstimmung, dann Fehler 'preufsumme falsch'

; Die Pruefsumme war ok
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0B,$17                 ; Spalte,Reihe
    !pet " daten eingeben! ",$00

    CLC                         ; loesche Carry-Flag, fuer alles in Ordnung
    RTS

; bei einem Fehler geht es hier weiter
+   JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0B,$17,bl_weiss        ; Spalte,Reihe,Atribut
    !pet "pruefsumme falsch",normal,$00

    SEC                         ; setze Carry-Flag fuer Fehler
    RTS
---------------------------------

; beinhaltet $03,$04
,FC97 !by $06,$11,$09,$18,$05,$14,$0C,$03
,FC9F !by $12,$0A

,FCA1 !by $51,$49,$58,$45,$54,$4C,$43,$52
,FCA9 !by $4A,$46,$91,$89,$98,$85,$94,$8C
,FCB1 !by $83,$92,$8A,$86,$D1,$C9,$D8,$C5
,FCB9 !by $D4,$CC

,FCBB !by $40,$20,$10,$80


LFCBF ASL
,FCC0 STA $26
,FCC2 LDA #$00
,FCC4 ROL
,FCC5 ASL $26
,FCC7 ROL
,FCC8 ASL $26
,FCCA TAX
,FCCB TYA
,FCCC PHA
,FCCD LDA $FCBB,X
,FCD0 STA $27
,FCD2 LDY #$05
,FCD4 LDX #$02
,FCD6 ASL $26
,FCD8 BCS $FCDC
,FCDA LDX #$01
,FCDC JSR TA00C                 ; LEC31
,FCDF LDX #$02
,FCE1 ASL $27
,FCE3 BCS $FCE7
,FCE5 LDX #$01
,FCE7 JSR TA00C                 ; LEC31
,FCEA DEY
,FCEB BNE $FCD4
,FCED PLA
,FCEE TAY
,FCEF RTS

; -------------------------------
; Eingabe CODE 39
; -------------------------------
LFCF0
    JSR TA06C                   ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                   ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $03,$0D                 ; Spalte,Reihe
    !pet "ziffernfolge fuer code 39 eingeben",$40
    !by $0C,$17
    !pet "daten eingeben!",$00
    LDA #rot                    ; $06
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA030                   ; LA817, Textfeld x an Bildschirmposition Spalte,Zeile schreiben
    !by $06,$0F,$11             ; Spalte,Zeile,Textfeld (Daten Code 39)
    !by $80

    LDA #normal                 ; Normal
    JSR TA156                   ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben

    JSR TA0CF                   ; LA6F3, Eingabefeld bearbeiten
    !by $06,$0F,$11             ; Daten Code 39

    CMP #RETURN                 ; Return gedrueckt?
    BNE +
    JMP .lEBF1                  ; JMP .lE96E, zurueck zu Etikett bearbeiten
---------------------------------
+   LDA #$00
,FD4D STA $29
,FD4F STA $1C
,FD51 LDA #$C6
,FD53 JSR $A0AE
,FD56 LDY #$11                  ; Textfeldnummer, 'Daten Code 39'
,FD58 JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
,FD5B LDY #$10
,FD5D LDA (TF_P),Y
,FD5F CMP #$20
,FD61 BNE $FD66
,FD63 DEY
,FD64 BPL $FD5D
,FD66 INY
,FD67 STY SPALTE                ; $0B
,FD69 LDY #$00
,FD6B CPY SPALTE                ; $0B
,FD6D BCS $FDE1
,FD6F LDA (TF_P),Y
,FD71 CMP #$30
,FD73 BCC $FD96
,FD75 CMP #$5A
,FD77 BCS $FD96
,FD79 CMP #$3A
,FD7B BCS $FD85
,FD7D AND #$0F
,FD7F TAX
,FD80 LDA $FC97,X
,FD83 BNE $FD90
,FD85 CMP #$41
,FD87 BCC $FD96
,FD89 AND #$1F
,FD8B TAX
,FD8C DEX
,FD8D LDA $FCA1,X
,FD90 JSR $A0AE
,FD93 JMP $FDDE
---------------------------------
,FD96 LDX #$C3
,FD98 CMP #$2D
,FD9A BEQ $FDA0
,FD9C LDX #$D2
,FD9E CMP #$2E
,FDA0 BEQ $FDA6
,FDA2 LDX #$CA
,FDA4 CMP #$20
,FDA6 BNE $FDAB
,FDA8 TXA
,FDA9 BNE $FD90
,FDAB LDX #$E0
,FDAD CMP #POS_Y                 ; $24
,FDAF BEQ $FDB5
,FDB1 LDX #$D0
,FDB3 CMP #$2F
,FDB5 BEQ $FDBB
,FDB7 LDX #$B0
,FDB9 CMP #$2B
,FDBB BEQ $FDC1
,FDBD LDX #$70
,FDBF CMP #$25
,FDC1 BNE $FDDE
,FDC3 STX $26
,FDC5 TYA
,FDC6 PHA
,FDC7 LDY #$05
,FDC9 LDX #$01
,FDCB JSR TA00C                 ; LEC31
,FDCE LDX #$02
,FDD0 ASL $26
,FDD2 BCS $FDD6
,FDD4 LDX #$01
,FDD6 JSR TA00C                 ; LEC31
,FDD9 DEY
,FDDA BNE $FDC9
,FDDC PLA
,FDDD TAY
,FDDE INY
,FDDF BNE $FD6B
,FDE1 LDA #$C6
,FDE3 JSR $A0AE
,FDE6 BCS $FDEE
,FDE8 CLC
,FDE9 JSR TA102                 ; LEC17
,FDEC BCC $FDE8
,FDEE JMP $A132                   ; LED56, Codegroesse Darstellung Balkencode
---------------------------------
; -------------------------------
; Lade Balkencode
; -------------------------------
LFDF1
    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm

    LDA #$F0
    JSR TA087                 ; LB541, sende Dateiname
    !pet "0:barc",$00
    JSR TA120                 ; LF9A9, UNLISTEN senden
,FE03 JSR $A0E4                 ; LB578
,FE06 BEQ $FE6E
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $07,$0D               ; Spalte,Reihe
    !pet "balkencode-diskette ist",$40
    !by $0C,$0F
    !pet "nicht eingelegt!",$40
    !by $01,$17,bl_weiss      ; Spalte,Reihe,Atribut
    !pet "diskette einlegen und return druecken",normal,$00
---------------------------------
-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; keine Taste
    CMP #RETURN                 ; Return gedrueckt?
    BNE -                       ; kein RETURN gedrueckt
    JMP .lEE4C                  ; loesche Flag F_BCODE, zurueck zur Etikettendarstellung
---------------------------------
,FE6E LDA #$00
,FE70 STA STATUS
,FE72 LDA #LWNR                 ; Laufwerksnummer
,FE74 JSR TA08A                 ; LF8B3, TALK senden
,FE77 LDA #$60
,FE79 JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
,FE7C JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,FE7F STA FILE_VEC
,FE81 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,FE84 STA FILE_VEC+1
,FE86 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
,FE89 LDY #$00
,FE8B STA (FILE_VEC),Y
,FE8D INC FILE_VEC
,FE8F BNE $FE93
,FE91 INC FILE_VEC+1
,FE93 LDA STATUS
,FE95 BEQ $FE86
,FE97 JSR TA1B3                 ; LF99A, UNTALK senden
,FE9A LDA #$E0
,FE9C JSR TA0A8                 ; LB56A, CLOSE
,FE9F JMP $8800
---------------------------------
; -------------------------------
;Zeiger auf Tastaturdekodiertabelle
; -------------------------------
KEYCODE
LFEA2
    !word MODE1
    !word MODE1 + $40
    !word MODE1 + $80
    !word MODE1 + $C0
---------------------------------
PREP_MEM
LFEAA
; Kopiere Speicherbereich $A000 - $BFFF in das darunterliegende RAM
; und loesche Speicherbereich $8000 - $9FFF mit $00
    LDA #$A0
    STA $04
    LDA #$80
    STA $06
    LDA #$00
    STA $03
    STA $05
    LDX #$20
    LDY #$00
-   LDA ($03),Y
    STA ($03),Y
    LDA #$00
    STA ($05),Y
    INY
--  BNE -
    INC $04
    INC $06
    DEX
    BNE --

; kopiere Speicherbereich $D000 in das darunterliegende RAM ab $C000
; in $CB00 steht spaeter die Tastaturtabelle
    LDA #$E3                    ; schalte $D000 - $DFFF auf RAM
    STA $01

    LDA #$2F
    STA $00                     ; setze 'data direction I/O port'
; ($03) steht auf $C000
    LDA #$00
    STA $05
    LDA #$D0
    STA $06
    LDX #$10
-   LDA ($05),Y
    STA ($03),Y
    INY
--  BNE -
    INC $04
    INC $06
    DEX
    BNE --

    LDA #$E7                  ; schalte $D000 - $DFFF auf I/O
    STA $01

; fuelle Speicherbereich $0002 bis $03FF mit $00
    LDA #$00
    LDX #$00
-   STA $0002,X
    STA $0200,X
    STA $0300,X
    INX
    BNE -
    RTS
---------------------------------
IRQ
LFF03
    CLD
; rette Register
    PHA
    TXA
    PHA
    TYA
    PHA
; go IRQ
    JMP TA063                 ; LA3A1 IRQ_ROUTINE
---------------------------------
NMI
LFF0C SEI
,FF0D RTI

LFF0E
!fill $FFFA-LFF0E,$FF

,FFFA !word NMI_vector
,FFFC !word RESET_vector
,FFFD !word IRQ_vector
	
