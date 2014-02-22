desc "Install the dot files into user's home directory"
task :install do
  install_oh_my_zsh
  switch_to_zsh
  pull_submodules
  copy_files
end

desc 'Update all the _updatable_ things =)'
task :update do
  git_repos.each { |repo| update_git_repo repo }
  pull_submodules
  update_submodules
  copy_files
end

private

  def pull_submodules
    puts `git submodule update --init`
  end

  def update_submodules
    puts `git submodule foreach "git pull origin master"`
  end

  def git_repos
    [
      '.dotfiles',
      '.oh-my-zsh',
      '.rbenv',
      '.rbenv/plugins/rbenv-gem-rehash',
      '.rbenv/plugins/ruby-build'
    ]
  end

  def update_git_repo repo
    puts "Updating #{repo}..."
    puts `cd $HOME/#{repo}; git pull; cd $OLDPWD` if dir_in_home? repo, '.git'
  end

  def files
    files = Dir['.*'] - %w[. .. .git .gitignore .gitmodules .oh-my-zsh]
    files << '.oh-my-zsh/custom/plugins/fcatena'
  end

  def copy_files
    replace_all = false

    files.each do |file|
      puts `mkdir -p "$HOME/#{File.dirname file}"` if file =~ /\//

      if exists_in_home? file
        if File.identical? file, path_in_home(file)
          puts "identical ~/#{file}"
        elsif replace_all
          replace_file file
        else
          print "overwrite ~/#{file}? [yNaq] "
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
    $stdin.gets.chomp.downcase
  end

  def path_in_home *args
    File.join ENV['HOME'], *args
  end

  def exists_in_home? *args
    File.exists? path_in_home(*args)
  end

  def dir_in_home? *args
    File.directory? path_in_home(*args)
  end

  def replace_file file
    puts `rm -rf "$HOME/#{file}"`

    link_file file
  end

  def link_file file
    puts "linking ~/#{file}"
    puts `ln -s "$PWD/#{file}" "$HOME/#{file}"`
  end

  def switch_to_zsh
    if ENV['SHELL'] =~ /zsh/
      puts 'using zsh'
    else
      print 'switch to zsh? (recommended) [yNq] '
      case ask_user_input
      when 'y'
        puts 'switching to zsh'
        puts `chsh -s $(which zsh)`
      when 'q'
        exit
      else
        puts 'skipping zsh'
      end
    end
  end

  def install_oh_my_zsh
    if exists_in_home? '.oh-my-zsh'
      puts 'found ~/.oh-my-zsh'
    else
      print 'install oh-my-zsh? [yNq] '
      case ask_user_input
      when 'y'
        puts 'installing oh-my-zsh'

        puts `git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"`
      when 'q'
        exit
      else
        puts 'skipping oh-my-zsh, you will need to change ~/.zshrc'
      end
    end
  end
