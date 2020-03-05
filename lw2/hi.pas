PROGRAM Lw(INPUT, OUTPUT);
USES
  Dos;
VAR
  name: STRING;
  a : INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  name := GetEnv('QUERY_STRING');
  a := POS('name=', name);
  IF length(name)= a + 4
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    IF a <> 0
    THEN
      BEGIN
        DELETE(name, 1, a + 4);
        WRITELN('Hello dear,', name)
      END
END.


