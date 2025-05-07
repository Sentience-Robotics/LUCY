#include <stdio.h>
#include <pico/stdlib.h>

int main(void) {
  stdio_init_all();

  while (true) {
    printf("Hello world");
    sleep_ms(1000);
  }
  return 0;
}
