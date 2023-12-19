## About The Project

The project is a script with a set of tests based on the Bit Twiddling Hacks article creaeted to carry reasearch on the different compilers' ability to generate bitmanip instructions wherever it can boost the efficiency of the program. This script is an enhanced version of the previous one of mine https://github.com/Salvatore112/bitmanip-script

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

The script takes 3 mandatory flags:

./python main.py &lt;compiler> &lt;optimization_flag> &lt;microarchitecture_flag>

where:

&lt;compiler> - path to a compiler

&lt;optimization_flag> - level of optimization (one should use a flag, i'e "-O3" or "-O0")

&lt;microarchitecture_flag> - target's microarchitecture_flag (one should use a flag, i.e "-march=riscv64")

<p align="right">(<a href="#readme-top">back to top</a>)</p>
