#include <chrono>
#include <filesystem>
#include <print>
#include <thread>

class Timer {
  std::chrono::time_point<std::chrono::high_resolution_clock> time;

public:
  Timer() : time(std::chrono::high_resolution_clock::now()) {}
  ~Timer() {
    auto current_time = std::chrono::high_resolution_clock::now();
    auto diff = current_time - time;
    std::println("This took {} seconds", diff.count());
  }
};

int main() {
  Timer timer;
  auto path = std::filesystem::current_path();
}
