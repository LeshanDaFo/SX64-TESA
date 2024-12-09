
# History:
# V1.0 =   Initial version

export MAIN=$(pwd)
export BUILD=$MAIN/build

# acme-Befehl zum erstellen der Binaerdatei
$MAIN/bin/mac/acme $MAIN/source/TESA.asm

echo "Erstelle Dateien..."

# Main-Datei aufteilen
split -n 3 $BUILD/TESA.bin $BUILD/out
if [ $? -ne 0 ]; then
    echo "Fehler: Aufteilen der main.bin fehlgeschlagen!"
    exit 1
fi

# Ausgabedateien umbenennen
mv $BUILD/outaa $BUILD/Tesa-basic.bin
if [ $? -ne 0 ]; then
    echo "Fehler: Umbenennen von outaa nach TESA-basic.bin fehlgeschlagen!"
    exit 1
else
    echo "Tesa-basic.bin    -> erstellt"
fi

mv $BUILD/outac $BUILD/Tesa-kernal.bin
if [ $? -ne 0 ]; then
    echo "Fehler: Umbenennen von outac nach TESA-kernal.bin fehlgeschlagen!"
    exit 1
else
    echo "Tesa-kernal.bin    -> erstellt"
fi

mv $BUILD/outab $BUILD/char
if [ $? -ne 0 ]; then
    echo "Fehler: Umbenennen von outab nach char fehlgeschlagen!"
    exit 1
fi

# Char-Datei aufteilen
split -n 2 $BUILD/char $BUILD/char
if [ $? -ne 0 ]; then
    echo "Fehler: Aufteilen der char-Datei fehlgeschlagen!"
    exit 1
fi

# Char-Datei umbenennen
mv $BUILD/charab $BUILD/Tesa-char.bin
if [ $? -ne 0 ]; then
    echo "Fehler: Umbenennen von charab nach RESA-char.bin fehlgeschlagen!"
    exit 1
else
    echo "Tesa-char.bin      -> erstellt"
fi


# Alte Dateien löschen
rm $BUILD/TESA.bin $BUILD/char*
if [ $? -ne 0 ]; then
    echo "Fehler: Loeschen der temporaeren Dateien fehlgeschlagen!"
    exit 1
fi

echo "Alle Dateien wurden erstellt."
echo "By,by"
echo ""
exit
