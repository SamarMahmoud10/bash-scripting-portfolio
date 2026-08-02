#  Progressive Bash Scripting Reference Guide for DevOps

Welcome to my personal Bash reference repository! 🎯 This repository contains a curated, comprehensive, and progressive collection of **59 practical examples** that document my journey into learning and mastering Linux shell scripting for DevOps. 

The repository transitions smoothly from absolute syntax fundamentals to advanced task automation, programmatic logic, and heavy-duty text processing.

---

##  Repository Architecture & Roadmap

The codebase is strictly structured into 6 sequential modules. Each directory represents a higher level of complexity:

###  01. Basics (`/01-basics`)
*Focused on fundamental environment syntax and operations.*
*   **01 to 05**: Shebang initialization (`#!/bin/bash` vs `#!/usr/bin/env bash`), shell execution methods, and file permissions (`chmod +x`).
*   **06 to 08**: Literal preservation via Single Quotes (`' '`) vs variable expansion via Double Quotes (`" "`), and character escaping (`\$`).
*   **09 to 11**: Static and dynamic variable evaluation (e.g., date-based strings for backups) and core integer arithmetic operations.

###  02. Conditionals (`/02-conditionals`)
*Focused on programmatic decision making and validations.*
*   **12**: Basic directory checking (`if/else` conditions).
*   **13 & 14**: Comparative analysis between classic test brackets `[ ]` (vulnerable to word splitting) and modern bash brackets `[[ ]]` (space-safe).
*   **15 & 16**: String length validation (`-z` for empty inputs) and runtime user identity mapping (root user enforcement via UID checking).
*   **17 & 18**: Advanced file property validations (`-f`, `-r`, `-s`) combined with multi-logical gates (`||`, `!`), leading into the foundational syntax of `case` switches.

###  03. Loops & Positional Arguments (`/03-loops-and-arguments`)
*Focused on iterative data streaming and parameter management.*
*   **19**: Practical service control script template leveraging argument input (`$1`) parsed through a `case` state machine.
*   **20 to 22**: Deep dive into loop variables and the critical operational difference between unquoted expansions vs quoted strict arrays (`$*` vs `"$*"` vs `$@` vs `"$@"`).
*   **23 to 25**: Automation patterns including bulk file extension renaming, iterative batch user creation, and target Kubernetes pod eviction based on parsed logs.
*   **26 to 28**: Analyzing the `for-cat` stream anti-pattern vs the canonical `while IFS= read -r` approach for processing files line-by-line, concluded by service health checking using an `until` loop.

###  04. Functions & Control Flow (`/04-functions-and-control`)
*Focused on modularity, variable scopes, and loop control states.*
*   **29 & 30**: Functional declarations, sandboxing data using the `local` keyword, and string output capturing.
*   **31 to 34**: Implementing immediate break signals inside active scanners, optimizing loop skips using `continue`, and breaking out of multi-layered nested loops seamlessly via `break 2`.

###  05. Arrays (`/05-arrays`)
*Focused on compound structural data design.*
*   **38 to 41**: Instantiating Indexed Arrays, element address extraction, array counting elements (`${#array[@]}`), and dynamic element appending (`+=`).
*   **42 to 48**: Simulating and fixing edge cases involving string array iteration containing unescaped whitespaces using exact index parsing.
*   **49 to 52**: Constructing Key-Value structures via Associative Arrays (`declare -A`), extracting map keys via `"${!array[@]}"`, and querying key existences via `-v`.

###  06. Text Processing & Log Analysis (`/06-text-processing-log-analysis`)
*Focused on processing production data and parsing text logs.*
*   **53 to 55**: Building an end-to-end telemetry log analysis tool using an associative counter map fed by a file stream to yield structured data statistics.
*   **56**: Regular expressions engine mapping IPv4 patterns from authentication server security logs via `grep -E -o`.
*   **57**: Stream manipulation via `sed` to search, inject config backups (`-i.bak`), and dynamically alter active network daemon properties.
*   **58 & 59**: Columnar relational layout data extraction from system database matrices (`/etc/passwd`), alongside runtime structural evaluations (adding arithmetic byte sums) natively in `awk`.

---

##  Local Setup & Execution Instructions

To explore or debug these configurations within a local environment, follow these standard steps:

1. **Clone the repository locally:**
   ```bash
   git clone https://github.com
   cd bash-scripting-masterclass
   ```

2. **Grant execution permissions to the target script:**
   ```bash
   chmod +x 01-basics/10-dynamic-backup-dir.sh
   ```

3. **Execute the script:**
   ```bash
   ./01-basics/10-dynamic-backup-dir.sh
   ```

---
  *Built with high attention to shell safety, POSIX compliance best practices, and clean documentation.*

  ##  Capstone Projects(bash-server-health-check)

* **[Automated Server Health Checker]([https://github.com/SamarMahmoud10/](https://github.com/SamarMahmoud10/bash-server-health-check))**: A production-ready Bash script designed to safely monitor remote servers via SSH, using strict mode, trap handlers, and secure argument parsing.

