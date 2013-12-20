/usr/sbin/dtrace -n 'profile-997 { @[stack()] = count(); }'
