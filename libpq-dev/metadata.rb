name             'libpq-dev'
maintainer       'Mohamad El-Husseini'
maintainer_email 'husseini.mel@gmail.com'
license          'Apache 2.0'
description      'Installs libpq-dev'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'libpq-dev', 'Installs libpq-dev'

supports 'ubuntu'
supports 'amazon'       # tested with Amazon Linux 2014.09 ('= 2014.09')
supports 'mac_os_x'     # tested with Mac OS X Yosemite v10.10.1 ('~> 10.10.0')

suggests 'homebrew'

