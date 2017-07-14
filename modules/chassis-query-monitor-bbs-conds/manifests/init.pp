# Install the Query Monitor bbPress & BuddyPress Conditionals plugin
class chassis-query-monitor-bbs-conds (
	$config,
	$path = '/vagrant/extensions/chassis-query-monitor-bbs-conds'
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
