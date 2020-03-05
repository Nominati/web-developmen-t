PROGRAM PaulRevere(INPUT,OUTPUT);
USES
  Dos;
VAR
  Lanterns: STRING;
  a :INTEGER;
BEGIN {PaulRevere}
  {Read Lanterns}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Lanterns := GetEnv('QUERY_STRING');
  a := POS('Lanterns=', Lanterns);
  IF a <> 0
  THEN
    BEGIN
      DELETE(Lanterns, 1, a + 8);
      {Issue Paul Revere's message}
      IF Lanterns > '0'
      THEN
        IF Lanterns < '3'
        THEN
          WRITE('The British are coming by ');
      IF Lanterns = '1'
       THEN
         WRITELN('land.')
      ELSE
        IF Lanterns = '2'
        THEN
          WRITELN('sea.')
        ELSE
          WRITELN('The North Church shows only ''', Lanterns, '''.')
    END
  ELSE
    WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}
