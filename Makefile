PKGNAME ?= timeshift-autosnap-dnf5

.PHONY: install

install:
	@install -Dm644 -t "$(DESTDIR)/etc/dnf/libdnf5-plugins/actions.d/" timeshift.actions
	@install -Dm755 -t "$(DESTDIR)/usr/bin/" timeshift-autosnap-dnf5
	@install -Dm644 -t "$(LIB_DIR)/etc/" timeshift-autosnap-dnf5.conf

uninstall:
	rm -f $(DESTDIR)/etc/dnf/libdnf5-plugins/actions.d/timeshift.actions
	rm -f $(DESTDIR)/usr/bin/timeshift-autosnap-dnf5
	rm -f $(LIB_DIR)/etc/timeshift-autosnap-dnf5.conf
