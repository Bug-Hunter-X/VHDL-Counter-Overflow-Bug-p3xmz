# VHDL Counter with Overflow Handling

This repository demonstrates a common bug in VHDL counters: potential overflow issues when the upper bound of the counter is not correctly handled.  The `buggy_counter.vhdl` file contains code with the bug.  The `fixed_counter.vhdl` shows how to improve the counter's design to handle overflow safely.

## Bug Description
The original counter uses an integer type with a specific range (0 to 15).  While it correctly handles incrementing up to 15 and resetting, it lacks robust error handling if the upper bound changes.

## Solution
The improved counter utilizes a more flexible approach to prevent such errors.  This involves careful consideration of the range and avoiding potential overflow issues for broader application.
