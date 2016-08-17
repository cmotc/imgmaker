echo "
Package: *
Pin: release a=stable
Pin-Priority: 700
Package: *
Pin: release a=testing
Pin-Priority: 650
Package: *
Pin: release a=unstable
Pin-Priority: 300
Package: *
Pin: release a=nightly
Pin-Priority: 200
" | sudo tee $PRFDIR/be-stable

echo "Package: systemd
Pin: release o=Debian
Pin-Priority: -1
Package: systemd-*
Pin: release o=Debian
Pin-Priority: -1
Package: systemd-sysv
Pin: release o=Debian
Pin-Priority: -1
" | sudo tee $PRFDIR/avoid-systemd
