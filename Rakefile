require 'rake'
require 'erb'
require 'fileutils'

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
    puts %x{cd $HOME/#{repo}; git pull; cd -} if File.directory?(File.join(ENV['HOME'], repo, '.git'))
  end

  copy_files
end

private

def copy_files
  replace_all = false
  
  files = Dir['.*'] - %w[. .. .git .gitignore .gitmodules .oh-my-zsh]

  files << '.oh-my-zsh/custom/plugins/fcatena'

  files.each do |file|
    puts %x{mkdir -p "$HOME/#{File.dirname(file)}"} if file =~ /\//

    if File.exist?(File.join(ENV['HOME'], file.sub(/\.erb$/, '')))
      if identical? file, File.join(ENV['HOME'], file.sub(/\.erb$/, ''))
        puts "identical ~/#{file.sub(/\.erb$/, '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/#{file.sub(/\.erb$/, '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true

          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/#{file.sub(/\.erb$/, '')}"
        end
      end
    else
      link_file(file)
    end
  end
end

def identical?(file, another_file)
  File.identical?(file, another_file) || FileUtils.identical?(file, another_file)
end

def replace_file(file)
  puts %x{rm -rf "$HOME/#{file.sub(/\.erb$/, '')}"}

  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/#{file.sub(/\.erb$/, '')}"
    File.open(File.join(ENV['HOME'], file.sub(/\.erb$/, ''), 'w')) do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  elsif file =~ /\.zshrc$/ # copy zshrc instead of link
    puts "copying ~/#{file}"
    puts %x{cp "$PWD/#{file}" "$HOME/#{file}"}
  else
    puts "linking ~/#{file}"
    puts %x{ln -s "$PWD/#{file}" "$HOME/#{file}"}
  end
end

def switch_to_zsh
  if ENV['SHELL'] =~ /zsh/
    puts 'using zsh'
  else
    print 'switch to zsh? (recommended) [ynq] '
    case $stdin.gets.chomp
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
  if File.exist?(File.join(ENV['HOME'], '.oh-my-zsh'))
    puts 'found ~/.oh-my-zsh'
  else
    print 'install oh-my-zsh? [ynq] '
    case $stdin.gets.chomp
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
