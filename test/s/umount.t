#!/usr/bin/perl
use test::helper qw($_point $_real $_pidfile);
use strict;
use Test::More tests => 1;
use POSIX qw(WEXITSTATUS);
#system("umount $_point");
system("fusermount -u $_point");
ok(POSIX::WEXITSTATUS($?) == 0,"unmount");
system("rm -rf $_real $_pidfile");
