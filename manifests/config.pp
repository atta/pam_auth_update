define pam_auth_update::config ($description, $default = 'yes', $priority = 0, $content) {
  include pam_auth_update

  file { "/usr/share/pam-configs/${name}":
    owner   => root,
    group   => root,
    mode    => 644,
    content => template('pam_auth_update/configs.erb'),
    before  => Exec['pam-auth-update'],
    notify  => Exec['pam-auth-update'],
  }
}
