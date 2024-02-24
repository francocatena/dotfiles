IRB.conf[:AUTO_INDENT]      = true
IRB.conf[:USE_MULTILINE]    = true
IRB.conf[:HISTORY_FILE]     = "#{ENV['HOME']}/.irb_history"
IRB.conf[:LOAD_MODULES]    |= %w(irb/completion)
IRB.conf[:PROMPT_MODE]      = :SIMPLE
IRB.conf[:SAVE_HISTORY]     = 10000
IRB.conf[:USE_AUTOCOMPLETE] = false
