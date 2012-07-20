package OSCON;

use 5.015001;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
);

our $VERSION = '0.01';


sub speaking_volume {
    my $correct_room = shift;
    my $correct_time = shift;

    if ($correct_room && $correct_time) {
        return 'intelligible';
    } else {
        # rehearsing
        return 'inaudible';
    }
}


1;
__END__

=head1 NAME

OSCON - Perl example for OSCON talk

=head1 SYNOPSIS

  use OSCON;
  OSCON::speaking_volume(1, 1);

=head1 DESCRIPTION

Example for showing Perl code coverage and complexity metrics.

=head2 EXPORT

None by default.


=head1 HISTORY

=over 8

=item 0.01

Original version; created by h2xs 1.23 with options

  -ACXn
	OSCON

=back



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

Ian Dees, E<lt>undees@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2012 by Ian Dees

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.15.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
