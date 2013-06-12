class people::trvrb::ipython {

  # python
  package { 'python':
    ensure => installed
  }  
  package { 'numpy':
    provider => pip,
    ensure => installed,
    require => Package['python']    
  }
#  package { 'gfortran':
#    ensure => installed
#  }      
#  package { 'scipy':
#    provider => pip,
#    ensure => installed,
#    require => Package['python', 'gfortran']
#  }  
  package { 'matplotlib':
    provider => pip,
    ensure => installed,
    require => Package['python']    
  }
  package { 'pymc':
    provider => pip,
    ensure => installed,
    require => Package['python']    
  }  
#  include qt
#  package { 'zmq':
#    ensure => installed
#  }   
  package { 'pyzmq':	# required for iPython notebook
    provider => pip,
    ensure => installed,
    require => Package['python']    
  } 
  package { 'tornado':	# required for iPython notebook
    provider => pip,
    ensure => installed,
    require => Package['python']    
  }   
  package { 'ipython':
    provider => pip,
    ensure => installed,
    require => Package['python']    
  }     

}