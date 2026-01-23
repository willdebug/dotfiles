#include <cstdlib>
#include <iostream>
#include <print>

void run_game() {
  srand(time(0));
  int num = rand() % 11;
  std::println("The aim of this game is to guess the number from 1 to 10");
  int player_guess = 0;
  int counter = 0;
  std::string guess;
  while (player_guess != num) {
    if (counter != 0) {
      std::println("INCORRECT");
    }
    std::println("Please make a guess:");
    std::cin >> guess;
    player_guess = atoi(guess.c_str());
    counter++;
  }
  std::println("Congratulations the number was {}\nYou managed to guess the "
               "number in {} guesses",
               num, counter);
}

int main() { run_game(); }
