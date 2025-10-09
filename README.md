# 🐚 Bash Scripting Learning Repository

Welcome to the **Bash Scripting Learning Repository**! This comprehensive collection of bash scripts is designed to take you from a beginner to an intermediate bash scripter through practical examples and real-world use cases.

## 📚 Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Script Categories](#script-categories)
  - [Fundamentals](#fundamentals)
  - [Variables and Data Types](#variables-and-data-types)
  - [Control Structures](#control-structures)
  - [Functions](#functions)
  - [Arrays](#arrays)
  - [File Operations](#file-operations)
  - [Practical Utilities](#practical-utilities)
- [Learning Path](#learning-path)
- [Best Practices](#best-practices)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [Resources](#resources)

## 🎯 Introduction

Bash (Bourne Again Shell) is one of the most widely used command-line interfaces and scripting languages in Unix-like operating systems. This repository contains **56+ carefully crafted scripts** that demonstrate various bash concepts, from basic syntax to advanced scripting techniques.

Whether you're a system administrator, developer, or just curious about automation, these examples will help you master bash scripting step by step.

## 📋 Prerequisites

- **Operating System**: macOS, Linux, or Windows with WSL
- **Shell**: Bash 3.0+ (most examples work with bash 4.0+)
- **Text Editor**: Any text editor (VS Code, vim, nano, etc.)
- **Basic Knowledge**: Familiarity with command line navigation

To check your bash version:
```bash
bash --version
```

## 🚀 Getting Started

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd learningBash
   ```

2. **Make scripts executable:**
   ```bash
   chmod +x *.sh
   ```

3. **Run your first script:**
   ```bash
   ./intro1.sh
   ```

## 📂 Script Categories

### Fundamentals
- **`intro1.sh`** - Your first bash script
- **`basic.sh`** - Basic bash syntax and structure
- **`printPersonalizedName.sh`** - User input and output
- **`understandingQuotes.sh`** - Single vs double quotes

### Variables and Data Types
- **`bash_variable.sh`** - Variable declaration and usage
- **`variables.sh`** - Advanced variable concepts
- **`variableParams.sh`** - Command line parameters
- **`commandSubstitution.sh`** - Command substitution techniques

### Control Structures
- **`conditional.sh`** - If-else statements
- **`moreConditionals.sh`** - Complex conditional logic
- **`comparingNumbers.sh`** - Numeric comparisons
- **`case.sh`** & **`caseExample.sh`** - Case statements
- **`loop.sh`** - For loops
- **`while.sh`** - While loops
- **`until.sh`** - Until loops

### Functions
- **`functions.sh`** - Function declaration and usage
- **`factorial.sh`** - Recursive functions example

### Arrays
- **`arrays.sh`** - Basic array operations
- **`arrays2.sh`** - Advanced array manipulation
- **`array_loop.sh`** - Iterating through arrays

### File Operations
- **`backup.sh`** - File backup automation
- **`countFiles.sh`** - File counting utilities
- **`deleteNodeModules.sh`** - Directory cleanup
- **`listNodeModules.sh`** - Directory listing

### Practical Utilities
- **`httpRequestWithConditional.sh`** - HTTP requests with error handling
- **`check-unused-deps.sh`** - Dependency analysis
- **`run-test.sh`** - Test automation
- **`setWallpaper.sh`** - System configuration
- **`empty-trash.sh`** - System maintenance

### Mathematical Operations
- **`basicArithemetic.sh`** - Basic math operations
- **`arithmetic.sh`** - Advanced arithmetic
- **`add.sh`** - Addition examples
- **`computeAVG.sh`** - Average calculation

### Pattern Matching & Text Processing
- **`print1to99.sh`** - Number sequences
- **`printEven1to99.sh`** - Even number printing
- **`printOdd1-99.sh`** - Odd number printing
- **`even.sh`** - Even/odd detection

### Advanced Topics
- **`getops.sh`** - Command line option parsing
- **`select.sh`** - Interactive menus
- **`guess.sh`** - Interactive guessing game

## 🗺️ Learning Path

**Beginner (Start Here):**
1. `intro1.sh` → `basic.sh` → `printPersonalizedName.sh`
2. `bash_variable.sh` → `variables.sh` → `understandingQuotes.sh`
3. `conditional.sh` → `comparingNumbers.sh` → `case.sh`

**Intermediate:**
1. `loop.sh` → `while.sh` → `until.sh`
2. `functions.sh` → `factorial.sh`
3. `arrays.sh` → `arrays2.sh` → `array_loop.sh`

**Advanced:**
1. `getops.sh` → `select.sh`
2. `httpRequestWithConditional.sh` → `check-unused-deps.sh`
3. `backup.sh` → Real-world automation scripts

## ✨ Best Practices

- **Always use `#!/bin/bash`** at the beginning of your scripts
- **Use meaningful variable names** (`user_name` instead of `un`)
- **Quote your variables** to prevent word splitting: `"$variable"`
- **Check for command success** using `$?` or `&&`/`||`
- **Add comments** to explain complex logic
- **Use functions** for repeated code
- **Handle errors gracefully** with proper exit codes

## 🔧 Troubleshooting

**Permission Denied:**
```bash
chmod +x script_name.sh
```

**Script not found:**
```bash
./script_name.sh  # Don't forget the ./
```

**Bash not found:**
```bash
which bash  # Check bash location
```

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/new-example`)
3. **Add** your script with clear comments
4. **Update** this README if needed
5. **Submit** a pull request

**Guidelines:**
- Follow existing naming conventions
- Include comments explaining the concept
- Test your scripts on multiple systems if possible
- Add appropriate error handling

## 📖 Resources

- [Bash Manual](https://www.gnu.org/software/bash/manual/)
- [ShellCheck](https://www.shellcheck.net/) - Script analysis tool
- [Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/)
- [Advanced Bash-Scripting Guide](https://tldp.org/LDP/abs/html/)
- [Read more on conditionals](https://www.thegeekstuff.com/2010/06/bash-if-statement-examples/)
- [Read more on control structures](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_08_02.html)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Happy Scripting!** 🎉

*Remember: The best way to learn bash is by doing. Start with simple scripts and gradually work your way up to more complex examples.*
