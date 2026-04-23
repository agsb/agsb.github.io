# notes

 https://gcc.gnu.org/onlinedocs/gcc-14.3.0/gcc/RISC-V-Options.html

The following options are target specific:
  -mabi=                      Specify integer and floating-point calling convention.
  -malign-data=               Use the given data alignment.
  -march=                     Generate code for given RISC-V ISA (e.g. RV64IM).  ISA strings must be
                              lower-case.
  -mbig-endian                Assume target CPU is configured as big endian.
  -mbranch-cost=N             Set the cost of branches to roughly N instructions.
  -mcmodel=                   Specify the code model.
  -mcpu=PROCESSOR             Use architecture of and optimize the output for PROCESSOR.
  -mcsr-check                 Enable the CSR checking for the ISA-dependent CRS and the read-only CSR.
                              The ISA-dependent CSR are only valid when the specific ISA is set.  The
                              read-only CSR can not be written by the CSR instructions.
  -mdiv                       Use hardware instructions for integer division.
  -mexplicit-relocs           Use %reloc() operators, rather than assembly macros, to load addresses.
  -mfdiv                      Use hardware floating-point divide and square root instructions.
  -minline-atomics            Always inline subword atomic operations.
  -misa-spec=                 Set the version of RISC-V ISA spec.
  -mlittle-endian             Assume target CPU is configured as little endian.
  -mplt                       When generating -fpic code, allow the use of PLTs. Ignored for fno-pic.
  -mpreferred-stack-boundary= Attempt to keep stack aligned to this power of 2.
  -mrelax                     Take advantage of linker relaxations to reduce the number of
                              instructions required to materialize symbol addresses.
  -mriscv-attribute           Emit RISC-V ELF attribute.
  -msave-restore              Use smaller but slower prologue and epilogue code.
  -mshorten-memrefs           Convert BASE + LARGE_OFFSET addresses to NEW_BASE + SMALL_OFFSET to
                              allow more memory accesses to be generated as compressed instructions. 
                              Currently targets 32-bit integer load/stores.
  -msmall-data-limit=N        Put global and static data smaller than <number> bytes into a special
                              section (on some targets).
  -mstack-protector-guard-offset= Use the given offset for addressing the stack-protector guard.
  -mstack-protector-guard-reg= Use the given base register for addressing the stack-protector guard.
  -mstack-protector-guard=    Use given stack-protector guard.
  -mstrict-align              Do not generate unaligned memory accesses.
  -mtune=PROCESSOR            Optimize the output for PROCESSOR.

  Supported ABIs (for use with the -mabi= option):
    ilp32 ilp32d ilp32e ilp32f lp64 lp64d lp64f

  Known code models (for use with the -mcmodel= option):
    medany medlow

  Supported ISA specs (for use with the -misa-spec= option):
    2.2 20190608 20191213

  Known data alignment choices (for use with the -malign-data= option):
    natural xlen

  Valid arguments to -mstack-protector-guard=:
    global tls

  Known valid arguments for -mcpu= option:
    sifive-e20 sifive-e21 sifive-e24 sifive-e31 sifive-e34 sifive-e76 sifive-s21 sifive-s51 sifive-s54 sifive-s76 sifive-u54 sifive-u74 thead-c906

  Known valid arguments for -mtune= option:
    rocket sifive-3-series sifive-5-series sifive-7-series thead-c906 size sifive-e20 sifive-e21 sifive-e24 sifive-e31 sifive-e34 sifive-e76 sifive-s21 sifive-s51 sifive-s54 sifive-s76 sifive-u54 sifive-u74 thead-c906

Assembler options
=================

Use "-Wa,OPTION" to pass "OPTION" to the assembler.

RISC-V options:
  -fpic or -fPIC              generate position-independent code
  -fno-pic                    don't generate position-independent code (default)
  -march=ISA                  set the RISC-V architecture
  -misa-spec=ISAspec          set the RISC-V ISA spec (2.2, 20190608, 20191213)
  -mpriv-spec=PRIVspec        set the RISC-V privilege spec (1.9.1, 1.10, 1.11, 1.12)
  -mabi=ABI                   set the RISC-V ABI
  -mrelax                     enable relax (default)
  -mno-relax                  disable relax
  -march-attr                 generate RISC-V arch attribute
  -mno-arch-attr              don't generate RISC-V arch attribute
  -mcsr-check                 enable the csr ISA and privilege spec version checks
  -mno-csr-check              disable the csr ISA and privilege spec version checks (default)
  -mbig-endian                assemble for big-endian
  -mlittle-endian             assemble for little-endian

Linker options
==============

Use "-Wl,OPTION" to pass "OPTION" to the linker.

elf64lriscv: 
  --relax-gp                  Perform GP relaxation
  --no-relax-gp               Don't perform GP relaxation
  --check-uleb128             Check if SUB_ULEB128 has non-zero addend
  --no-check-uleb128          Don't check if SUB_ULEB128 has non-zero addend
elf32lriscv: 
  --relax-gp                  Perform GP relaxation
  --no-relax-gp               Don't perform GP relaxation
  --check-uleb128             Check if SUB_ULEB128 has non-zero addend
  --no-check-uleb128          Don't check if SUB_ULEB128 has non-zero addend
elf64briscv: 
  --relax-gp                  Perform GP relaxation
  --no-relax-gp               Don't perform GP relaxation
  --check-uleb128             Check if SUB_ULEB128 has non-zero addend
  --no-check-uleb128          Don't check if SUB_ULEB128 has non-zero addend
elf32briscv: 
  --relax-gp                  Perform GP relaxation
  --no-relax-gp               Don't perform GP relaxation
  --check-uleb128             Check if SUB_ULEB128 has non-zero addend
  --no-check-uleb128          Don't check if SUB_ULEB128 has non-zero addend

## 
