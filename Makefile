all:

clean:

install:
	mkdir -p $(DESTDIR)/usr/bin/
	mkdir -p $(DESTDIR)/usr/share/applications/
	mkdir -p $(DESTDIR)/etc/xdg/autostart/
	chmod -R 0644 etc/* usr/* lib/*
	chmod 755 usr/share/foxxy-defaults/postgresql_reduce_shared_buffers
	chown root:root etc/* usr/* lib/*
	cp -r etc/* usr/* lib/* $(DESTDIR)/
	cp keyboard-selector/keyboard-selector.sh $(DESTDIR)/usr/bin/keyboard-selector
	cp keyboard-selector/foxxy-keyboard-selector.desktop $(DESTDIR)/etc/xdg/autostart/
	cp keyboard-selector/foxxy-keyboard-selector.desktop $(DESTDIR)/usr/share/applications/
	chown root:root $(DESTDIR)/usr/bin/keyboard-selector
	chown root:root $(DESTDIR)/etc/xdg/autostart/foxxy-keyboard-selector.desktop
	chmod 755 $(DESTDIR)/usr/bin/keyboard-selector
	chmod 755 $(DESTDIR)/etc/xdg/autostart/foxxy-keyboard-selector.desktop
	

