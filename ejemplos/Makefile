CPP_FILES := $(wildcard src/*.cpp)
OBJ_FILES := $(addprefix obj/,$(notdir $(CPP_FILES: .cpp=.o)))
CC_FLAGS := -g -std=c++0x

TSP:
	g++ $(CC_FLAGS) $(CPP_FILES) -o $@ $^
