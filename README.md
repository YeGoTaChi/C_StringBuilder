# String Builder in C

This is a simple implementation of a String Builder in C, designed to provide efficient string manipulation capabilities compared to using normal strings in C.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Advantages](#advantages)

## Introduction

The String Builder (`t_strbuilder`) is a data structure that dynamically manages a character array (`str`) while allowing efficient appending of strings. It is particularly useful when dealing with dynamic string creation in C, providing a flexible and memory-efficient alternative to traditional string handling methods.

## Usage

### Initialization

To use the String Builder, first initialize it using the `stringbuilder()` function:

```c
t_strbuilder *sb = stringbuilder();
```

### Appending Strings

Strings can be appended to the String Builder using the `sb_append()` function:

```c
sb_append(sb, "Hello, ");
sb_append(sb, "World");
```

### Appending Integers

Integers can also be appended using the `sb_append_int()` function:

```c
sb_append_int(sb, 42);
```

### Freeing Memory

Remember to free the memory allocated by the String Builder using `sb_free()` when done:

```c
sb_free(sb);
```

## Advantages

- **Dynamic Capacity:** The String Builder dynamically adjusts its capacity as needed, reducing memory waste.
- **Efficient Appending:** Appending strings and integers is efficient, thanks to the reallocation strategy.
- **Memory Management:** Simplifies memory management by handling memory allocation and reallocation internally.
