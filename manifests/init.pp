class pam_auth_update {
  exec { 'pam-auth-update':
    command => '/usr/sbin/pam-auth-update',
    refreshonly => true,
  }
}