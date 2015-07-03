# $OpenBSD: Makefile,v 1.17 2014/01/15 02:13:58 jeremy Exp $

COMMENT =	listen to file modifications

DISTNAME =	listen-3.0.1
CATEGORIES =	devel

HOMEPAGE=	http://github.com/nex3/rb-inotify

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-rb-inotify,${MODRUBY_FLAVOR} \
		devel/ruby-rb-fsevent,${MODRUBY_FLAVOR}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
