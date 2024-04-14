# vim: syntax=ruby
ruby 3.3.0
(
    2023-12-25
    revision 5124f9ac75
)
[x86_64-darwin23]

# For Ruby gems see
# https://rubygems.org/

Usage: ruby [switches] [--] [programfile] [arguments]
  -0[octal]       specify record separator (\0, if no argument)
                  (-00 for paragraph mode, -0777 for slurp mode)
  -a              autosplit mode with -n or -p (splits $_ into $F)
# , Useful as a pre-commit hook
  -c              check syntax only
  -Cdirectory     cd to directory before executing your script
  -d, --debug     set debugging flags (set $DEBUG to true)
  -e 'command'    one line of script. Several -e's allowed. Omit [programfile]
  -Eex[:in], --encoding=ex[:in]'
                  specify the default external and internal character encodings
  -Fpattern       split() pattern for autosplit (-a)
  -i[extension]   edit ARGV files in place (make backup if extension supplied)
  -Idirectory     specify $LOAD_PATH directory (may be used more than once)
  -l              enable line ending processing
  -n              assume 'while gets(); ... end' loop around your script
  -p              assume loop like -n but print line also like sed
  -rlibrary       require the library before executing your script
  -s              enable some switch parsing for switches after script name
  -S              look for the script using PATH environment variable
  -v              print the version number, then turn on verbose mode
  -w              turn warnings on for your script
  -W[level=2|:category]
                  set warning level; 0=silence, 1=medium, 2=verbose
  -x[directory]   strip off text before #!ruby line and perhaps cd to directory
  --jit           enable JIT for the platform, same as --yjit
  --yjit          enable in-process JIT compiler
  --rjit          enable pure-Ruby JIT compiler (experimental)
  --copyright     print the copyright
  --dump={insns|parsetree|prism_parsetree|...}[,...]
                  dump debug information. see below for available dump list
  --enable={jit|rubyopt|...}[,...]
  --disable={jit|rubyopt|...}[,...]
                  enable or disable features. see below for available features
  --external-encoding=encoding
  --internal-encoding=encoding
                  specify the default external or internal character encoding
  --parser={parse.y|prism}
  --parser=prism
                  the parser used to parse Ruby code (experimental)
  --backtrace-limit=num
                  limit the maximum length of backtrace
  --verbose       turn on verbose mode and disable script from stdin
  --version       print the version number, then exit
  --crash-report=TEMPLATE
                  template of crash report files
  -y, --yydebug   print log of parser. Backward compatibility is not guaranteed
  --help          show this message, -h for short message
Dump List:
  insns           instruction sequences
  insns_without_opt
                  instruction sequences compiled with no optimization
  yydebug(+error-tolerant)
                  yydebug of yacc parser generator
  parsetree(+error-tolerant)
                  AST
  parsetree_with_comment(+error-tolerant)
                  AST with comments
  prism_parsetree Prism AST with comments
Features:
  gems            rubygems (only for debugging, default: enabled)
  error_highlight error_highlight (default: enabled)
  did_you_mean    did_you_mean (default: enabled)
  syntax_suggest  syntax_suggest (default: enabled)
  rubyopt         RUBYOPT environment variable (default: enabled)
  frozen-string-literal
                  freeze all string literals (default: disabled)
  yjit            in-process JIT compiler (default: disabled)
  rjit            pure-Ruby JIT compiler (experimental, default: disabled)
Warning categories:
  deprecated      deprecated features
  experimental    experimental features
  performance     performance issues
YJIT options:
  --yjit-exec-mem-size=num
                  Size of executable memory block in MiB (default: 64)
  --yjit-call-threshold=num
                  Number of calls to trigger JIT
  --yjit-cold-threshold=num
                  Global calls after which ISEQs not compiled (default: 200K)
  --yjit-stats    Enable collecting YJIT statistics
  --yjit-disable  Disable YJIT for lazily enabling it with RubyVM::YJIT.enable
  --yjit-code-gc  Run code GC when the code size reaches the limit
  --yjit-perf     Enable frame pointers and perf profiling
  --yjit-trace-exits
                  Record Ruby source location when exiting from generated code
  --yjit-trace-exits-sample-rate=num
                  Trace exit locations only every Nth occurrence
RJIT options (experimental):
  --rjit-exec-mem-size=num
                  Size of executable memory block in MiB (default: 64)
  --rjit-call-threshold=num
                  Number of calls to trigger JIT (default: 10)
  --rjit-stats    Enable collecting RJIT statistics
  --rjit-disable  Disable RJIT for lazily enabling it with RubyVM::RJIT.enable
  --rjit-trace    Allow TracePoint during JIT compilation
  --rjit-trace-exits
                  Trace side exit locations
