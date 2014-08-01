if $drush_values == undef { $drush_values = hiera('drush', false) }

include puphpet::params

if hash_key_equals($drush_values, 'install', 1) {
  if ($drush_values['settings']['drush.tag_branch'] != undef) {
    $drush_tag_branch = $drush_values['settings']['drush.tag_branch']
  } else {
    $drush_tag_branch = ''
  }

  include drush::git::drush
}

