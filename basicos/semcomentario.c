#include <stdio.h>

int main () {
    char c;
    while ((c = getchar ()) != EOF) {
        if (c == '#') {
            do {c = getchar ();} while (c != '\n');
            printf ("%c", c);
        }
        else if (c == '[')
            do {c = getchar ();} while (c != ']');
        else
            printf ("%c", c);
    }

    return 0;
}
