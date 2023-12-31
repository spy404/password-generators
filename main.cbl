IDENTIFICATION DIVISION.
PROGRAM-ID. PASSWORD-GENERATOR.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 LENGTH PIC 9(2) VALUE 10.
01 PASSWORD PIC X(10).

PROCEDURE DIVISION.
MAIN-LOGIC.

    PERFORM GENERATE-PASSWORD
        VARYING I FROM 1 BY 1
        UNTIL I > LENGTH

    DISPLAY PASSWORD.

    STOP RUN.

GENERATE-PASSWORD.
    MOVE "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]" TO CHARACTERS.

    PERFORM VARYING I FROM 1 BY 1
        UNTIL I > LENGTH
        COMPUTE RAND-INDEX = FUNCTION RANDOM(1, 74)
        MOVE CHARACTERS(RAND-INDEX:1) TO PASSWORD(I:1)
    END-PERFORM.
