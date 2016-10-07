# $OpenBSD: Makefile,v 1.17 2014/01/15 02:13:58 jeremy Exp $

COMMENT =	listen to file modifications

DISTNAME =	listen-3.1.5
CATEGORIES =	devel

HOMEPAGE=	http://github.com/guard/listen

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-ruby_dep,${MODRUBY_FLAVOR}>=1.2,<2.0 \
		devel/ruby-rb-fsevent,${MODRUBY_FLAVOR}>=0.9.4,<1.0 \
		devel/ruby-rb-inotify,${MODRUBY_FLAVOR}>=0.9.7,<1.0

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
