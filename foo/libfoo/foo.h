#pragma once

struct Person {
  char *name;
  int age;
};

/* Technically, this function doesn't have to be written explicitly, but the
   struct does. */
void say_hello(struct Person *person);
