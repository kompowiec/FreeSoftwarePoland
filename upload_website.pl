#!/usr/bin/perl

my $PUBLIC_DIR = "public/";

opendir my $dir, $PUBLIC_DIR or die "Cannot open directory: $!";
my @files = grep {!/^\./} readdir $dir;
closedir $dir;

unless (@files) {
  system "git -C $PUBLIC_DIR submodule init";
  system "git -C $PUBLIC_DIR submodule update";
}

system "hugo";
system "git -C $PUBLIC_DIR add -A";
# dodana linia xmszkn
system "git -C $PUBLIC_DIR checkout master";

my $current_date = `date +"%d/%m/%Y %H:%M"`;
system qq|git -C $PUBLIC_DIR commit -a -m "site update: $current_date"|;
system "git -C $PUBLIC_DIR push origin master";
system "git add public";
system qq|git commit -a -m "www update: $current_date"|;
system "git push origin master";

=pod
=head1 COPYRIGHT
Copyright 2022 Daniel Maksymow, Piotr Jóźwik

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
=cut
