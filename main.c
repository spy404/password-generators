#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

char* generate_password(int length) {
  char charset[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  char* password = malloc(length * sizeof(char));

  srand(time(NULL));

  for (int i = 0; i < length; i++) {
    int random_index = rand() % strlen(charset);
    password[i] = charset[random_index];
  }

  return password;
}

void print_password(char* password, int length) {
  for (int i = 0; i < length; i++) {
    printf("%c", password[i]);
  }
  printf("\n");
}

int main() {
  char* password = generate_password(10);
  print_password(password, 10);

  return 0;
}
