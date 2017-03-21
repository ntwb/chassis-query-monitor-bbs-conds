# Install the Query Monitor bbPress & BuddyPress Conditionals plugin
class querymonitorbbsconds (
  $path = '/vagrant/extensions/query-monitor-bbs-conds'
) {
  if ! ( File['/vagrant/content'] ) {
    file { '/vagrant/content':
      ensure => 'directory',
    }
  }
  if ! ( File['/vagrant/content/plugins'] ) {
    file { '/vagrant/content/plugins':
      ensure => 'directory',
    }
  }
  wp::plugin { 'query-monitor-bbpress-buddypress-conditionals':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => Class['wp'],
  }
}