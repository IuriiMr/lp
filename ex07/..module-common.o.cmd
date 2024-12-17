savedcmd_.module-common.o := gcc -Wp,-MMD,./..module-common.o.d -nostdinc -I/sources/linux-next/arch/x86/include -I/sources/linux-next/arch/x86/include/generated -I/sources/linux-next/include -I/sources/linux-next/include -I/sources/linux-next/arch/x86/include/uapi -I/sources/linux-next/arch/x86/include/generated/uapi -I/sources/linux-next/include/uapi -I/sources/linux-next/include/generated/uapi -include /sources/linux-next/include/linux/compiler-version.h -include /sources/linux-next/include/linux/kconfig.h -include /sources/linux-next/include/linux/compiler_types.h -D__KERNEL__ -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fno-jump-tables -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -fomit-frame-pointer -ftrivial-auto-var-init=zero -fno-stack-clash-protection -fmin-function-alignment=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -fconserve-stack -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=2048 -Wno-main -Wno-dangling-pointer -Wvla -Wno-pointer-sign -Wcast-function-type -Wno-stringop-overflow -Wno-array-bounds -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wextra -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter  -DMODULE  -DKBUILD_BASENAME='".module_common"' -DKBUILD_MODNAME='".module_common.o"' -D__KBUILD_MODNAME=kmod_.module_common.o -c -o .module-common.o /sources/linux-next/scripts/module-common.c   ; /sources/linux-next/tools/objtool/objtool --hacks=jump_label --hacks=noinstr --hacks=skylake --ibt --orc --retpoline --rethunk --static-call --uaccess --prefix=16  --link  --module .module-common.o

source_.module-common.o := /sources/linux-next/scripts/module-common.c

deps_.module-common.o := \
    $(wildcard include/config/UNWINDER_ORC) \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
  /sources/linux-next/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /sources/linux-next/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /sources/linux-next/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/UBSAN_SIGNED_WRAP) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /sources/linux-next/include/linux/compiler_attributes.h \
  /sources/linux-next/include/linux/compiler-gcc.h \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
  /sources/linux-next/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
    $(wildcard include/config/ARCH_HAS_EXECMEM_ROX) \
  /sources/linux-next/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /sources/linux-next/include/linux/container_of.h \
  /sources/linux-next/include/linux/build_bug.h \
  /sources/linux-next/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
    $(wildcard include/config/CC_HAS_TYPEOF_UNQUAL) \
  /sources/linux-next/arch/x86/include/generated/asm/rwonce.h \
  /sources/linux-next/include/asm-generic/rwonce.h \
  /sources/linux-next/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /sources/linux-next/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /sources/linux-next/include/uapi/linux/types.h \
  /sources/linux-next/arch/x86/include/generated/uapi/asm/types.h \
  /sources/linux-next/include/uapi/asm-generic/types.h \
  /sources/linux-next/include/asm-generic/int-ll64.h \
  /sources/linux-next/include/uapi/asm-generic/int-ll64.h \
  /sources/linux-next/arch/x86/include/uapi/asm/bitsperlong.h \
  /sources/linux-next/include/asm-generic/bitsperlong.h \
  /sources/linux-next/include/uapi/asm-generic/bitsperlong.h \
  /sources/linux-next/include/uapi/linux/posix_types.h \
  /sources/linux-next/include/linux/stddef.h \
  /sources/linux-next/include/uapi/linux/stddef.h \
  /sources/linux-next/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/X86_32) \
  /sources/linux-next/arch/x86/include/uapi/asm/posix_types_64.h \
  /sources/linux-next/include/uapi/asm-generic/posix_types.h \
  /sources/linux-next/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /sources/linux-next/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /sources/linux-next/include/linux/const.h \
  /sources/linux-next/include/vdso/const.h \
  /sources/linux-next/include/uapi/linux/const.h \
  /sources/linux-next/arch/x86/include/asm/barrier.h \
  /sources/linux-next/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/CALL_THUNKS) \
  /sources/linux-next/include/linux/stringify.h \
  /sources/linux-next/include/linux/objtool.h \
    $(wildcard include/config/FRAME_POINTER) \
    $(wildcard include/config/NOINSTR_VALIDATION) \
    $(wildcard include/config/MITIGATION_UNRET_ENTRY) \
    $(wildcard include/config/MITIGATION_SRSO) \
  /sources/linux-next/include/linux/objtool_types.h \
  /sources/linux-next/arch/x86/include/asm/asm.h \
  /sources/linux-next/arch/x86/include/asm/extable_fixup_types.h \
  /sources/linux-next/arch/x86/include/asm/nops.h \
  /sources/linux-next/include/asm-generic/barrier.h \
  /sources/linux-next/include/linux/stat.h \
  /sources/linux-next/arch/x86/include/uapi/asm/stat.h \
  /sources/linux-next/include/uapi/linux/stat.h \
  /sources/linux-next/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /sources/linux-next/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /sources/linux-next/include/uapi/linux/kernel.h \
  /sources/linux-next/include/uapi/linux/sysinfo.h \
  /sources/linux-next/arch/x86/include/asm/cache.h \
    $(wildcard include/config/X86_L1_CACHE_SHIFT) \
    $(wildcard include/config/X86_INTERNODE_CACHE_SHIFT) \
    $(wildcard include/config/X86_VSMP) \
  /sources/linux-next/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /sources/linux-next/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
  /sources/linux-next/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/CALL_PADDING) \
    $(wildcard include/config/MITIGATION_RETHUNK) \
    $(wildcard include/config/MITIGATION_SLS) \
    $(wildcard include/config/FUNCTION_PADDING_BYTES) \
    $(wildcard include/config/UML) \
  /sources/linux-next/arch/x86/include/asm/ibt.h \
    $(wildcard include/config/X86_KERNEL_IBT) \
  /sources/linux-next/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /sources/linux-next/include/linux/math.h \
  /sources/linux-next/arch/x86/include/asm/div64.h \
  /sources/linux-next/include/asm-generic/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /sources/linux-next/include/vdso/math64.h \
  /sources/linux-next/include/linux/time64.h \
  /sources/linux-next/include/vdso/time64.h \
  /sources/linux-next/include/uapi/linux/time.h \
  /sources/linux-next/include/uapi/linux/time_types.h \
  /sources/linux-next/include/linux/time32.h \
  /sources/linux-next/include/linux/timex.h \
  /sources/linux-next/include/uapi/linux/timex.h \
  /sources/linux-next/include/uapi/linux/param.h \
  /sources/linux-next/arch/x86/include/generated/uapi/asm/param.h \
  /sources/linux-next/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /sources/linux-next/include/uapi/asm-generic/param.h \
  /sources/linux-next/arch/x86/include/asm/timex.h \
    $(wildcard include/config/X86_TSC) \
  /sources/linux-next/arch/x86/include/asm/processor.h \
    $(wildcard include/config/X86_VMX_FEATURE_NAMES) \
    $(wildcard include/config/X86_IOPL_IOPERM) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/VM86) \
    $(wildcard include/config/X86_USER_SHADOW_STACK) \
    $(wildcard include/config/USE_X86_SEG_SUPPORT) \
    $(wildcard include/config/PARAVIRT_XXL) \
    $(wildcard include/config/CPU_SUP_AMD) \
    $(wildcard include/config/XEN) \
  /sources/linux-next/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/MITIGATION_PAGE_TABLE_ISOLATION) \
  /sources/linux-next/arch/x86/include/uapi/asm/processor-flags.h \
  /sources/linux-next/include/linux/mem_encrypt.h \
    $(wildcard include/config/ARCH_HAS_MEM_ENCRYPT) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /sources/linux-next/arch/x86/include/asm/mem_encrypt.h \
    $(wildcard include/config/X86_MEM_ENCRYPT) \
  /sources/linux-next/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /sources/linux-next/include/linux/cc_platform.h \
    $(wildcard include/config/ARCH_HAS_CC_PLATFORM) \
  /sources/linux-next/arch/x86/include/asm/math_emu.h \
  /sources/linux-next/arch/x86/include/asm/ptrace.h \
    $(wildcard include/config/PARAVIRT) \
    $(wildcard include/config/IA32_EMULATION) \
    $(wildcard include/config/X86_DEBUGCTLMSR) \
  /sources/linux-next/arch/x86/include/asm/segment.h \
    $(wildcard include/config/XEN_PV) \
  /sources/linux-next/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/PHYSICAL_START) \
    $(wildcard include/config/PHYSICAL_ALIGN) \
    $(wildcard include/config/DYNAMIC_PHYSICAL_MASK) \
  /sources/linux-next/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /sources/linux-next/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/DYNAMIC_MEMORY_LAYOUT) \
    $(wildcard include/config/X86_5LEVEL) \
    $(wildcard include/config/RANDOMIZE_BASE) \
  /sources/linux-next/arch/x86/include/asm/kaslr.h \
    $(wildcard include/config/RANDOMIZE_MEMORY) \
  /sources/linux-next/arch/x86/include/uapi/asm/ptrace.h \
  /sources/linux-next/arch/x86/include/uapi/asm/ptrace-abi.h \
  /sources/linux-next/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
    $(wildcard include/config/ZERO_CALL_USED_REGS) \
    $(wildcard include/config/PARAVIRT_DEBUG) \
  /sources/linux-next/arch/x86/include/asm/desc_defs.h \
  /sources/linux-next/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/X86_INTEL_MEMORY_PROTECTION_KEYS) \
    $(wildcard include/config/X86_PAE) \
    $(wildcard include/config/MEM_SOFT_DIRTY) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
    $(wildcard include/config/PROC_FS) \
  /sources/linux-next/arch/x86/include/asm/pgtable_64_types.h \
    $(wildcard include/config/KMSAN) \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
  /sources/linux-next/arch/x86/include/asm/sparsemem.h \
    $(wildcard include/config/SPARSEMEM) \
  /sources/linux-next/arch/x86/include/asm/nospec-branch.h \
    $(wildcard include/config/CALL_THUNKS_DEBUG) \
    $(wildcard include/config/MITIGATION_CALL_DEPTH_TRACKING) \
    $(wildcard include/config/MITIGATION_IBPB_ENTRY) \
  /sources/linux-next/include/linux/static_key.h \
  /sources/linux-next/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /sources/linux-next/arch/x86/include/asm/jump_label.h \
    $(wildcard include/config/HAVE_JUMP_LABEL_HACK) \
  /sources/linux-next/arch/x86/include/asm/cpufeatures.h \
  /sources/linux-next/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/X86_MINIMUM_CPU_FAMILY) \
    $(wildcard include/config/MATH_EMULATION) \
    $(wildcard include/config/X86_CMPXCHG64) \
    $(wildcard include/config/X86_CMOV) \
    $(wildcard include/config/X86_P6_NOP) \
    $(wildcard include/config/MATOM) \
  /sources/linux-next/arch/x86/include/asm/disabled-features.h \
    $(wildcard include/config/X86_UMIP) \
    $(wildcard include/config/ADDRESS_MASKING) \
    $(wildcard include/config/INTEL_IOMMU_SVM) \
    $(wildcard include/config/X86_SGX) \
    $(wildcard include/config/INTEL_TDX_GUEST) \
    $(wildcard include/config/X86_FRED) \
    $(wildcard include/config/KVM_AMD_SEV) \
  /sources/linux-next/arch/x86/include/asm/msr-index.h \
  /sources/linux-next/include/linux/bits.h \
  /sources/linux-next/include/vdso/bits.h \
  /sources/linux-next/include/uapi/linux/bits.h \
  /sources/linux-next/arch/x86/include/asm/unwind_hints.h \
  /sources/linux-next/arch/x86/include/asm/orc_types.h \
  /sources/linux-next/arch/x86/include/uapi/asm/byteorder.h \
  /sources/linux-next/include/linux/byteorder/little_endian.h \
  /sources/linux-next/include/uapi/linux/byteorder/little_endian.h \
  /sources/linux-next/include/linux/swab.h \
  /sources/linux-next/include/uapi/linux/swab.h \
  /sources/linux-next/arch/x86/include/uapi/asm/swab.h \
  /sources/linux-next/include/linux/byteorder/generic.h \
  /sources/linux-next/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/X86_64_SMP) \
    $(wildcard include/config/CC_HAS_NAMED_AS) \
  /sources/linux-next/include/asm-generic/percpu.h \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /sources/linux-next/include/linux/threads.h \
    $(wildcard include/config/NR_CPUS) \
    $(wildcard include/config/BASE_SMALL) \
  /sources/linux-next/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
  /sources/linux-next/arch/x86/include/asm/current.h \
  /sources/linux-next/arch/x86/include/asm/asm-offsets.h \
  /sources/linux-next/include/generated/asm-offsets.h \
  /sources/linux-next/arch/x86/include/asm/GEN-for-each-reg.h \
  /sources/linux-next/arch/x86/include/asm/spinlock_types.h \
  /sources/linux-next/include/asm-generic/qspinlock_types.h \
  /sources/linux-next/include/asm-generic/qrwlock_types.h \
  /sources/linux-next/arch/x86/include/asm/proto.h \
  /sources/linux-next/arch/x86/include/uapi/asm/ldt.h \
  /sources/linux-next/arch/x86/include/uapi/asm/sigcontext.h \
  /sources/linux-next/arch/x86/include/asm/cpuid.h \
  /sources/linux-next/arch/x86/include/asm/string.h \
  /sources/linux-next/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
  /sources/linux-next/arch/x86/include/asm/page.h \
  /sources/linux-next/arch/x86/include/asm/page_64.h \
    $(wildcard include/config/DEBUG_VIRTUAL) \
    $(wildcard include/config/X86_VSYSCALL_EMULATION) \
  /sources/linux-next/include/linux/kmsan-checks.h \
  /sources/linux-next/include/linux/range.h \
  /sources/linux-next/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
  /sources/linux-next/include/linux/pfn.h \
  /sources/linux-next/include/asm-generic/getorder.h \
  /sources/linux-next/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /sources/linux-next/include/linux/bitops.h \
  /sources/linux-next/include/linux/typecheck.h \
  /sources/linux-next/include/asm-generic/bitops/generic-non-atomic.h \
  /sources/linux-next/arch/x86/include/asm/bitops.h \
  /sources/linux-next/arch/x86/include/asm/rmwcc.h \
  /sources/linux-next/include/linux/args.h \
  /sources/linux-next/include/asm-generic/bitops/sched.h \
  /sources/linux-next/arch/x86/include/asm/arch_hweight.h \
  /sources/linux-next/include/asm-generic/bitops/const_hweight.h \
  /sources/linux-next/include/asm-generic/bitops/instrumented-atomic.h \
  /sources/linux-next/include/linux/instrumented.h \
  /sources/linux-next/include/asm-generic/bitops/instrumented-non-atomic.h \
    $(wildcard include/config/KCSAN_ASSUME_PLAIN_WRITES_ATOMIC) \
  /sources/linux-next/include/asm-generic/bitops/instrumented-lock.h \
  /sources/linux-next/include/asm-generic/bitops/le.h \
  /sources/linux-next/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /sources/linux-next/arch/x86/include/asm/special_insns.h \
  /sources/linux-next/include/linux/errno.h \
  /sources/linux-next/include/uapi/linux/errno.h \
  /sources/linux-next/arch/x86/include/generated/uapi/asm/errno.h \
  /sources/linux-next/include/uapi/asm-generic/errno.h \
  /sources/linux-next/include/uapi/asm-generic/errno-base.h \
  /sources/linux-next/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /sources/linux-next/include/linux/irqflags_types.h \
  /sources/linux-next/include/linux/cleanup.h \
  /sources/linux-next/arch/x86/include/asm/irqflags.h \
    $(wildcard include/config/DEBUG_ENTRY) \
  /sources/linux-next/arch/x86/include/asm/fpu/types.h \
  /sources/linux-next/arch/x86/include/asm/vmxfeatures.h \
  /sources/linux-next/arch/x86/include/asm/vdso/processor.h \
  /sources/linux-next/arch/x86/include/asm/shstk.h \
  /sources/linux-next/include/linux/personality.h \
  /sources/linux-next/include/uapi/linux/personality.h \
  /sources/linux-next/include/linux/err.h \
  /sources/linux-next/arch/x86/include/asm/tsc.h \
  /sources/linux-next/arch/x86/include/asm/cpufeature.h \
  /sources/linux-next/arch/x86/include/asm/msr.h \
  /sources/linux-next/arch/x86/include/asm/cpumask.h \
  /sources/linux-next/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /sources/linux-next/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/MMU) \
  /sources/linux-next/include/linux/stdarg.h \
  /sources/linux-next/include/linux/align.h \
  /sources/linux-next/include/linux/array_size.h \
  /sources/linux-next/include/linux/limits.h \
  /sources/linux-next/include/uapi/linux/limits.h \
  /sources/linux-next/include/vdso/limits.h \
  /sources/linux-next/include/linux/hex.h \
  /sources/linux-next/include/linux/kstrtox.h \
  /sources/linux-next/include/linux/minmax.h \
  /sources/linux-next/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /sources/linux-next/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
  /sources/linux-next/include/linux/kern_levels.h \
  /sources/linux-next/include/linux/ratelimit_types.h \
  /sources/linux-next/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /sources/linux-next/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /sources/linux-next/include/linux/once_lite.h \
  /sources/linux-next/include/linux/sprintf.h \
  /sources/linux-next/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /sources/linux-next/include/linux/instruction_pointer.h \
  /sources/linux-next/include/linux/wordpart.h \
  /sources/linux-next/include/linux/bitmap.h \
  /sources/linux-next/include/linux/find.h \
  /sources/linux-next/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /sources/linux-next/include/linux/overflow.h \
  /sources/linux-next/include/uapi/linux/string.h \
  /sources/linux-next/include/linux/bitmap-str.h \
  /sources/linux-next/include/linux/cpumask_types.h \
  /sources/linux-next/include/linux/atomic.h \
  /sources/linux-next/arch/x86/include/asm/atomic.h \
  /sources/linux-next/arch/x86/include/asm/cmpxchg.h \
  /sources/linux-next/arch/x86/include/asm/cmpxchg_64.h \
  /sources/linux-next/arch/x86/include/asm/atomic64_64.h \
  /sources/linux-next/include/linux/atomic/atomic-arch-fallback.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /sources/linux-next/include/linux/atomic/atomic-long.h \
  /sources/linux-next/include/linux/atomic/atomic-instrumented.h \
  /sources/linux-next/include/linux/bug.h \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /sources/linux-next/arch/x86/include/asm/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /sources/linux-next/include/linux/instrumentation.h \
  /sources/linux-next/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /sources/linux-next/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
  /sources/linux-next/include/linux/numa.h \
    $(wildcard include/config/NODES_SHIFT) \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /sources/linux-next/arch/x86/include/uapi/asm/msr.h \
  /sources/linux-next/include/uapi/linux/ioctl.h \
  /sources/linux-next/arch/x86/include/generated/uapi/asm/ioctl.h \
  /sources/linux-next/include/asm-generic/ioctl.h \
  /sources/linux-next/include/uapi/asm-generic/ioctl.h \
  /sources/linux-next/arch/x86/include/asm/shared/msr.h \
  /sources/linux-next/include/linux/percpu.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/RANDOM_KMALLOC_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /sources/linux-next/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /sources/linux-next/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /sources/linux-next/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /sources/linux-next/arch/x86/include/asm/preempt.h \
  /sources/linux-next/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /sources/linux-next/include/linux/smp_types.h \
  /sources/linux-next/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /sources/linux-next/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/HARDENED_USERCOPY) \
    $(wildcard include/config/SH) \
  /sources/linux-next/include/linux/restart_block.h \
  /sources/linux-next/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/COMPAT) \
  /sources/linux-next/arch/x86/include/asm/smp.h \
    $(wildcard include/config/DEBUG_NMI_SELFTEST) \
  /sources/linux-next/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /sources/linux-next/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DEBUG_MUTEXES) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/DEBUG_RSEQ) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/USER_EVENTS) \
  /sources/linux-next/include/uapi/linux/sched.h \
  /sources/linux-next/include/linux/pid_types.h \
  /sources/linux-next/include/linux/sem_types.h \
  /sources/linux-next/include/linux/shm.h \
  /sources/linux-next/arch/x86/include/asm/shmparam.h \
  /sources/linux-next/include/linux/kmsan_types.h \
  /sources/linux-next/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /sources/linux-next/include/linux/osq_lock.h \
  /sources/linux-next/include/linux/spinlock_types.h \
  /sources/linux-next/include/linux/rwlock_types.h \
  /sources/linux-next/include/linux/plist_types.h \
  /sources/linux-next/include/linux/hrtimer_types.h \
  /sources/linux-next/include/linux/timerqueue_types.h \
  /sources/linux-next/include/linux/rbtree_types.h \
  /sources/linux-next/include/linux/timer_types.h \
  /sources/linux-next/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /sources/linux-next/include/linux/nodemask_types.h \
  /sources/linux-next/include/linux/refcount_types.h \
  /sources/linux-next/include/linux/resource.h \
  /sources/linux-next/include/uapi/linux/resource.h \
  /sources/linux-next/arch/x86/include/generated/uapi/asm/resource.h \
  /sources/linux-next/include/asm-generic/resource.h \
  /sources/linux-next/include/uapi/asm-generic/resource.h \
  /sources/linux-next/include/linux/latencytop.h \
  /sources/linux-next/include/linux/sched/prio.h \
  /sources/linux-next/include/linux/sched/types.h \
  /sources/linux-next/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /sources/linux-next/include/uapi/linux/signal.h \
  /sources/linux-next/arch/x86/include/asm/signal.h \
  /sources/linux-next/arch/x86/include/uapi/asm/signal.h \
  /sources/linux-next/include/uapi/asm-generic/signal-defs.h \
  /sources/linux-next/arch/x86/include/uapi/asm/siginfo.h \
  /sources/linux-next/include/uapi/asm-generic/siginfo.h \
  /sources/linux-next/include/linux/syscall_user_dispatch_types.h \
  /sources/linux-next/include/linux/mm_types_task.h \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
  /sources/linux-next/arch/x86/include/asm/tlbbatch.h \
  /sources/linux-next/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_EGRESS) \
  /sources/linux-next/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /sources/linux-next/include/linux/posix-timers_types.h \
  /sources/linux-next/include/uapi/linux/rseq.h \
  /sources/linux-next/include/linux/seqlock_types.h \
  /sources/linux-next/include/linux/kcsan.h \
  /sources/linux-next/include/linux/rv.h \
    $(wildcard include/config/RV_REACTORS) \
  /sources/linux-next/include/linux/livepatch_sched.h \
  /sources/linux-next/include/linux/uidgid_types.h \
  /sources/linux-next/arch/x86/include/generated/asm/kmap_size.h \
  /sources/linux-next/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /sources/linux-next/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /sources/linux-next/include/linux/spinlock.h \
  /sources/linux-next/include/linux/bottom_half.h \
  /sources/linux-next/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /sources/linux-next/arch/x86/include/generated/asm/mmiowb.h \
  /sources/linux-next/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /sources/linux-next/arch/x86/include/asm/spinlock.h \
  /sources/linux-next/arch/x86/include/asm/paravirt.h \
    $(wildcard include/config/PARAVIRT_SPINLOCKS) \
  /sources/linux-next/arch/x86/include/asm/frame.h \
  /sources/linux-next/arch/x86/include/asm/qspinlock.h \
  /sources/linux-next/include/asm-generic/qspinlock.h \
  /sources/linux-next/arch/x86/include/asm/qrwlock.h \
  /sources/linux-next/include/asm-generic/qrwlock.h \
  /sources/linux-next/include/linux/rwlock.h \
  /sources/linux-next/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /sources/linux-next/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /sources/linux-next/include/linux/tracepoint-defs.h \
  /sources/linux-next/include/vdso/time32.h \
  /sources/linux-next/include/vdso/time.h \
  /sources/linux-next/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /sources/linux-next/include/linux/highuid.h \
  /sources/linux-next/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /sources/linux-next/include/linux/kmod.h \
  /sources/linux-next/include/linux/umh.h \
  /sources/linux-next/include/linux/gfp.h \
    $(wildcard include/config/HIGHMEM) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /sources/linux-next/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /sources/linux-next/include/linux/list_nulls.h \
  /sources/linux-next/include/linux/wait.h \
  /sources/linux-next/include/linux/seqlock.h \
  /sources/linux-next/include/linux/mutex.h \
  /sources/linux-next/include/linux/debug_locks.h \
  /sources/linux-next/include/linux/nodemask.h \
  /sources/linux-next/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /sources/linux-next/include/uapi/linux/random.h \
  /sources/linux-next/include/linux/irqnr.h \
  /sources/linux-next/include/uapi/linux/irqnr.h \
  /sources/linux-next/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /sources/linux-next/include/linux/page-flags-layout.h \
  /sources/linux-next/include/generated/bounds.h \
  /sources/linux-next/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /sources/linux-next/include/linux/auxvec.h \
  /sources/linux-next/include/uapi/linux/auxvec.h \
  /sources/linux-next/arch/x86/include/uapi/asm/auxvec.h \
  /sources/linux-next/include/linux/kref.h \
  /sources/linux-next/include/linux/refcount.h \
  /sources/linux-next/include/linux/rbtree.h \
  /sources/linux-next/include/linux/rcupdate.h \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/KVM_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /sources/linux-next/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /sources/linux-next/include/linux/rcutree.h \
  /sources/linux-next/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /sources/linux-next/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /sources/linux-next/include/linux/completion.h \
  /sources/linux-next/include/linux/swait.h \
  /sources/linux-next/include/linux/uprobes.h \
  /sources/linux-next/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
  /sources/linux-next/include/linux/ktime.h \
  /sources/linux-next/include/linux/jiffies.h \
  /sources/linux-next/include/vdso/jiffies.h \
  /sources/linux-next/include/generated/timeconst.h \
  /sources/linux-next/include/vdso/ktime.h \
  /sources/linux-next/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /sources/linux-next/include/linux/clocksource_ids.h \
  /sources/linux-next/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /sources/linux-next/arch/x86/include/asm/uprobes.h \
  /sources/linux-next/include/linux/notifier.h \
  /sources/linux-next/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /sources/linux-next/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /sources/linux-next/include/linux/workqueue_types.h \
  /sources/linux-next/include/linux/rcu_segcblist.h \
  /sources/linux-next/include/linux/srcutree.h \
  /sources/linux-next/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /sources/linux-next/include/linux/percpu_counter.h \
  /sources/linux-next/arch/x86/include/asm/mmu.h \
    $(wildcard include/config/MODIFY_LDT_SYSCALL) \
  /sources/linux-next/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
  /sources/linux-next/include/linux/local_lock.h \
  /sources/linux-next/include/linux/local_lock_internal.h \
  /sources/linux-next/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /sources/linux-next/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /sources/linux-next/arch/x86/include/generated/asm/mmzone.h \
  /sources/linux-next/include/asm-generic/mmzone.h \
  /sources/linux-next/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
  /sources/linux-next/include/linux/arch_topology.h \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /sources/linux-next/arch/x86/include/asm/topology.h \
    $(wildcard include/config/X86_LOCAL_APIC) \
    $(wildcard include/config/SCHED_MC_PRIO) \
  /sources/linux-next/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/EISA) \
    $(wildcard include/config/X86_MPPARSE) \
  /sources/linux-next/arch/x86/include/asm/mpspec_def.h \
  /sources/linux-next/arch/x86/include/asm/x86_init.h \
  /sources/linux-next/arch/x86/include/asm/apicdef.h \
  /sources/linux-next/include/asm-generic/topology.h \
  /sources/linux-next/include/linux/cpu_smt.h \
    $(wildcard include/config/HOTPLUG_SMT) \
  /sources/linux-next/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /sources/linux-next/include/uapi/linux/sysctl.h \
  /sources/linux-next/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /sources/linux-next/arch/x86/include/asm/elf.h \
    $(wildcard include/config/X86_X32_ABI) \
  /sources/linux-next/arch/x86/include/asm/ia32.h \
  /sources/linux-next/include/linux/compat.h \
    $(wildcard include/config/ARCH_HAS_SYSCALL_WRAPPER) \
    $(wildcard include/config/COMPAT_OLD_SIGACTION) \
    $(wildcard include/config/ODD_RT_SIGACTION) \
  /sources/linux-next/include/linux/sem.h \
  /sources/linux-next/include/uapi/linux/sem.h \
  /sources/linux-next/include/linux/ipc.h \
  /sources/linux-next/include/linux/rhashtable-types.h \
  /sources/linux-next/include/uapi/linux/ipc.h \
  /sources/linux-next/arch/x86/include/generated/uapi/asm/ipcbuf.h \
  /sources/linux-next/include/uapi/asm-generic/ipcbuf.h \
  /sources/linux-next/arch/x86/include/uapi/asm/sembuf.h \
  /sources/linux-next/include/linux/socket.h \
  /sources/linux-next/arch/x86/include/generated/uapi/asm/socket.h \
  /sources/linux-next/include/uapi/asm-generic/socket.h \
  /sources/linux-next/arch/x86/include/generated/uapi/asm/sockios.h \
  /sources/linux-next/include/uapi/asm-generic/sockios.h \
  /sources/linux-next/include/uapi/linux/sockios.h \
  /sources/linux-next/include/linux/uio.h \
    $(wildcard include/config/ARCH_HAS_COPY_MC) \
  /sources/linux-next/include/uapi/linux/uio.h \
  /sources/linux-next/include/uapi/linux/socket.h \
  /sources/linux-next/include/uapi/linux/if.h \
  /sources/linux-next/include/uapi/linux/libc-compat.h \
  /sources/linux-next/include/uapi/linux/hdlc/ioctl.h \
  /sources/linux-next/include/linux/fs.h \
    $(wildcard include/config/FANOTIFY_ACCESS_PERMISSIONS) \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/UNICODE) \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/BLOCK) \
  /sources/linux-next/include/linux/wait_bit.h \
  /sources/linux-next/include/linux/kdev_t.h \
  /sources/linux-next/include/uapi/linux/kdev_t.h \
  /sources/linux-next/include/linux/dcache.h \
  /sources/linux-next/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /sources/linux-next/include/linux/rculist_bl.h \
  /sources/linux-next/include/linux/list_bl.h \
  /sources/linux-next/include/linux/bit_spinlock.h \
  /sources/linux-next/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /sources/linux-next/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /sources/linux-next/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /sources/linux-next/include/linux/path.h \
  /sources/linux-next/include/linux/list_lru.h \
  /sources/linux-next/include/linux/shrinker.h \
    $(wildcard include/config/SHRINKER_DEBUG) \
  /sources/linux-next/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /sources/linux-next/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
  /sources/linux-next/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /sources/linux-next/arch/x86/include/asm/sync_core.h \
  /sources/linux-next/include/linux/sched/coredump.h \
  /sources/linux-next/include/linux/radix-tree.h \
  /sources/linux-next/include/linux/pid.h \
  /sources/linux-next/include/linux/capability.h \
  /sources/linux-next/include/uapi/linux/capability.h \
  /sources/linux-next/include/linux/semaphore.h \
  /sources/linux-next/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /sources/linux-next/include/uapi/linux/fcntl.h \
  /sources/linux-next/arch/x86/include/generated/uapi/asm/fcntl.h \
  /sources/linux-next/include/uapi/asm-generic/fcntl.h \
  /sources/linux-next/include/uapi/linux/openat2.h \
  /sources/linux-next/include/linux/migrate_mode.h \
  /sources/linux-next/include/linux/percpu-rwsem.h \
  /sources/linux-next/include/linux/rcuwait.h \
  /sources/linux-next/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
    $(wildcard include/config/STACK_GROWSUP) \
  /sources/linux-next/include/linux/signal.h \
    $(wildcard include/config/DYNAMIC_SIGFRAME) \
  /sources/linux-next/include/linux/sched/jobctl.h \
  /sources/linux-next/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /sources/linux-next/include/linux/uaccess.h \
    $(wildcard include/config/ARCH_HAS_SUBPAGE_FAULTS) \
  /sources/linux-next/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /sources/linux-next/include/linux/nospec.h \
  /sources/linux-next/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/CC_HAS_ASM_GOTO_OUTPUT) \
    $(wildcard include/config/CC_HAS_ASM_GOTO_TIED_OUTPUT) \
    $(wildcard include/config/X86_INTEL_USERCOPY) \
  /sources/linux-next/include/linux/mmap_lock.h \
  /sources/linux-next/arch/x86/include/asm/smap.h \
  /sources/linux-next/arch/x86/include/asm/extable.h \
    $(wildcard include/config/BPF_JIT) \
  /sources/linux-next/arch/x86/include/asm/tlbflush.h \
  /sources/linux-next/include/linux/mmu_notifier.h \
  /sources/linux-next/include/linux/interval_tree.h \
  /sources/linux-next/arch/x86/include/asm/invpcid.h \
  /sources/linux-next/arch/x86/include/asm/pti.h \
  /sources/linux-next/arch/x86/include/asm/pgtable.h \
    $(wildcard include/config/DEBUG_WX) \
    $(wildcard include/config/HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) \
    $(wildcard include/config/ARCH_HAS_PTE_DEVMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PMD_PFNMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PUD_PFNMAP) \
    $(wildcard include/config/HAVE_ARCH_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
    $(wildcard include/config/PAGE_TABLE_CHECK) \
  /sources/linux-next/arch/x86/include/asm/pkru.h \
  /sources/linux-next/arch/x86/include/asm/fpu/api.h \
    $(wildcard include/config/X86_DEBUG_FPU) \
  /sources/linux-next/arch/x86/include/asm/coco.h \
  /sources/linux-next/include/asm-generic/pgtable_uffd.h \
  /sources/linux-next/include/linux/page_table_check.h \
  /sources/linux-next/arch/x86/include/asm/pgtable_64.h \
  /sources/linux-next/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/PROVIDE_OHCI1394_DMA_INIT) \
    $(wildcard include/config/X86_IO_APIC) \
    $(wildcard include/config/PCI_MMCONFIG) \
    $(wildcard include/config/ACPI_APEI_GHES) \
    $(wildcard include/config/INTEL_TXT) \
  /sources/linux-next/arch/x86/include/uapi/asm/vsyscall.h \
  /sources/linux-next/include/asm-generic/fixmap.h \
  /sources/linux-next/arch/x86/include/asm/pgtable-invert.h \
  /sources/linux-next/arch/x86/include/asm/uaccess_64.h \
  /sources/linux-next/arch/x86/include/asm/runtime-const.h \
  /sources/linux-next/include/asm-generic/access_ok.h \
    $(wildcard include/config/ALTERNATE_USER_ADDRESS_SPACE) \
  /sources/linux-next/include/linux/cred.h \
  /sources/linux-next/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /sources/linux-next/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /sources/linux-next/include/linux/sched/user.h \
    $(wildcard include/config/VFIO_PCI_ZDEV_KVM) \
    $(wildcard include/config/IOMMUFD) \
    $(wildcard include/config/WATCH_QUEUE) \
  /sources/linux-next/include/linux/ratelimit.h \
  /sources/linux-next/include/linux/posix-timers.h \
  /sources/linux-next/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /sources/linux-next/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /sources/linux-next/include/linux/hrtimer_defs.h \
  /sources/linux-next/include/linux/timerqueue.h \
  /sources/linux-next/include/linux/rcuref.h \
  /sources/linux-next/include/linux/rcu_sync.h \
  /sources/linux-next/include/linux/delayed_call.h \
  /sources/linux-next/include/linux/uuid.h \
  /sources/linux-next/include/linux/errseq.h \
  /sources/linux-next/include/linux/ioprio.h \
  /sources/linux-next/include/linux/sched/rt.h \
  /sources/linux-next/include/linux/iocontext.h \
    $(wildcard include/config/BLK_ICQ) \
  /sources/linux-next/include/uapi/linux/ioprio.h \
  /sources/linux-next/include/linux/fs_types.h \
  /sources/linux-next/include/linux/mount.h \
  /sources/linux-next/include/linux/mnt_idmapping.h \
  /sources/linux-next/include/linux/slab.h \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLUB_TINY) \
    $(wildcard include/config/SLUB_DEBUG) \
    $(wildcard include/config/SLAB_BUCKETS) \
  /sources/linux-next/include/linux/percpu-refcount.h \
  /sources/linux-next/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  /sources/linux-next/include/linux/kasan-enabled.h \
  /sources/linux-next/include/linux/kasan-tags.h \
  /sources/linux-next/include/linux/rw_hint.h \
  /sources/linux-next/include/linux/file_ref.h \
  /sources/linux-next/include/linux/unicode.h \
  /sources/linux-next/include/uapi/linux/fs.h \
  /sources/linux-next/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /sources/linux-next/include/uapi/linux/dqblk_xfs.h \
  /sources/linux-next/include/linux/dqblk_v1.h \
  /sources/linux-next/include/linux/dqblk_v2.h \
  /sources/linux-next/include/linux/dqblk_qtree.h \
  /sources/linux-next/include/linux/projid.h \
  /sources/linux-next/include/uapi/linux/quota.h \
  /sources/linux-next/include/uapi/linux/aio_abi.h \
  /sources/linux-next/include/uapi/linux/unistd.h \
  /sources/linux-next/arch/x86/include/asm/unistd.h \
  /sources/linux-next/arch/x86/include/uapi/asm/unistd.h \
  /sources/linux-next/arch/x86/include/generated/uapi/asm/unistd_64.h \
  /sources/linux-next/arch/x86/include/generated/asm/unistd_64_x32.h \
  /sources/linux-next/arch/x86/include/generated/asm/unistd_32_ia32.h \
  /sources/linux-next/arch/x86/include/asm/compat.h \
  /sources/linux-next/include/linux/sched/task_stack.h \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /sources/linux-next/include/uapi/linux/magic.h \
  /sources/linux-next/arch/x86/include/asm/user32.h \
  /sources/linux-next/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /sources/linux-next/arch/x86/include/asm/syscall_wrapper.h \
  /sources/linux-next/arch/x86/include/asm/user.h \
  /sources/linux-next/arch/x86/include/asm/user_64.h \
  /sources/linux-next/arch/x86/include/asm/fsgsbase.h \
  /sources/linux-next/arch/x86/include/asm/vdso.h \
  /sources/linux-next/include/uapi/linux/elf.h \
  /sources/linux-next/include/uapi/linux/elf-em.h \
  /sources/linux-next/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /sources/linux-next/include/linux/sysfs.h \
  /sources/linux-next/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /sources/linux-next/include/linux/idr.h \
  /sources/linux-next/include/linux/kobject_ns.h \
  /sources/linux-next/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /sources/linux-next/include/linux/rbtree_latch.h \
  /sources/linux-next/include/linux/error-injection.h \
  /sources/linux-next/include/asm-generic/error-injection.h \
  /sources/linux-next/include/linux/dynamic_debug.h \
  /sources/linux-next/arch/x86/include/asm/module.h \
  /sources/linux-next/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
    $(wildcard include/config/MODULES_USE_ELF_REL) \
    $(wildcard include/config/MODULES_USE_ELF_RELA) \
  /sources/linux-next/include/linux/build-salt.h \
    $(wildcard include/config/BUILD_SALT) \
  /sources/linux-next/include/linux/elfnote.h \
  /sources/linux-next/include/linux/elfnote-lto.h \
    $(wildcard include/config/LTO) \
  /sources/linux-next/include/linux/vermagic.h \
    $(wildcard include/config/PREEMPT_BUILD) \
  /sources/linux-next/include/generated/utsrelease.h \
  /sources/linux-next/arch/x86/include/asm/vermagic.h \
    $(wildcard include/config/M486SX) \
    $(wildcard include/config/M486) \
    $(wildcard include/config/M586) \
    $(wildcard include/config/M586TSC) \
    $(wildcard include/config/M586MMX) \
    $(wildcard include/config/MCORE2) \
    $(wildcard include/config/M686) \
    $(wildcard include/config/MPENTIUMII) \
    $(wildcard include/config/MPENTIUMIII) \
    $(wildcard include/config/MPENTIUMM) \
    $(wildcard include/config/MPENTIUM4) \
    $(wildcard include/config/MK6) \
    $(wildcard include/config/MK7) \
    $(wildcard include/config/MK8) \
    $(wildcard include/config/MELAN) \
    $(wildcard include/config/MCRUSOE) \
    $(wildcard include/config/MEFFICEON) \
    $(wildcard include/config/MWINCHIPC6) \
    $(wildcard include/config/MWINCHIP3D) \
    $(wildcard include/config/MCYRIXIII) \
    $(wildcard include/config/MVIAC3_2) \
    $(wildcard include/config/MVIAC7) \
    $(wildcard include/config/MGEODEGX1) \
    $(wildcard include/config/MGEODE_LX) \
  /sources/linux-next/arch/x86/include/asm/orc_header.h \
  /sources/linux-next/arch/x86/include/generated/asm/orc_hash.h \

.module-common.o: $(deps_.module-common.o)

$(deps_.module-common.o):

.module-common.o: $(wildcard /sources/linux-next/tools/objtool/objtool)
