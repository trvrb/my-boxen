class people::trvrb {

  # dotfiles
  include people::trvrb::dotfiles

  # applications
  include chrome
  include dropbox
  include things
  include java
  include vlc  
  include transmit
  include bbedit
  include intellij
  
  # ruby
  class { 'ruby::global':
    version => '1.9.3'
  }  

  # programs
#  package { 'beast':
#    source => 'trvrb/homebrew-science/beast-1.7.5/beast-1.7.5',
#    ensure => installed,
#    install_options => ['--HEAD']
#  }
    
# I believe this is throwing an error because a non-HEAD version of BEAGLE does not exist in the formula 
#  package { 'beagle':
#    source => 'trvrb/homebrew-science/beagle-r1094',
#    ensure => installed,
#    install_options => ['--HEAD']
#  }  

}
