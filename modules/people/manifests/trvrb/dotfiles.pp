class people::trvrb::dotfiles {

  $home = "/Users/${::luser}"
  $dotfiles = "${home}/dotfiles"

  repository { $dotfiles:
    source => "${::github_user}/dotfiles"
  }
  
  file { "${home}/.aliases":
    ensure  => link,
    target  => "${dotfiles}/.aliases",
    require => Repository[$dotfiles]
  }
  
  file { "${home}/.bash_profile":
    ensure  => link,
    target  => "${dotfiles}/.bash_profile",
    require => Repository[$dotfiles]
  }
  
  file { "${home}/.bashrc":
    ensure  => link,
    target  => "${dotfiles}/.bashrc",
    require => Repository[$dotfiles]
  }
  
  file { "${home}/.exports":
    ensure  => link,
    target  => "${dotfiles}/.exports",
    require => Repository[$dotfiles]
  }
  
  file { "${home}/.functions":
    ensure  => link,
    target  => "${dotfiles}/.functions",
    require => Repository[$dotfiles]
  }  
  
  file { "${home}/.gitattributes":
    ensure  => link,
    target  => "${dotfiles}/.gitattributes",
    require => Repository[$dotfiles]
  }  
  
  file { "${home}/.gitconfig":
    ensure  => link,
    target  => "${dotfiles}/.gitconfig",
    require => Repository[$dotfiles]
  }  
  
  file { "${home}/.gitignore":
    ensure  => link,
    target  => "${dotfiles}/.gitignore",
    require => Repository[$dotfiles]
  }    
  
  file { "${home}/.inputrc":
    ensure  => link,
    target  => "${dotfiles}/.inputrc",
    require => Repository[$dotfiles]
  }    
  
  file { "${home}/.path":
    ensure  => link,
    target  => "${dotfiles}/.path",
    require => Repository[$dotfiles]
  }      

  file { "${home}/.wgetrc":
    ensure  => link,
    target  => "${dotfiles}/.wgetrc",
    require => Repository[$dotfiles]
  }      
  
}