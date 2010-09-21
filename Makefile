# vim: sw=8 ts=8
all:	x.gtkrc-2.0

XFILE	=x.gtkrc-2.0
GTKRC	=${HOME}/.gtkrc-2.0

install: ${XFILE}
	install -c -m 0644 x.gtkrc-2.0 ${HOME}/.gtkrc-2.0

uninstall:
	@if [ -f ${GTKRC} ] && ! cmp -s ${GTKRC} ${XFILE}; then		\
		echo "${GTKRC} has local edits." >&2;			\
		exit 1;							\
	fi
	${RM} ${GTKRC}
