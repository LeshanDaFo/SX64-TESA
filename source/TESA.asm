
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
    JMP LABEA
---------------------------------
    JMP LBB68                 ; diskette ist schreibgeschuetzt
---------------------------------
    JMP LAB75
---------------------------------
TA084 JMP LB766                 ; Menue *speichern*
---------------------------------
TA087 JMP LB541                 ; sende Dateiname
---------------------------------
TA08A JMP LF8B3                 ; TALK senden
---------------------------------
    JMP LB43C
---------------------------------
TA090 JMP LA85D                 ; Beschreibe ein Textfeld in TF_TAB mit Text
---------------------------------
    JMP LAB27
---------------------------------
    JMP LABC8
---------------------------------
    JMP LB0CD
---------------------------------
    JMP LF14E
---------------------------------
    JMP LEB34                 ; Menue *strichcode*
---------------------------------
TA0A2 JMP LE7CC                 ; initialisiere Hauptmenu
---------------------------------
    JMP LB0F1
---------------------------------
TA0A8 JMP LB56A                 ; CLOSE ???
---------------------------------
TA0AB JMP LAC37                 ; Loesche Speicherbereich $0400 - $83FF
---------------------------------
    JMP LFCBF
---------------------------------
TA0B1 JMP LAE20                 ; Grafikbildschirm aktualisieren
---------------------------------
; wird nicht angesprungen, eventuell fuer Erweiterungen?
TA0B4 JMP LAF9F
---------------------------------
TA0B7 JMP LA888                 ; schreibe Text 'daten eingeben!' in Bildschirm
---------------------------------
    JMP LB6C1                 ; $0:bf*
---------------------------------
TA0BD JMP LBC2F                 ; Menue * diskette *
---------------------------------
    JMP LB44E
---------------------------------
    JMP LE637
---------------------------------
TA0C6 JMP LE3CD                 ; Menue *drucken*
---------------------------------
    JMP LF08B
---------------------------------
TA0CC JMP LFA31                 ; Eingabe EAN 13
---------------------------------
TA0CF JMP LA6F3                 ; Eingabefeld bearbeiten
---------------------------------
    JMP LAE7C
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
    JMP LB578
---------------------------------
TA0E7 JMP LF693                 ; hole eine Taste aus Tastaturpuffer
---------------------------------
TA0EA JMP LADC9                 ; schalte auf Bitmap Mode
---------------------------------
    JMP LEA5C                 ; 0:extgraf
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
    JMP LAB5D
---------------------------------
    JMP LABA4
---------------------------------
TA10B JMP LB515                 ; Pruefe PFEIL_L (nur im Grafikmodus)
---------------------------------
    JMP LAB3A
---------------------------------
TA111 JMP LF964                 ; Sekundaeradresse nach LISTEN senden
---------------------------------
    JMP LBB92                 ; Abfrage "soll wirklich das etikett .... geloescht werden"
---------------------------------
    JMP LB74B
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
    JMP LAAC1
---------------------------------
TA12F JMP LEC4B                 ; Eingabe 2 aus 5
---------------------------------
    JMP LED56                 ; Codegroesse Darstellung Balkencode
---------------------------------
TA135 JMP LA97E                 ; Wandle Anzahl Bahnen in Hexwert nach $16
---------------------------------
    JMP LE778
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
    JMP LB6E1
---------------------------------
    JMP LB695
---------------------------------
TA153 JMP LE000                 ; Menue *einrichten*
---------------------------------
TA156 JMP LA43B                 ; ein Zeichen in Bildschirmspeicher schreiben
---------------------------------
    JMP LB3E5
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
    JMP LB721
---------------------------------
TA16E JMP LE4D8                 ; etiketten werden gedruckt!
---------------------------------
TA171 JMP LE91D                 ; Grafik-Sondersymbole
---------------------------------
    JMP LEAE4
---------------------------------
TA177 JMP LBD55                 ; Lese Headerdaten aus File
---------------------------------
    JMP LF13E
---------------------------------
TA17D JMP LE823                 ; Menue *hauptmenue*
---------------------------------
    JMP LED33
---------------------------------
TA183 JMP LBE1C                 ; Disk Inhalt
---------------------------------
    JMP LABC1
---------------------------------
TA189 JMP LF8B6                 ; LISTEN senden
---------------------------------
TA18C JMP LA485                 ; Bildschirmmaske erstellen
---------------------------------
TA18F JMP LA651                 ; setze Zeiger auf den Start eines Eintrages in TF_TAB
---------------------------------
TA192 JMP LF55D                 ; Ausschaltmeldung
---------------------------------
    JMP LBD29                 ; 0:bdf
---------------------------------
TA198 JMP LFC30                 ; Pruefsummenberechnung fuer Barcodes EAN 8 und EAN 13
---------------------------------
    JMP LABAF
---------------------------------
    JMP LF12E
---------------------------------
    JMP LAB81
---------------------------------
TA1A4 JMP LF972                 ; Sekunsaeradresse nach TALK senden
---------------------------------
    JMP LB4BE
---------------------------------
    JMP LE61D
---------------------------------
TA1AD JMP LA663
---------------------------------
TA1B0 JMP LF988                 ; IECOUT ein Byte auf IEC-Bus
---------------------------------
TA1B3 JMP LF99A                 ; UNTALK senden
---------------------------------
    JMP LF1CA
---------------------------------
TA1B9 JMP LAB35                 ; addiere X zu Y
---------------------------------
    JMP LAA65
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
    JSR TA13E                 ; LAC50, Speicherbereich $9B00- $9EFF mit Leerzeichen befuellen
    PLA
    STA $03
    LDA #$18 
    STA $04
    LDA #$00 
    STA $1A
    LDA #$9B 
    STA $1B
    LDX #$03 
    ASL $03
    ROL $04
    DEX
    BNE $AA7A
    LDY #$00 
    STY ZEILE                 ; $0A
    LDX CRSR_HORHE             ; Cursor Hoehe, $18
    TXA
    PHA
    LDY ZEILE                 ; $0A
    LDA ($03),Y
    STA $06
    LDY #$08 
    STY SPALTE                ; $0B
    LDY #$00 
    LDA #$20 
    ASL $06
    BCC $AA9D
    LDA #$C0 
    LDX CRSR_BREITE            ; Cursor Breite, $17
    STA ($1A),Y
    INY
    DEX
    BNE $AA9F
    DEC SPALTE                    ; $0B
    BNE $AA95
    CLC
    LDA $1A
    ADC #$20 
    STA $1A
    BCC $AAB4
    INC $1B
    PLA
    TAX
    DEX
    BNE $AA87
    LDY ZEILE                 ; $0A
    INY
    CPY #$08 
    BNE $AA83
    RTS
---------------------------------
LAAC1 LDA #$00 
    SEC
    SBC #$20 
    STA $1A
    LDA #$9B 
    SBC #$00 
    STA $1B
    LDY #$08 
    STY ZEILE                 ; $0A
    LDA $1A
    STA $03
    LDA $1B
    STA $04
    LDY #$20 
    LDA ($1A),Y
    ASL
    ASL
    STA $1C
    LDY #$08 
    STY SPALTE                ; $0B
    LDY #$20 
    LDA ($03),Y
    ASL
    ASL
    BNE $AAFA
    LDX $1C
    STA $1C
    BEQ $AAF7
    JSR $A10E
    JMP $AB03
---------------------------------
    LDX $1C
    STA $1C
    BNE $AB03
    JSR $A1A1
    CLC
    LDA $03
    ADC CRSR_BREITE            ; Cursor Breite, $17
    STA $03
    BCC $AB0E
    INC $04
    DEC SPALTE                    ; $0B
    BNE $AAE6
    LDY CRSR_HORHE             ; Cursor Hoehe, $18
    CLC
    LDA $1A
    ADC #$20 
    STA $1A
    BCC $AB1F
    INC $1B
    DEY
    BNE $AB14
    DEC ZEILE                 ; $0A
    BNE $AAD2
    RTS
---------------------------------
LAB27 TYA
-   CLC
    ADC #$20 
    DEX
    BNE -
    TAY
    RTS

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
    LDX CRSR_HORHE             ; Cursor Hoehe, $18
    JSR $A093                 ; LAB27
    LDA ($03),Y
    ASL
    ASL
    BNE $AB48
    RTS
---------------------------------
    LDX CRSR_BREITE            ; Cursor Breite, $17
    JSR TA126                 ; LAB30, subtrahiere X von Y
    LDA ($03),Y
    ASL
    ASL
    BEQ $AB54
    RTS
---------------------------------
    LDX CRSR_BREITE            ; Cursor Breite, $17
    JSR TA1B9                 ; LAB35, addiere X zu Y
    JSR $A07B
    RTS
---------------------------------
LAB5D TYA
    PHA
    JSR $A081
    DEY
    JSR $A081
    TYA
    SEC
    SBC #$20 
    TAY
    JSR $A081
    INY
    JSR $A081
    PLA
    TAY
    RTS
---------------------------------
LAB75 LDA ($03),Y
    ASL
    ASL
    BNE $AB7C
    RTS
---------------------------------
    LDA #$FF 
    STA ($03),Y
    RTS
---------------------------------
LAB81 LDY #$20 
    LDX CRSR_HORHE             ; Cursor Hoehe, $18
    JSR $A093                 ; LAB27
    LDA ($03),Y
    ASL
    ASL
    BEQ $AB8F
    RTS
---------------------------------
    LDX CRSR_BREITE            ; Cursor Breite, $17
    JSR TA126                 ; LAB30, subtrahiere X von Y
    LDA ($03),Y
    ASL
    ASL
    BNE $AB9B
    RTS
---------------------------------
    LDX CRSR_BREITE            ; Cursor Breite, $17
    JSR TA1B9                  ; LAB35, addiere X zu Y
    JSR $A07B
    RTS
---------------------------------
LABA4 DEY
    JSR $A105
    INY
    INY
    JSR $A105
    DEY
    RTS
---------------------------------
LABAF JSR $A096
    JSR $A105
    LDX #$02 
    JSR $A093                 ; LAB27
    JSR $A105
    JSR $A096
    RTS
---------------------------------
LABC1 JSR $A108
    JSR $A19B
    RTS
---------------------------------
LABC8 TYA
    SEC
    SBC #$20 
    TAY
    RTS
---------------------------------
LABCE INY
    JSR $A186
    LDX #$01 
    JSR $A093                 ; LAB27
    DEY
    JSR $A186
    JSR $A096
    DEY
    JSR $A186
    JSR $A096
    INY
    JSR $A186
    RTS
---------------------------------
LABEA TYA
    PHA
    LDY #$00 
    LDX CRSR_HORHE             ; Cursor Hoehe, $18
    DEX
    BEQ $ABFA
    INY
    INY
    INY
    INY
    DEX
    BNE $ABF3
    LDX CRSR_BREITE            ; Cursor Breite, $17
    DEX
    BEQ $AC03
    INY
    DEX
    BNE $ABFF
    LDA $AC27,Y
    TAX
    PLA
    TAY
    DEX
    BPL $AC0D
    RTS
---------------------------------
    BNE $AC12
    JMP $A105
---------------------------------
    DEX
    BNE $AC18
    JMP $A108
---------------------------------
    DEX
    BNE $AC1E
    JMP $A19B
---------------------------------
    DEX
    BNE $AC24
    JMP $A186
---------------------------------
    JMP TA066                 ; LABCE
---------------------------------
    !by $00,$01,$01,$02,$01,$01,$01,$02
    !by $01,$01,$04,$04,$03,$03,$04,$05

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
    STA $03
    LDA #>BSSTART             ; Bildschirmposition High byte
    STA $04
    SEC
    LDA ET_BYTEY
    SBC $1F
    STA FILE_VEC
    BEQ $ACD6
    BCS $ACD8

    LDA #$00 
    CMP #$19 

    BCC $ACDE
    LDA #$19 
    STA ZEILE                 ; $0A
    DEC FILE_VEC
    SEC
    LDA ET_BYTEX
    SBC $20
    STA FILE_VEC+1
    BEQ $ACED
    BCS $ACEF
    LDA #$00 
    CMP #$28 
    BCC $ACF5
    LDA #$28 
    STA SPALTE                ; $0B
    DEC FILE_VEC+1
    SEC
    LDA $4F
    PHA
    SBC $1F
    BEQ $AD03
    BCS $AD05
    LDA #$00 
    CMP #$19 
    BCC $AD0B
    LDA #$19 
    STA $06
    SEC
    LDA $4E
    SBC $20
    BEQ $AD16
    BCS $AD18
    LDA #$00 
    CMP #$28 
    BCC $AD1E
    LDA #$28 
    STA $05
    CLC
    PLA
    ADC $51
    SEC
    SBC $1F
    BEQ $AD2B
    BCS $AD2D
    LDA #$00 
    CMP #$19 
    BCC $AD33
    LDA #$19 
    STA $27
    CLC
    LDA $4E
    ADC $50
    SEC
    SBC $20
    BEQ $AD41
    BCS $AD43
    LDA #$00 
    CMP #$28 
    BCC $AD49
    LDA #$28 
    STA $26
    SEC
    LDA POS_Y                 ; $24
    SBC $1F
    STA $31
    CLC
    ADC $4A
    STA $39
    SEC
    LDA POS_X                 ; $23
    SBC $20
    STA $32
    CLC
    ADC $49
    STA $3A
    LDX #$00 
    LDY #$00 
    LDA #$00 
    CPY SPALTE                    ; $0B
    BCS $ADAF
    CPX ZEILE                     ; $0A
    BCS $ADAF
    LDA #$01 
    CPX $31
    BCC $AD83
    CPX $39
    BCS $AD83
    CPY $32
    BCC $AD83
    CPY $3A
    BCC $ADAF
    LDA #$72 
    CPY FILE_VEC+1
    BEQ $ADAD
    CPX FILE_VEC
    BEQ $ADAD
    CPY #$00 
    BNE $AD95
    CPY $20
    BEQ $ADAD
    CPX #$00 
    BNE $AD9D
    CPX $1F
    BEQ $ADAD
    CPY $05
    BCC $ADAF
    CPX $06
    BCC $ADAF
    CPY $26
    BCS $ADAF
    CPX $27
    BCS $ADAF
    LDA #$75 
    STA ($03),Y
    INY
    CPY #$28 
    BNE $AD67
    LDY #$00 
    CLC
    LDA $03
    ADC #$28 
    STA $03
    BCC $ADC3
    INC $04
    INX
    CPX #$19 
    BNE $AD67
    RTS

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
    STA $1C
    TXA
    LDX #$03 
    ASL
    ROL $1C
    DEX
    BNE $ADFA
    CLC
    ADC #$00 
    STA $05
    LDA $1C
    ADC #$04 
    STA $06
    TYA
    BNE $AE0F
    RTS
---------------------------------
    CLC
    LDA $05
    ADC #$80 
    STA $05
    LDA $06
    ADC #$02 
    STA $06
    DEY
    BNE $AE0F
    RTS
---------------------------------
; -------------------------------
; Grafikbildschirm aktualisieren
; -------------------------------
LAE20 LDX $20
    LDY $1F
    JSR TA042                 ; LADF3
    LDA #$19 
    STA ZEILE                 ; $0A
    LDA #$00 
    STA $03
    LDA #$E0 
    STA $04
    LDY #$00 
    LDA ($05),Y
    STA ($03),Y
    INY
    CPY #$A0 
    BNE $AE35
    CLC
    LDA $03
    ADC #$A0 
    STA $03
    BCC $AE49
    INC $04
    CLC
    LDA $05
    ADC #$A0 
    STA $05
    BCC $AE54
    INC $06
    LDY #$00 
    LDA ($05),Y
    STA ($03),Y
    INY
    CPY #$A0 
    BNE $AE56
    CLC
    LDA $03
    ADC #$A0 
    STA $03
    BCC $AE6A
    INC $04
    CLC
    LDA $05
    ADC #$E0 
    STA $05
    LDA $06
    ADC #$01 
    STA $06
    DEC ZEILE                 ; $0A
    BNE $AE33
    RTS
---------------------------------
LAE7C LDA POS_X                 ; $23
    SEC
    SBC $20
    BCS $AE84
    RTS
---------------------------------
    CMP #$28 
    BCS $AE83
    TAX
    LDA POS_Y                 ; $24
    SEC
    SBC $1F
    BCS $AE91
    RTS
---------------------------------
    CMP #$19 
    BCS $AE90
    TAY
    CLC
    TXA
    ADC #$00 
    STA $03
    LDA #$00 
    ADC #>BSSTART               ; Bildschirmposition High byte
    STA $04
    LDA #$00 
    STA $1C
    TXA
    LDX #$03 
    ASL
    ROL $1C
    DEX
    BNE $AEA9
    CLC
    ADC #$00 
    STA $05
    LDA $1C
    ADC #$E0 
    STA $06
    TYA
    BNE $AEBE
    RTS
---------------------------------
    CLC
    LDA $03
    ADC #$28 
    STA $03
    BCC $AEC9
    INC $04
    CLC
    LDA $05
    ADC #$40 
    STA $05
    LDA $06
    ADC #$01 
    STA $06
    DEY
    BNE $AEBE
    RTS

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
    STA $25
    DEC $25
    BNE $AEFB
    SEC
    RTS
---------------------------------
    LDA POS_X                 ; $23
    BPL $AF04
    INC POS_X                 ; $23
    JMP $AEF5
---------------------------------
    SEC
    SBC $20
    BCS $AF12
    LDA $20
    SBC #$03 
    STA $20
    JMP $AF46
---------------------------------
    LDA POS_Y                 ; $24
    BPL $AF1B
    INC POS_Y                 ; $24
    JMP $AEF5
---------------------------------
    SEC
    SBC $1F
    BCS $AF29
    LDA $1F
    SBC #$03 
    STA $1F
    JMP $AF46
---------------------------------
    LDA $49
    CLC
    ADC POS_X                 ; $23
    CMP ET_BYTEX
    BEQ $AF39
    BCC $AF39
    DEC POS_X                 ; $23
    JMP $AEF5
---------------------------------
    SEC
    SBC $20
    CMP #$29 
    BCC $AF53
    LDA $20
    ADC #$03 
    STA $20
    BIT $4C
    BMI $AF50
    JSR TA04E                 ; LACC3
    JSR TA0B1                 ; LAE20, Grafikbildschirm aktualisieren
    JMP $AEF5
---------------------------------
    LDA $4A
    CLC
    ADC POS_Y                 ; $24
    CMP ET_BYTEY
    BEQ $AF63
    BCC $AF63
    DEC POS_Y                 ; $24
    JMP $AEF5
---------------------------------
    SEC
    SBC $1F
    CMP #$1A 
    BCC $AF73
    LDA $1F
    ADC #$03 
    STA $1F
    JMP $AF46
---------------------------------
    CLC
    RTS
---------------------------------
LAF75 RTS
---------------------------------
    PHA
    JSR $A0D2
    LDA $4A
    STA ZEILE                 ; $0A
    PLA
    LDY #$00 
    STA ($03),Y
    INY
    CPY $49
    BNE $AF81
    PHA
    CLC
    LDA $03
    ADC #$28 
    STA $03
    BCC $AF94
    INC $04
    PLA
    DEC ZEILE                 ; $0A
    BNE $AF7F
    RTS
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

    JSR $A099                 ; LB0CD,
    BCS +                     ; Fehler, dann  'Schriftgroesse pruefen'
    STY CRSR_BREITE            ; Cursor Breite, $17
    STX $22

    LDA $04                   ; lade Schriftgroesse (dez.)
    AND #$0F                  ; maskiere die oberen bits

    JSR $A099                 ; LB0CD
    BCS +                     ; Fehler, dann 'Schriftgroesse pruefen'
    STY CRSR_HORHE             ; Cursor Hoehe, $18
    STX $21

    JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
    STY $4A
    STX $49
    DEC $4C
    JSR TA021                 ; LAEF1
    INC $4C
    BCS ++                    ; Fehler 'Schrift fuer Etikett zu gross'

; kurze Verzoegerung mit Blinkczaehler?
    LDA #$20                    ; Wert fuer Zaehler
    STA $02                     ; Blinkzaehler
-   LDA $02                     ; wird im IRQ herunter gezaehlt
    BNE -

    JSR TA0EA                 ; LADC9, schalte auf Bitmap Mode
    JSR TA04E                 ; LACC3
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
    BEQ $B0FB
    BCC $B0FA
    CLC
    BCC $B0FB
    SEC
    ROL $28
    LDX $29
    TXA
    AND #$F8 
    TAY
    INX
    STX $29
    TXA
    AND #$07 
    BEQ $B10D
    CLC
    RTS
---------------------------------
    LDA $28
    STA ($03),Y
    STA ($05),Y
    LDA CRSR_BREITE            ; Cursor Breite, $17
    LDX $22
    BEQ $B11D
    BPL $B11C
    ASL
    ASL
    ASL
    ASL
    ASL
    CMP $29
    BEQ $B126
    CLC
    RTS
---------------------------------
    LDA #$00 
    STA $29
    INC $03
    BNE $B130
    INC $04
    INC $05
    BNE $B136
    INC $06
    LDX $2A
    INX
    STX $2A
    TXA
    AND #$07 
    BNE $B15A
    CLC
    LDA $03
    ADC #$38 
    STA $03
    LDA $04
    ADC #$01 
    STA $04
    CLC
    LDA $05
    ADC #$78 
    STA $05
    LDA $06
    ADC #$02 
    STA $06
    LDA CRSR_HORHE             ; Cursor Hoehe, $18
    LDX $21
    BEQ $B164
    BPL $B163
    ASL
    ASL
    ASL
    ASL
    ASL
    CMP $2A
    SEC
    RTS

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
    JSR TA04E                 ; LACC3
    JSR TA0B1                   ; LAE20, Grafikbildschirm aktualisieren
--  JSR TA0D8                   ; LAEDA, Berechne gesamte Cursorbreite/hoehe
    STY $4A
    STX $49
    JSR TA04E                 ; LACC3

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
    AND #$7F 
    CMP #$20 
    BCS $B39D
    PLA
    RTS
---------------------------------
    PLA
    PHA
    BMI $B3A5
    AND #$3F 
    BPL $B3A9
    AND #$3F 
    ORA #$40 
    ORA ZEICHENSATZ           ; $2C
    EOR #$80 
    JSR $A08D
    JSR $A1BC
    JSR $A12C
    JSR $A08D
    JSR $A0D2
    LDA $05
    STA $03
    LDA $06
    STA $04
    LDX POS_X                 ; $23
    LDY POS_Y                 ; $24
    JSR TA042                 ; LADF3
    LDA #$00 
    STA $29
    STA $2A
    STA KONTRAST
    LDA #$00 
    STA $26
    LDA #$9B 
    STA $27
    LDX DREHEN                ; $2E
    BNE $B3E2
    JMP $A159
---------------------------------
    JMP $A0C0
---------------------------------
LB3E5 LDA $29
    LDX $22
    BEQ $B3EF
    BPL $B3EE
    LSR
    LSR
    TAY
    LDA ($26),Y
    ASL
    JSR $A0A5
    BCC LB3E5
    BEQ $B41F
    LDX $21
    BEQ $B411
    DEC KONTRAST
    BEQ $B411
    BPL LB3E5
    LDY #$01 
    LDX $21
    BPL $B40C
    LDY #$03 
    STY KONTRAST
    JMP LB3E5
---------------------------------
    CLC
    LDA $26
    ADC #$20 
    STA $26
    BCC $B41C
    INC $27
    JMP LB3E5
---------------------------------
    JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
    STX $1C
    PLA
    PHA
    JSR $A1A7
    BCC $B434
    CLC
    LDA POS_X                 ; $23
    ADC $1C
    STA POS_X                 ; $23
    PLA
    RTS
---------------------------------
    LDA POS_Y                 ; $24
    ADC $4A
    STA POS_Y                 ; $24
    PLA
    RTS
---------------------------------
LB43C LDX DREHEN                ; $2E
    BNE $B441
    RTS
---------------------------------
    PHA
    LDA CRSR_BREITE            ; Cursor Breite, $17
    PHA
    LDA CRSR_HORHE             ; Cursor Hoehe, $18
    STA CRSR_BREITE            ; Cursor Breite, $17
    PLA
    STA CRSR_HORHE             ; Cursor Hoehe, $18
    PLA
    RTS
---------------------------------
LB44E LDA $26
    PHA
    LDA $27
    PHA
    LDA $2A
    LDX $21
    BEQ $B45E
    BPL $B45D
    LSR
    LSR
    STA $1C
    LDA CRSR_HORHE             ; Cursor Hoehe, $18
    ASL
    ASL
    ASL
    CLC
    SBC $1C
    TAY
    LDA ($26),Y
    ASL
    JSR $A0A5
    BCS $B496
    LDX $22
    BEQ $B488
    DEC KONTRAST
    BEQ $B488
    BPL $B454
    LDY #$01 
    LDX $22
    BPL $B483
    LDY #$03 
    STY KONTRAST
    JMP $B454
---------------------------------
    CLC
    LDA $26
    ADC #$20 
    STA $26
    BCC $B493
    INC $27
    JMP $B454
---------------------------------
    BEQ $B4A5
    LDA #$00 
    STA KONTRAST
    PLA
    STA $27
    PLA
    STA $26
    JMP $A0C0
---------------------------------
    JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
    STY $1C
    LDA POS_Y                 ; $24
    SEC
    SBC $1C
    STA POS_Y                 ; $24
    PLA
    PLA
    PLA
    RTS
---------------------------------
    !by $DD,$A5,$B4,$B5,$A1,$B6,$AA,$A7,$00
---------------------------------
LB4BE LDX #$07 
    CMP $B4B5,X
    BNE $B4C7
    CLC
    RTS
---------------------------------
    DEX
    BPL $B4C0
    SEC
    RTS
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
    JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
    STX $1C
    LDA DREHEN                ; $2E
    BNE $B4E5
    SEC
    LDA POS_X                 ; $23
    SBC $1C
    STA POS_X                 ; $23
    CLC
    BCC $B4EE
    STY $1C
    CLC
    LDA POS_Y                 ; $24
    ADC $1C
    STA POS_Y                 ; $24
    JSR TA021                 ; LAEF1
    BCS $B513
    JSR $A0D2
    LDA $05
    STA $03
    LDA $06
    STA $04
    LDX POS_X                 ; $23
    LDY POS_Y                 ; $24
    JSR TA042                 ; LADF3
    LDA #$00 
    STA $2A
    STA $29
    CLC
    JSR $A0A5
    BCC $B50B
    BNE $B50B
    PLA
    RTS

; -------------------------------
; Pruefe PFEIL_L
; -------------------------------
LB515
    CMP #PFEIL_L                ; $5F 
    BEQ +
    RTS
---------------------------------
+   JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
    STY $1C
    LDA DREHEN                ; $2E
    BNE $B531
    LDA #$00 
    STA POS_X                 ; $23
    CLC
    LDA POS_Y                 ; $24
    ADC $1C
    STA POS_Y                 ; $24
    LDA #$0D 
    RTS
---------------------------------
    STX $1C
    LDA ET_BYTEY
    STA POS_Y                 ; $24
    CLC
    LDA POS_X                 ; $23
    ADC $1C
    STA POS_X                 ; $23
    LDA #$0D 
    RTS
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
    LDA #LWNR                 ; Laufwerksnummer
    JSR TA189                 ; LF8B6, LISTEN senden
    PLA
    JSR TA111                 ; LF964, Sekundaeradresse nach LISTEN senden
    JSR TA120                 ; LF9A9, UNLISTEN senden
    RTS
---------------------------------
LB578 LDA #LWNR                 ; Laufwerksnummer
    JSR TA08A                 ; LF8B3, TALK senden
    LDA #$6F                  ; Sekundaeradresse
    JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden

    LDY #$00 
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen

    LDX $30
    BNE $B5A4

    CMP #$0D 
    BEQ $B5A4
    CPY #$02                  ; Zaehlerende erreicht?
    BCS $B5A1                 ; nein, dann verzweige

    AND #$0F 
    ASL $2F
    ASL $2F
    ASL $2F
    ASL $2F
    ORA $2F
    STA $2F
    INY
    BNE $B584

    JSR TA1B3                 ; LF99A, UNTALK senden
    LDA $2F
    RTS

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
    JSR TA060                 ; LB64A, $0:ttt
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
    BNE -
    LDY #$00 
-   JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    LDX STATUS
    BEQ +
    SEC
    RTS
---------------------------------
+   STA (TF_P),Y
    INY
    CPY #$10 
    BNE -
    JSR TA1B3                 ; LF99A, UNTALK senden
    LDA #$E0 
    JSR TA0A8                 ; LB56A, CLOSE
    CLC
    RTS
---------------------------------
LB695 LDA #LWNR                 ; Laufwerksnummer
    JSR TA08A                 ; LF8B3, TALK senden
    LDA #$60 
    JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
    LDY #$04 
-   JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    LDX STATUS
    BEQ +
    SEC
    RTS
---------------------------------
+   DEY
    BNE -
    CLC
    RTS
---------------------------------
LB6AF JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    LDX STATUS
    BEQ +
    SEC
    RTS
---------------------------------
+   CMP #$00 
    BNE LB6AF
    JSR TA1B3                 ; LF99A, UNTALK senden
    CLC
    RTS
---------------------------------
LB6C1 LDA #$00                  ; lade Akku mit 0
    STA STATUS                ; loesche STATUS
    LDA #$F0 
    JSR TA087                 ; LB541, sende Dateiname
    !pet "$0:bf*",$00
    JSR TA120                 ; LF9A9, UNLISTEN senden
    JSR $A150                 ; LB695
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    JSR TA02A                 ; LB6AF
    RTS
---------------------------------
LB6E1 PHA
    TXA
    PHA
    TYA
    PHA
    JSR $A150
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    CMP #$20 
    BEQ $B6E9
    CMP #$22 
    BEQ $B6FF
    JSR TA1B3                 ; LF99A, UNTALK senden
    LDA #$E0 
    JSR TA0A8                 ; LB56A, CLOSE
    SEC
    BCS $B71B
    LDY #$00 
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    LDX STATUS
    BEQ $B70B
    SEC
    BCS $B71B
    CMP #$22 
    BNE $B711
    LDA #$20 
    STA (FILE_VEC),Y
    INY
    CPY #$10 
    BNE $B701
    JSR TA02A                 ; LB6AF
    PLA
    TAY
    PLA
    TAX
    PLA
    RTS
---------------------------------
LB721 LDY ET_BYTEY
    LDA #$00 
    STA $27
    CLC
    ADC ET_BYTEX
    BCC $B72E
    INC $27
    DEY
    BNE $B727
    STA $26
    LDY #$05 
    LSR $27
    ROR $26
    DEY
    BNE $B735
    INC $26
    BNE $B742
    INC $27
    LDA $26
    CMP $36
    LDA $27
    SBC $37
    RTS
---------------------------------
LB74B TXA
    PHA
    TYA
    PHA
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$00 
    LDA (TF_P),Y
    BMI $B75E
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    INY
    BNE $B754
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    PLA
    TAY
    PLA
    TAX
    RTS

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
    JSR $A16B
    BCC ++
; Diskette ist voll
+   JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0A,$0F               ; Spalte,Reihe
    !pet "diskette ist belegt!",$40
    !by $04,$11
    !pet "neue etikettendiskette einlegen!",$00
    JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
++  LDA #$F1 
    JSR TA087                 ; LB541, sende Dateiname
    !pet "0:bf",$00
    LDY #$02                  ; Textfeldnummer, 'Etikettenname'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$00 
    LDA (TF_P),Y
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    INY
    CPY #$0E 
    BNE $B81A
    JSR TA120                 ; LF9A9, UNLISTEN senden
    JSR $A0E4                 ; LB578
    BEQ $B875
    CMP #$63 
    BEQ $B833
    JMP $A07E
---------------------------------
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$0F               ; Spalte,Reihe
    !pet "der etikettenname ist auf",$40
    !by $05,$11
    !pet "der diskette schon vorhanden!",$00
    JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
    LDA #LWNR                 ; Laufwerksnummer
    JSR TA189                 ; LF8B6, LISTEN senden
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $06,$0F               ; Spalte,Reihe
    !pet "das etikett wird gespeichert",$00
---------------------------------
    LDA #$61 
    JSR TA111                 ; LF964, Sekundaeradresse nach LISTEN senden
    LDA $26
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $27
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    JSR $A1B6
    LDA ET_BYTEX
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA ET_BYTEY
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDY #$02 
    JSR $A117
    LDY #$05 
    JSR $A117
    INY
    CPY #$0A 
    BNE $B8BF
    LDA ET_BYTEY
    STA ZEILE                     ; $0A
    LDA #$00 
    STA $03
    LDA #$04 
    STA $04
    LDA ET_BYTEX
    STA SPALTE                    ; $0B
    LDA $03
    PHA
    LDA $04
    PHA
    LDY #$00 
    LDA ($03),Y
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    INY
    CPY #$08 
    BNE $B8DF
    CLC
    LDA $03
    ADC #$08 
    STA $03
    BCC $B8F4
    INC $04
    DEC SPALTE                    ; $0B
    BNE $B8DD
    PLA
    STA $04
    PLA
    CLC
    ADC #$80 
    STA $03
    LDA $04
    ADC #$02 
    STA $04
    DEC ZEILE                 ; $0A
    BNE $B8D3
    JSR TA120                 ; LF9A9, UNLISTEN senden
    LDA #$E1 
    JSR TA0A8                 ; LB56A, CLOSE
    SEC
    LDA $36
    SBC $26
    STA $36
    LDA $37
    SBC $27
    STA $37
    JSR $A195
    JMP TA183                 ; LBE1C, Disk Inhalt
---------------------------------
LB926 JSR TA090                 ; LA85D, beschreibe Textfeld (Nr.)
    !by $04
    !pet "*etikett laden*",$00

    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA02D                 ; LB5AA Teste auf gueltige Etikettendisk
    BCC $B943
    RTS
---------------------------------
    JSR TA024                 ; LBD74, Directory einlesen
    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA027                 ; LBDA5, Directory anzeigen
    LDA DIR_PLACE
    BNE $B953
    JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $06,$17,bl_weiss      ; Spalte,Reihe,Atribut
    !pet "mit zifferntaste auswaehlen!",normal,$00
---------------------------------
    JSR TA11D                 ; LA6C7, Tasteneingabe
    BCS $B977
    CMP #RETURN               ; Return gedrueckt? 
    BNE $B981
    RTS
---------------------------------
    CMP #$30 
    BCC $B977
    CMP #$3A 
    BCS $B977
    AND #$0F 
    CMP DIR_PLACE
    BCS $B977
    ASL
    ASL
    ASL
    ASL
    STA FILE_VEC
    LDA #$CA 
    STA FILE_VEC+1
    LDA #$F0 
    JSR TA087                 ; LB541, sende Dateiname
    !pet "bf",$00
    LDY #$02 
    LDA (FILE_VEC),Y
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    INY
    CPY #$10 
    BNE $B9A3
    JSR TA120                 ; LF9A9, UNLISTEN senden
    JSR $A0E4                 ; LB578
    BEQ $B9B6
    RTS
---------------------------------
    JSR TA0AB                 ; LAC37 Loesche Speicherbereich $0400 - $83FF
    LDA #$00 
    STA F_ETIKETT             ; $38, 0 fuer kein Etikett im Speicher
    STA STATUS                ; loesche SATUS
    LDA #LWNR                 ; Laufwerksnummer
    JSR TA08A                 ; LF8B3, TALK senden
    LDA #$60 
    JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    JSR TA078                 ; LF207, Statusmeldung auslesen
    STA ET_BYTEX
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA ET_BYTEY
    LDY #$02 
    JSR TA177                 ; LBD55, Lese Headerdaten aus File
    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $08,$0F               ; Spalte,Reihe
    !pet "das etikett wird geladen",$00
---------------------------------
    LDY #$05 
    JSR $A177
    INY
    CPY #$0A 
    BNE $BA01
    LDA ET_BYTEY
    STA ZEILE                 ; $0A
    LDA #$00 
    STA $03
    LDA #$04 
    STA $04
    LDA ET_BYTEX
    STA SPALTE                ; $0B
    LDA $03
    PHA
    LDA $04
    PHA
    LDY #$00 
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    PHA
    LDA STATUS
    AND #$BF 
    BEQ $BA2F
    PLA
    PLA
    PLA
    RTS
---------------------------------
    PLA
    STA ($03),Y
    INY
    CPY #$08 
    BNE $BA21
    CLC
    LDA $03
    ADC #$08 
    STA $03
    BCC $BA42
    INC $04
    DEC SPALTE                    ; $0B
    BNE $BA1F
    PLA
    STA $04
    PLA
    CLC
    ADC #$80 
    STA $03
    LDA $04
    ADC #$02 
    STA $04
    DEC ZEILE                 ; $0A
    BNE $BA15
    JSR TA1B3                 ; LF99A, UNTALK senden
    LDA #$E0 
    JSR TA0A8                 ; LB56A, CLOSE
    LDA #$FF 
    STA F_ETIKETT             ; $38 , #$FF fuer Etikett im Speicher
    RTS

; -------------------------------
; Etikett loeschen
; -------------------------------
LBA66 JSR TA090                 ; LA85D, beschreibe Textfeld (Nr.)
    !by $04
    !pet "*et.loeschen*",$00

    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA02D                 ; LB5AA, Teste auf gueltige Etikettendisk
    BCC $BA81
    RTS
---------------------------------
    JSR TA024                 ; LBD74, Directory einlesen
    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA027                 ; LBDA5, Directory anzeigen
    LDA DIR_PLACE
    BNE $BA91
    JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $06,$17,bl_weiss      ; Spalte,Reihe,Atribut
    !pet "mit zifferntaste auswaehlen!",normal,$00
---------------------------------
    JSR TA11D                 ; LA6C7, Tasteneingabe
    BCS $BAB5
    CMP #RETURN               ; Return gedrueckt? 
    BNE $BABF
    RTS
---------------------------------
    CMP #"0"                  ; #$30 
    BCC $BAB5
    CMP #":"                  ; #$3A 
    BCS $BAB5
    AND #$0F                  ; loesche obere 4 bits
    CMP DIR_PLACE
    BCS $BAB5
    ASL
    ASL
    ASL
    ASL
    STA FILE_VEC
    LDA #$CA 
    STA FILE_VEC+1
    JSR $A114
    BCC $BADD
    RTS
---------------------------------
    LDA #$F0 
    JSR TA087                 ; LB541, sende Dateiname
    !pet "0:bf",$00
    LDY #$02 
    LDA (FILE_VEC),Y
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    INY
    CPY #$10 
    BNE $BAE9
    JSR TA120                 ; LF9A9, UNLISTEN senden
    JSR $A0E4                 ; LB578
    BEQ $BAFC
    RTS
---------------------------------
    LDA #LWNR                 ; Laufwerksnummer
    JSR TA08A                 ; LF8B3, TALK senden
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0A,$0F               ; Spalte,Reihe
    !pet "etikett wird geloescht",$00
---------------------------------
    LDA #$60 
    JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $26
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $27
    JSR TA1B3                 ; LF99A, UNTALK senden
    LDA #$E0 
    JSR TA0A8                 ; LB56A, CLOSE
    LDA #$6F                  ; Sekundaeradresse
    JSR TA087                 ; LB541, sende Dateiname
    !pet "s0:bf",$00
    LDY #$02 
    LDA (FILE_VEC),Y
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    INY
    CPY #$10 
    BNE $BB41
    JSR TA120                 ; LF9A9, UNLISTEN senden
    JSR $A0E4                 ; LB578
    CMP #$26 
    BEQ LBB68                 ; diskette ist schreibgeschuetzt
    CLC
    LDA $36
    ADC $26
    STA $36
    LDA $37
    ADC $27
    STA $37
    JSR $A195
    JMP TA183                 ; LBE1C, Disk Inhalt
---------------------------------
LBB68 JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $05,$0D               ; Spalte,Reihe
    !pet "diskette ist schreibgeschuetzt",$00
    JMP .lBE40                ; Ausgabe "Return druecken"
---------------------------------
LBB92 JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $07,$0D               ; Spalte,Reihe
    !pet "soll wirklich das etikett",$40
    !by $0C,$0F
    !by $00

    LDY #$02 
    TYA
    PHA
    LDA (FILE_VEC),Y
    JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
    PLA
    TAY
    INY
    CPY #$10 
    BNE $BBB9
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0B,$11               ; Spalte,Reihe
    !pet "geloescht werden",$2F,$40
    !by $08,$13
    !pet "ja   - shift + return",$40
    !by $08,$14
    !pet "nein - return",$40
    !by $0C,$17,bl_weiss      ; Spalte,Reihe,Atribut
    !pet "eingabe waehlen!",normal,$00 
---------------------------------
    JSR TA11D                 ; LA6C7, Tasteneingabe
    BCS $BC1B
    CMP #RETURN                    ; Return gedrueckt? 
    BNE $BC26
    SEC
    RTS
---------------------------------
    CMP #SHRETURN                    ; Shift/Return gedrueckt? 
    BNE $BC1B
    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    CLC
    RTS

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
    JSR TA087                 ; LB541, sende Dateiname
    !pet $5B,"0:bdf",$00
    JSR TA120                 ; LF9A9, UNLISTEN senden
    LDA #LWNR                 ; Laufwerksnummer
    JSR TA189                 ; LF8B6, LISTEN senden
    LDA #$61 
    JSR TA111                 ; LF964, Sekundaeradresse nach LISTEN senden
    LDA $36
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $37
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    JSR TA120                 ; LF9A9, UNLISTEN senden
    LDA #$E1 
    JSR TA0A8                 ; LB56A, CLOSE
    RTS

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
    LDY #<DIRECTORY           ; Directory Adresse in $CA00
    STY FILE_VEC               ; $33
    LDA #>DIRECTORY
    STA FILE_VEC+1             ; $34
    JSR $A14D
    STY DIR_PLACE
    BCC $BD87
    RTS
---------------------------------
    INY
    CPY #$0A 
    BNE $BD97
    LDA #$E0 
    JSR TA0A8                 ; LB56A, CLOSE
    LDY #$0A 
    STY DIR_PLACE
    BNE $BD86
    CLC
    LDA FILE_VEC
    ADC #$10 
    STA FILE_VEC
    BCC $BDA2
    INC FILE_VEC+1
    JMP $BD7F

; -------------------------------
; Directory anzeigen
; -------------------------------
LBDA5 LDA #$09 
    STA ZEILE                 ; $0A
    LDA #$0A 
    STA SPALTE                ; $0B
    LDX #$00 
    STX FILE_VEC
    LDA #$CA 
    STA FILE_VEC+1
    LDA DIR_PLACE
    BNE $BDE6
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $0A,$0F               ; Spalte,Reihe
    !pet "keine etiketten auf",$40
    !by $0C,$10
    !pet "dieser diskette!",$00
---------------------------------
    RTS
---------------------------------
    JSR TA144                 ; LA417, Berechne Bildschirmposition
    LDY #$02 
    TXA
    ORA #$30 
    JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
    LDA #$2E 
    JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
    LDA #$20 
    JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
    LDA (FILE_VEC),Y
    STY $1C
    JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
    LDY $1C
    INY
    CPY #$10 
    BNE $BDFB
    CLC
    LDA FILE_VEC
    ADC #$10 
    STA FILE_VEC
    BCC $BE14
    INC FILE_VEC+1
    INC ZEILE                 ; $0A
    INX
    CPX DIR_PLACE
    BCC $BDE6
    RTS

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
    JSR $A0E4                 ; LB578
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
    LDA $05
    SBC $26
    STA $26
    LDA $06
    SBC $27
    STA $27

    LDY #$05                  ; Textfeldnummer, 'Etikettenhoehe
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    JSR TA0E1                 ; LA8A8, speichere Wert aus Eingabefeld in dezimaler Schreibweise nach $04,$03
    LDY #$06                  ; Textfeldnummer, 'Laufrichtung'
    JSR TA009                 ; LA8C0, Wertekombination aus zwei Eingabefeldern berechnen
                                ; Das Ergebniss befindet sich anschliessend in $03,$04 in deximaler Form
    JSR TA0D5                 ; LAC64, Wert in $03,$04 in DPI umrechnen
                                ; anschliessend befindet sich dieser Wert in Hex-Form in den Speichestellen $06,$05
    LDA $05
    AND #$07
    STA $59
    LDX #$03
    LSR $06
    ROR $05
    DEX
    BNE $E574
    SEC
    LDA $05
    SBC ET_BYTEY
    STA $2A
    JSR TA05A                 ; LE47E, sende CODES1 an Drucker

    LDA #$00
    STA ZEILE                 ; $0A
    LDA #$00
    STA $07
    LDA #$04
    STA $08
    JSR $A19E                 ; LF12E, Anfangswert

    JSR $A0C3                 ; LE637
    BCC $E59F                 ; verzweige wenn kein Fehler
    JSR $A1AA                 ; LE61D, Seitenende? Druckende? 
    BCC $E585
    RTS
---------------------------------
    CLC
    LDA $07
    ADC #$80
    STA $07
    LDA $08
    ADC #$02
    STA $08
    JSR TA06F                 ; LE497, sende CODES2 an Drucker, CR LF
    BCC $E5B7                 ; verzweige wenn kein Fehler
    JSR $A1AA                 ; LE61D, Drueckende
    BCC $E585
    RTS
---------------------------------
    INC ZEILE                 ; $0A
    LDA ZEILE                 ; $0A
    CMP ET_BYTEY
    BNE $E594

    LDY $2A
    BEQ $E5D1
    JSR TA06F                 ; LE497, sende CODES2 an Drucker, CR LF
    BCC $E5CE                 ; verzweige wenn kein Fehler
    JSR $A1AA                 ; LE61D, Seitenende? Druckende? 
    BCC $E585
    RTS
---------------------------------
    DEY
    BNE $E5C3
    LDY $59
    BEQ $E5E3
    JSR TA0FF                 ; LE4AD, sende CODES3 an Drucker
    BCC $E5E0                 ; verzweige wenn kein Fehler
    JSR $A1AA                 ; LE61D, Seitenende? Druckende? 
    BCC $E585
    RTS
---------------------------------
    DEY
    BNE $E5D5
    SED
    SEC
    LDA $39
    SBC ANZ_BAHNEN_DEC        ; $3B
    STA $39
    LDA $3A
    SBC #$00
    STA $3A
    CLD
    PHP
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $11,$0D               ; Spalte,Reihe
    !pet " ",$00
    LDX #$01
    LDA $39,x
    LSR
    LSR
    LSR
    LSR
    ORA #$30
    JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
    LDA $39,X
    AND #$0F
    ORA #$30
    JSR TA156                 ; LA43B, ein Zeichen in den Bildschirmspeicher schreiben
    DEX
    BPL $E5FC
    PLP
    BCC $E619
    JMP $E585
---------------------------------
    JSR TA033                 ; LE4C3, sende CODES4 an Drucker, normal mode
    RTS
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
    BCC $E63D
    RTS
---------------------------------
    LDA KONTRAST
    BEQ $E63C
    LDA #$16
    LDX #$01
    JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
    BCC $E64B
    RTS
---------------------------------
    LDA #$0D
    DEX
    BPL $E645
    LDA ANZ_BAHNEN_HEX         ; Lade Anzahl der Bahnen ,$16
    STA $44
    JSR $A17A                     ; LF13E
    LDA $07
    PHA
    LDA $08
    PHA
    JSR $A0C9
    LDA ET_BYTEX
    STA SPALTE                ; $0B
    LDX #$00
    STX $47
    STX $48
    JSR $A138
    BCC $E672
    PLA
    PLA
    RTS
---------------------------------
    CLC
    LDA $07
    ADC #$08
    STA $07
    BCC $E67D
    INC $08
    DEC SPALTE                    ; $0B
    BNE $E66A
    JSR $A09C
    PLA
    STA $08
    PLA
    STA $07
    DEC $44
    BNE $E690
    CLC
    RTS
---------------------------------
    LDA $48
    BEQ $E657
    LDX $47
    BEQ $E6A6
    LDY #$08
    LDA #$00
    JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
    DEY
    BNE $E69A
    DEC $47
    BNE $E698
    LDY $26
    LDX $27
    BNE $E6B0
    CPY #$00
    BEQ $E657
    LDA #$00
    JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
    BCC $E6BA
    PLA
    PLA
    RTS
---------------------------------
    CPY #$00
    BNE $E6C3
    CPX #$00
    BEQ $E657
    DEX
    DEY
    JMP $E6B0

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
    STY $46
    LDA ($07),Y
    BEQ $E782
    DEC $46
    LDX #$07
    LSR
    ROR $003C,X
    DEX
    BPL $E784
    INY
    CPY #$08
    BNE $E77C
    LDX $46
    BNE $E798
    INC $47
    CLC
    RTS
---------------------------------
    DEC $48
    LDX $47
    BEQ $E7AC
    LDY #$08
    LDA #$00
    JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
    DEY
    BNE $E7A0
    DEC $47
    BNE $E79E
    LDX #$00
    LDX $47
    LDA $003C,X
    CMP #$16
    BNE $E7BF
    JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
    BCC $E7BD
    RTS
---------------------------------
    LDA #$16
    JSR TA075                 ; LE3AD, Byte(s) an Drucker senden
    BCC $E7C5
    RTS
---------------------------------
    INX
    CPX #$08
    BNE $E7B0
    CLC
    RTS

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
    JSR TA11D                 ; LA6C7, Tasteneingabe
    BCS $E965
    CMP #RETURN                    ; Return gedrueckt?
    BNE $E979
.lE96E
    JSR TA0EA                 ; LADC9, schalte auf Bitmap Mode
    JSR TA04E                 ; LACC3
    JSR TA0B1                 ; LAE20, Grafikbildschirm aktualisieren
    PLA
    RTS
---------------------------------
    CMP #$30
    BCC $E965
    CMP #$3A
    BCS $E965
    AND #$0F
    CMP DIR_PLACE
    BCS $E965
    ASL
    ASL
    ASL
    ASL
    STA FILE_VEC
    LDA #$CA
    STA FILE_VEC+1
    LDA #$F0
    JSR TA087                 ; LB541, sende Dateiname
    !pet "bf",$00
    LDY #$02
    LDA (FILE_VEC),Y
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    INY
    CPY #$10
    BNE $E99B
    JSR TA120                 ; LF9A9, UNLISTEN senden
    JSR $A0E4                 ; LB578
    BNE .lE96E                  ; zurueck zu Etikett bearbeiten
    LDA #LWNR                 ; Laufwerksnummer
    JSR TA08A                 ; LF8B3, TALK senden
    LDA #$60
    JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $49
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $4A
    JSR TA1B3                 ; LF99A, UNTALK senden
    DEC $4C
    JSR TA021                 ; LAEF1
    INC $4C
    BCC +
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $05,$17,bl_weiss      ; Spalte,Reihe,Atribut
    !pet "symbol fuer etikett zu gross!",$00
    LDA #$E0
    JSR TA0A8                 ; LB56A, CLOSE
    JMP $E965
---------------------------------
+   JSR $A174
    BCC $EA02
    PLA
    JMP TA171                 ; LE91D, Grafik-Sondersymbole
---------------------------------
    JSR $A0D2
    LDA $05
    STA $03
    LDA $06
    STA $04
    LDX POS_X                 ; $23
    LDY POS_Y                 ; $24
    JSR TA042                 ; LADF3
    ASL $49
    ASL $49
    ASL $49
    LDA #LWNR                 ; Laufwerksnummer
    JSR TA08A                 ; LF8B3, TALK senden
    LDA #$60
    JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
    LDY #$00
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    EOR #$FF
    STA ($03),Y
    STA ($05),Y
    INY
    CPY $49
    BNE $EA26
    CLC
    LDA $03
    ADC #$40
    STA $03
    LDA $04
    ADC #$01
    STA $04
    CLC
    LDA $05
    ADC #$80
    STA $05
    LDA $06
    ADC #$02
    STA $06
    DEC $4A
    BNE $EA24
    JSR TA1B3                 ; LF99A, UNTALK senden
    LDA #$E0
    JSR TA0A8                 ; LB56A, CLOSE
    PLA
    RTS
---------------------------------
LEA5C LDA #$F0
    JSR TA087                 ; LB541, sende Dateiname
    !pet "0:extgraf",$00

    JSR TA120                 ; LF9A9, UNLISTEN senden
    JSR $A0E4                 ; LB578
    BNE $EA7A
    LDA #$E0
    JSR TA0A8                 ; LB56A, CLOSE
    CLC
    RTS
---------------------------------
    JSR TA06C                 ; LA846, Aktualisiere Text-Bildschirm
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $07,$0D               ; Spalte,Reihe
    !pet "grafiksymbol-diskette ist",$40
    !by $0C,$0F
    !pet "nicht eingelegt!",$40
    !by $01,$17,bl_weiss      ; Spalte,Reihe,Atribut
    !pet "diskette einlegen und return druecken",normal,$00
---------------------------------
-   JSR TA11D                   ; LA6C7, Tasteneingabe
    BCS -                       ; keine Taste
    CMP #RETURN                 ; Return gedrueckt?
    BNE -                       ; kein RETURN gedrueckt
    SEC
    RTS
---------------------------------
LEAE4 JSR TA0EA                 ; LADC9, schalte auf Bitmap Mode
    JSR TA04E                 ; LACC3
    JSR TA0B1                 ; LAE20, Grafikbildschirm aktualisieren
    NOP
    BIT $52
    BPL $EAFA
    LDA POS_X                 ; $23
    STA $4E
    LDA POS_Y                 ; $24
    STA $4F
    JSR TA04E                 ; LACC3
    JSR TA11D                 ; LA6C7, Tasteneingabe
    BCS $EAFD
    CMP #RETURN                    ; Return gedrueckt?
    BNE $EB08
    SEC
    RTS
---------------------------------
    CMP #$89
    BEQ $EB0E
    CMP #$8B
    BEQ $EB14
    CMP #$8A
    BNE $EB16
    CLC
    RTS
---------------------------------
    CMP #CRSR_R                ; Cursor rechts
    BNE $EB1C
    INC POS_X                 ; $23
    CMP #CRSR_L                ; Cursor links
    BNE $EB22
    DEC POS_X                 ; $23
    CMP #CRSR_D                ; Cursor runter
    BNE $EB28
    INC POS_Y                 ; $24
    CMP #CRSR_U                ; Cursor hoch
    BNE $EB2E
    DEC POS_Y                 ; $24
    JSR TA021                 ; LAEF1
    BCC $EAED
    RTS

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
    LDX $29
    TXA
    LSR
    LSR
    LSR
    TAY
    INX
    STX $29
    TXA
    AND #$07
    BEQ $EC2A
    CLC
    RTS
---------------------------------
    LDA $28
    STA $CAE0,Y
    SEC
    RTS
---------------------------------
LEC31 PHA
    TYA
    PHA
    LDA $1C
    EOR #$FF
    STA $1C
    TXA
    PHA
    LDA $1C
    ASL
    JSR TA102                 ; LEC17
    PLA
    TAX
    DEX
    BNE $EC3A
    PLA
    TAY
    PLA
    RTS

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

    !by $0C,$11,$12,$03,$14,$05,$06,$18,$09,$0A

LED20 JSR $A0D2
    LDA $05
    STA $03
    LDA $06
    STA $04
    LDX POS_X                 ; $23
    LDY POS_Y                 ; $24
    JSR TA042                 ; LADF3
    RTS
---------------------------------
LED33 LDA FILE_VEC
    BIT F_BCODE               ; $5B Flag
    BPL $ED40
    LDA FILE_VEC
    BPL $ED40
    CLC
    BCC $ED53
    PHA
    AND #$07
    BNE $ED50
    PLA
    LSR
    LSR
    LSR
    TAY
    LDA $CAE0,Y
    STA FILE_VEC+1
    PHA
    PLA
    ASL FILE_VEC+1
    INC FILE_VEC
    RTS

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
    LDX $4B
    CLC
    PHA
    ADC $4A
    STA $4A
    TYA
    ADC $49
    STA $49
    PLA
    DEX
    BNE $EDA2
    LDA $49
    CMP #$20
    BCS $EDC0
    DEC $4C
    JSR TA021                 ; LAEF1
    INC $4C
    BCC $EDE9
    JSR TA072                 ; LA45C, nachfolgenden Text in Bildschirmspeicher schreiben
    !by $05,$17,bl_weiss      ; Spalte,Reihe,Atribut
    !pet "barcode fuer etikett zu gross!",normal,$00
---------------------------------
    JMP $A132                   ; LED56, Codegroesse Darstellung Balkencode
---------------------------------
    JSR $A174
    BCC $EDF1
    JMP .lEE4C                 ; loesche Flag F_BCODE, zurueck zur Etikettendarstellung
---------------------------------
    LDA CRSR_BREITE            ; Cursor Breite, $17
    PHA
    LDA CRSR_HORHE             ; Cursor Hoehe, $18
    PHA
    LDA $22
    PHA
    LDA $21
    PHA
    LDA #$00
    STA $29
    STA $2A
    STA $21
    STA $22
    STA FILE_VEC
    LDA $49
    STA CRSR_BREITE            ; Cursor Breite, $17
    LDA $4A
    STA CRSR_HORHE             ; Cursor Hoehe, $18
    JSR TA03F                 ; LED20
    BIT DREHEN                ; $2E
    BMI $EE53
    LDA #$00
    BIT F_BCODE               ; $5B Flag
    BPL $EE20
    LDA #$F8
    STA FILE_VEC
    JSR $A180
    LDA $4B
    STA $1C
    PHP
    JSR $A0A5
    BCS $EE36
    PLP
    DEC $1C
    BNE $EE29
    BEQ $EE22
    BEQ $EE3C
    PLA
    JMP $EE18
---------------------------------
    JSR TA00F                 ; LF033
    PLA
    PLA
    STA $21
    PLA
    STA $22
    PLA
    STA CRSR_HORHE             ; Cursor Hoehe, $18
    PLA
    STA CRSR_BREITE            ; Cursor Breite, $17
.lEE4C LDA #$00
    STA F_BCODE               ; $5B Flag
    JMP .lEBF1                ; JMP .lE96E, zurueck zu Etikett bearbeiten
---------------------------------
    JSR $A180
    LDA $4B
    STA $1C
    PHP
    JSR $A0A5
    BCS $EE64
    PLP
    JMP $EE5A
---------------------------------
    BEQ $EE6D
    PLP
    DEC $1C
    BNE $EE5A
    BEQ $EE53
    JMP $EE3C

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
    STA $1C
    JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
    TXA
    BIT DREHEN                ; $2E
    BPL +
    TYA
+   STA $03
    LDA #$00
-   CLC
    ADC $03
    DEC $1C
    BNE -
    BIT DREHEN                ; $2E
    BPL +
    TAY
    TXA
+   TAX
    STX $50
    STY $51
    LDA CRSR_BREITE            ; Cursor Breite, $17
    STA $53
    LDA CRSR_HORHE             ; Cursor Hoehe, $18
    STA $54
    LDA $22
    STA $55
    LDA $21
    STA $56
    LDA INVERS                ; $2D
    STA $58
    LDA DREHEN                ; $2E
    STA $57
    DEC $52
    JSR $A174
    INC $52
    BCC +
++  LDA #$00
    STA $50
    STA $51
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
    BNE $F038
    RTS
---------------------------------
    LDA DREHEN                ; $2E
    BNE $F049
    LDA POS_Y                 ; $24
    CLC
    ADC $4A
    SEC
    SBC $4B
    STA POS_Y                 ; $24
    CLC
    BCC $F066
    LDA POS_X                 ; $23
    CLC
    ADC $49
    SEC
    SBC $4B
    STA POS_X                 ; $23
    CLC
    LDA POS_Y                 ; $24
    ADC $4A
    SEC
    SBC $4B
    STA POS_Y                 ; $24
    BIT F_BCODE               ; $5B Flag
    BMI $F066
    SEC
    SBC $4B
    STA POS_Y                 ; $24
    LDA $4B
    STA CRSR_BREITE            ; Cursor Breite, $17
    STA CRSR_HORHE             ; Cursor Hoehe, $18
    LDY #$0F
    BIT F_BCODE               ; $5B Flag
    BMI $F074
    LDY #$10                  ; Textfeldnummer, 'Daten EAN 8'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$00
    LDA (TF_P),Y
    BPL $F07E
    RTS
---------------------------------
    TAX
    TYA
    PHA
    TXA
    JSR TA039                 ; LB394
    PLA
    TAY
    INY
    JMP $F079
---------------------------------
LF08B LDA $50
    BNE $F090
    RTS
---------------------------------
    LDA ZEILE                 ; $0A
    CMP $4F
    BCS $F097
    RTS
---------------------------------
    SEC
    SBC $51
    BCC $F0A1
    CMP $4F
    BCC $F0A1
    RTS
---------------------------------
    LDA $26
    PHA
    LDA $27
    PHA
    LDA $07
    PHA
    LDA $08
    PHA
    LDA ZEILE                 ; $0A
    PHA
    LDA $2A
    PHA
    LDA KONTRAST
    PHA

    JSR $F0CF

    PLA
    STA KONTRAST
    PLA
    STA $2A
    PLA
    STA ZEILE                 ; $0A
    PLA
    STA $08
    PLA
    STA $07
    PLA
    STA $27
    PLA
    STA $26
    RTS
---------------------------------
    LDY #$0D                  ; Textfeldnummer, 'Anfangswert'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDA $53
    STA CRSR_BREITE            ; Cursor Breite, $17
    LDA $54
    STA CRSR_HORHE             ; Cursor Hoehe, $18
    LDA $55
    STA $22
    LDA $56
    STA $21
    LDA $4E
    STA POS_X                 ; $23
    STA $20
    LDA $4F
    STA POS_Y                 ; $24
    STA $1F
    LDA $58
    STA INVERS                ; $2D
    LDA $57
    STA DREHEN                ; $2E
    BIT DREHEN                ; $2E
    BPL $F10B
    JSR TA0D8                 ; LAEDA, Berechne gesamte Cursorbreite/hoehe
    STY $1C
    CLC
    LDA POS_Y                 ; $24
    ADC $51
    SEC
    SBC $1C
    STA POS_Y                 ; $24
    DEC $4C
    JSR TA021                 ; LAEF1
    INC $4C
    SEC
    LDA #$08
    SBC $4D
    TAY
    TYA
    PHA
    LDA (TF_P),Y
    JSR TA039                 ; LB394
    DEC $4C
    JSR TA021                 ; LAEF1
    INC $4C
    PLA
    TAY
    INY
    CPY #$08
    BNE $F118
    RTS
---------------------------------
LF12E LDY #$0D                  ; Textfeldnummer, 'Anfangswert'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$07
-   LDA (TF_P),Y
    STA $CAE0,Y
    DEY
    BPL -
    RTS
---------------------------------
LF13E LDY #$0D                  ; Textfeldnummer, 'Anfangswert'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$07
    LDA $CAE0,Y
    STA (TF_P),Y
    DEY
    BPL $F145
    RTS
---------------------------------
LF14E LDY #$0E                  ; Textfeldnummer, 'Schrittweite positiv'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDA TF_P                  ; TF_pointer low byte
    STA $05
    LDA TF_P+1                ; TF_pointer high byte
    STA $06
    LDY #$0D                  ; Textfeldnummer, 'Anfangswert'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$07
    CLC
    LDA ($05),Y
    AND #$0F
    STA $1C
    LDA (TF_P),Y
    AND #$0F
    SED
    ADC $1C
    CLD
    TAX
    BEQ $F17A
    AND #$0F
    ORA #$30
    STA (TF_P),Y
    TXA
    AND #$F0
    CLC
    BEQ $F181
    SEC
    DEY
    BPL $F163
    LDY #$12                  ; Textfeldnummer, 'Schrittweite negativ'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDA TF_P                  ; Textfeld_pointer low byte
    STA $05
    LDA TF_P+1                ; Textfeld_pointer high byte
    STA $06
    LDY #$0D                  ; Textfeldnummer, 'Anfangswert'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$07
    SEC
    LDA ($05),Y
    AND #$0F
    STA $1C
    LDA (TF_P),Y
    AND #$0F
    SED
    SBC $1C
    CLD
    TAX
    AND #$0F
    ORA #$30
    STA (TF_P),Y
    TXA
    AND #$F0
    SEC
    BEQ $F1B5
    CLC
    DEY
    BPL $F199
    LDY #$00
    LDA (TF_P),Y
    AND #$0F
    BNE $F1C9
    LDA #$20
    STA (TF_P),Y
    INY
    CPY #$08
    BNE $F1BA
    RTS
---------------------------------
LF1CA LDA #$FF
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $53
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $54
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $55
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $56
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $4E
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $4F
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $50
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $51
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $4D
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $58
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    LDA $57
    JSR TA1B0                 ; LF988, IECOUT ein Byte auf IEC-Bus
    RTS

; -------------------------------
; Statusmeldung auslesen
; -------------------------------
LF207 JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    CMP #$FF
    BEQ $F20F
    RTS
---------------------------------
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $53
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $54
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $55
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $56
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $4E
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $4F
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $50
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $51
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $4D
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $58
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA $57
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    RTS

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
    STA $50
    STA $51
    JSR TA0B1                 ; LAE20, Grafikbildschirm aktualisieren
    JSR TA04E                 ; LACC3
    JSR TA0EA                 ; LADC9, schalte auf Bitmap Mode
    PLA
    RTS

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
    JSR TA04E                 ; LACC3
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
    LDA #$00
    STA $29
    STA $1C
    LDY #$03
    LDX #$01
    JSR TA00C                 ; LEC31
    DEY
    BNE $FA98
    STY SPALTE                ; $0B
    LDY #$0F                  ; Textfeldnummer, 'Date EAN 13'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY SPALTE                ; $0B
    LDA (TF_P),Y
    AND #$0F
    TAX
    LDA $FB38,X
    STA $26
    INC SPALTE                ; $0B
    LDY SPALTE                ; $0B
    LDA (TF_P),Y
    AND #$0F
    TAX
    LDA $FB42,X
    STA $27
    LDX #$04
    STX ZEILE                 ; $0A
    BIT $26
    BMI $FAD3
    LDA #$00
    ASL $27
    ROL
    ASL $27
    ROL
    BCC $FADB
    LDA $27
    AND #$03
    LSR $27
    LSR $27
    TAX
    INX
    JSR TA00C                 ; LEC31
    DEC ZEILE                 ; $0A
    BNE $FAC5
    ASL $26
    CPY #$06
    BNE $FAB3
    LDY #$05
    LDX #$01
    JSR TA00C                 ; LEC31
    DEY
    BNE $FAEC
    INC SPALTE                ; $0B
    LDY SPALTE                ; $0B
    LDA (TF_P),Y
    AND #$0F
    TAX
    LDA $FB42,X
    STA $27
    LDX #$04
    STX ZEILE                 ; $0A
    LDA #$00
    ASL $27
    ROL
    ASL $27
    ROL
    TAX
    INX
    JSR TA00C                 ; LEC31
    DEC ZEILE                 ; $0A
    BNE $FB06
    CPY #$0C
    BNE $FAF4
    LDY #$03
    LDX #$01
    JSR TA00C                 ; LEC31
    DEY
    BNE $FB1D
    BCS $FB2D
    CLC
    JSR TA102                 ; LEC17
    BCC $FB27
    CLC
    JSR TA102                 ; LEC17
    BCC $FB2D
    DEC F_BCODE               ; $5B Flag
    JMP $A132                   ; LED56, Codegroesse Darstellung Balkencode
---------------------------------
    !by $00,$2C,$34,$38,$4C,$64,$70,$54
    !by $58,$68
---------------------------------
    !by $90,$54,$45,$30,$09,$18,$03,$21
    !by $12,$81

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
    LDA #$00
    STA $29
    STA $1C
    LDY #$03
    LDX #$01
    JSR TA00C                 ; LEC31
    DEY
    BNE $FBB2
    STY SPALTE                ; $0B
    LDY #$10                  ; Textfeldnummer, 'Daten EAN 8'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY SPALTE                ; $0B
    LDA (TF_P),Y
    AND #$0F
    TAX
    LDA $FB42,X
    STA $27
    LDX #$04
    STX ZEILE                 ; $0A
    LDA #$00
    ASL $27
    ROL
    ASL $27
    ROL
    TAX
    INX
    JSR TA00C                 ; LEC31
    DEC ZEILE                 ; $0A
    BNE $FBD1
    INC SPALTE                ; $0B
    CPY #$03
    BNE $FBC1
    LDY #$05
    LDX #$01
    JSR TA00C                 ; LEC31
    DEY
    BNE $FBEA
    LDY SPALTE                ; $0B
    LDA (TF_P),Y
    AND #$0F
    TAX
    LDA $FB42,X
    STA $27
    LDX #$04
    STX ZEILE                 ; $0A
    LDA #$00
    ASL $27
    ROL
    ASL $27
    ROL
    TAX
    INX
    JSR TA00C                 ; LEC31
    DEC ZEILE                 ; $0A
    BNE $FC02
    INC SPALTE                ; $0B
    CPY #$07
    BNE $FBF2
    LDY #$03
    LDX #$01
    JSR TA00C                 ; LEC31
    DEY
    BNE $FC1B
    BCS $FC2B
    CLC
    JSR TA102                 ; LEC17
    BCC $FC25
    INC F_BCODE               ; $5B Flag
    JMP $A132                   ; LED56, Codegroesse Darstellung Balkencode

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
    !by $06,$11,$09,$18,$05,$14,$0C,$03
    !by $12,$0A

    !by $51,$49,$58,$45,$54,$4C,$43,$52
    !by $4A,$46,$91,$89,$98,$85,$94,$8C
    !by $83,$92,$8A,$86,$D1,$C9,$D8,$C5
    !by $D4,$CC

    !by $40,$20,$10,$80


LFCBF ASL
    STA $26
    LDA #$00
    ROL
    ASL $26
    ROL
    ASL $26
    TAX
    TYA
    PHA
    LDA $FCBB,X
    STA $27
    LDY #$05
    LDX #$02
    ASL $26
    BCS $FCDC
    LDX #$01
    JSR TA00C                 ; LEC31
    LDX #$02
    ASL $27
    BCS $FCE7
    LDX #$01
    JSR TA00C                 ; LEC31
    DEY
    BNE $FCD4
    PLA
    TAY
    RTS

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
    STA $29
    STA $1C
    LDA #$C6
    JSR $A0AE
    LDY #$11                  ; Textfeldnummer, 'Daten Code 39'
    JSR TA11A                 ; LA67D, setze Pointer ($0F) auf Textfeld-Start und ($11) auf Attributfeld-Start
    LDY #$10
    LDA (TF_P),Y
    CMP #$20
    BNE $FD66
    DEY
    BPL $FD5D
    INY
    STY SPALTE                ; $0B
    LDY #$00
    CPY SPALTE                ; $0B
    BCS $FDE1
    LDA (TF_P),Y
    CMP #$30
    BCC $FD96
    CMP #$5A
    BCS $FD96
    CMP #$3A
    BCS $FD85
    AND #$0F
    TAX
    LDA $FC97,X
    BNE $FD90
    CMP #$41
    BCC $FD96
    AND #$1F
    TAX
    DEX
    LDA $FCA1,X
    JSR $A0AE
    JMP $FDDE
---------------------------------
    LDX #$C3
    CMP #$2D
    BEQ $FDA0
    LDX #$D2
    CMP #$2E
    BEQ $FDA6
    LDX #$CA
    CMP #$20
    BNE $FDAB
    TXA
    BNE $FD90
    LDX #$E0
    CMP #POS_Y                 ; $24
    BEQ $FDB5
    LDX #$D0
    CMP #$2F
    BEQ $FDBB
    LDX #$B0
    CMP #$2B
    BEQ $FDC1
    LDX #$70
    CMP #$25
    BNE $FDDE
    STX $26
    TYA
    PHA
    LDY #$05
    LDX #$01
    JSR TA00C                 ; LEC31
    LDX #$02
    ASL $26
    BCS $FDD6
    LDX #$01
    JSR TA00C                 ; LEC31
    DEY
    BNE $FDC9
    PLA
    TAY
    INY
    BNE $FD6B
    LDA #$C6
    JSR $A0AE
    BCS $FDEE
    CLC
    JSR TA102                 ; LEC17
    BCC $FDE8
    JMP $A132                   ; LED56, Codegroesse Darstellung Balkencode
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
    JSR $A0E4                 ; LB578
    BEQ $FE6E
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
    LDA #$00
    STA STATUS
    LDA #LWNR                 ; Laufwerksnummer
    JSR TA08A                 ; LF8B3, TALK senden
    LDA #$60
    JSR TA1A4                 ; LF972, Sekunsaeradresse nach TALK senden
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA FILE_VEC
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    STA FILE_VEC+1
    JSR TA054                 ; LF9BE, IECIN ein Byte vom IEC-Bus holen
    LDY #$00
    STA (FILE_VEC),Y
    INC FILE_VEC
    BNE $FE93
    INC FILE_VEC+1
    LDA STATUS
    BEQ $FE86
    JSR TA1B3                 ; LF99A, UNTALK senden
    LDA #$E0
    JSR TA0A8                 ; LB56A, CLOSE
    JMP $8800
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
    RTI

LFF0E
!fill $FFFA-LFF0E,$FF

    !word NMI_vector
    !word RESET_vector
    !word IRQ_vector
	
