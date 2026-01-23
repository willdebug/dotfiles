#include <cstdio>
#include <expected> 
#include <fstream>
#include <iterator>
#include<print> 
#include <ranges> 
#include <string>
#include<vector> 
#include<iostream>
#include<concepts> 
#include <type_traits> 
template <typename T> concept stringable = std::is_convertible_v<T , std::string>; 
class Todo {
	std::string title;
	std::string description;
	public : 
		template <stringable String ,stringable String2> Todo(String&& title , String2&& description) : title(std::forward<String>(title)) , description(std::forward<String2>(description)) {}
		 	std::string to_string() const {
				return title + "|" + description + "\n"	; 
			}
		Todo(const std::string& string) {
			size_t pos = string.find("|")	;
			title = string.substr(0 , pos); 
			description =  string.substr(pos + 1) ; 
		}
}; 

class TodoList {
	std::vector<Todo> todo_list ; 
		private : 
		TodoList(std::vector<Todo>&& todos) : todo_list(std::move(todos)) {}

	public : 
		TodoList from_file(const std::string& filename) {
			std::ifstream file(filename);
			std::string line; 
			std::vector<Todo> todos ; 
			while (std::getline(file , line)){
				todos.emplace_back(line);
			}
			TodoList list(std::move(todos)); 
			return list ; 
		}
		void to_file() {
			std::string final_string ; 
			for (const auto& i : todo_list) {
				final_string += i.to_string();  
			}
			std::ofstream file("todos.txt"); 
			file << final_string;
		}
		void append(Todo&& todo) {
			todo_list.emplace_back(todo); 
		}
		Todo& operator[](std::size_t index) {
			return todo_list[index]; 
		}
		
}; 
