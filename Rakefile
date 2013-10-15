require 'rake'

desc "install the dot files into user's home directory"
task :install do
  install_oh_my_zsh
  switch_to_zsh
  
  puts %x{git submodule foreach git checkout master}

  copy_files
end

desc 'Update all the _updatable_ things =)'
task :update do
  puts %x{git pull}
  puts %x{git submodule update}
  puts %x{git submodule foreach "git pull origin master"}

  git_repos = ['.rbenv', '.rbenv/plugins/ruby-build', '.oh-my-zsh']

  git_repos.each do |repo|
    puts %x{cd $HOME/#{repo}; git pull; cd -} if File.directory?(file_in_home(repo, '.git'))
  end

  copy_files
end

private

def copy_files
  replace_all = false
  
  files = Dir['.*'] - %w[. .. .git .gitignore .gitmodules .oh-my-zsh]

  files << '.oh-my-zsh/custom/plugins/fcatena'

  files.each do |file|
    puts %x{mkdir -p "$HOME/#{File.dirname file}"} if file =~ /\//

    if File.exist? file_in_home(file)
      if File.identical? file, file_in_home(file)
        puts "identical ~/#{file}"
      elsif replace_all
        replace_file file
      else
        print "overwrite ~/#{file}? [ynaq] "
        case ask_user_input
        when 'a'
          replace_all = true

          replace_file file
        when 'y'
          replace_file file
        when 'q'
          exit
        else
          puts "skipping ~/#{file}"
        end
      end
    else
      link_file file
    end
  end
end

def ask_user_input
  $stdin.gets.chomp
end

def file_in_home *args
  File.join ENV['HOME'], *args
end

def replace_file file
  puts %x{rm -rf "$HOME/#{file}"}

  link_file file
end

def link_file file
  puts "linking ~/#{file}"
  puts %x{ln -s "$PWD/#{file}" "$HOME/#{file}"}
end

def switch_to_zsh
  if ENV['SHELL'] =~ /zsh/
    puts 'using zsh'
  else
    print 'switch to zsh? (recommended) [ynq] '
    case ask_user_input
    when 'y'
      puts 'switching to zsh'
      puts %x{chsh -s `which zsh`}
    when 'q'
      exit
    else
      puts 'skipping zsh'
    end
  end
end

def install_oh_my_zsh
  if File.exist? file_in_home('.oh-my-zsh')
    puts 'found ~/.oh-my-zsh'
  else
    print 'install oh-my-zsh? [ynq] '
    case ask_user_input
    when 'y'
      puts 'installing oh-my-zsh'

      puts %x{git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"}
    when 'q'
      exit
    else
      puts 'skipping oh-my-zsh, you will need to change ~/.zshrc'
    end
  end
end
