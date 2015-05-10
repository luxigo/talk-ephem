PREFIX?=/usr
DESTDIR?=

install:
	install -D ./etc/init.d/talk-ephem ${DESTDIR}/etc/init.d/
	install -D ./etc/default/talk-ephem ${DESTDIR}/etc/default/
	install -D ./etc/pm/sleep.d/99_ephem ${DESTDIR}/etc/pm/sleep.d/
	install -D ./bin/speakingclock-fr ${DESTDIR}/${PREFIX}/bin/
	install -D ./bin/talk-ephem-say-fr ${DESTDIR}/${PREFIX}/bin/
	install -D ./bin/talk-ephem-crontab ${DESTDIR}/${PREFIX}/bin/
	$(shell ./install.sh)

