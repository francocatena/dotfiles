require 'irb/ext/save-history'

IRB.conf[:AUTO_INDENT]   = true
IRB.conf[:USE_MULTILINE] = true
IRB.conf[:HISTORY_FILE]  = "#{ENV['HOME']}/.irb-history"
IRB.conf[:LOAD_MODULES] |= %w(irb/completion)
IRB.conf[:PROMPT_MODE]   = :SIMPLE
IRB.conf[:SAVE_HISTORY]  = 10000
