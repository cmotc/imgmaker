echo "
Package: linux-*
Pin: release a=rolling
Pin-Priority: 910
Package: *
Pin: release a=stable
Pin-Priority: 700
Package: *
Pin: release a=testing
Pin-Priority: 250
Package: *
Pin: release a=unstable
Pin-Priority: 200
Package: *
Pin: release a=nightly
Pin-Priority: 100
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
