package Bencher::Scenario::Exporters::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark the startup overhead of some exporter modules',

    module_startup => 1,

    participants => [
        {module=>'Exporter'},
        {module=>'Exporter::Lite'},
        {module=>'Exporter::Tiny'},
        {module=>'Exporter::Tidy'},
        {module=>'Exporter::Rinci'},
        {module=>'Sub::Exporter'},
    ],
};

1;
# ABSTRACT:

=head1 SYNOPSIS


=head1 DESCRIPTION

Some notes:

=over

=item * L<Exporter::Lite> not so lite

Despite the C<::Lite> in its name and having less features than L<Exporter>, the
startup overhead is worse than Exporter (mostly due to the use of L<warnings>).

Also, the whole premise of this module is wrong. L<Exporter> I<can> be used
without subclassing, all you have to do is:

 use Exporter qw(import);

=back
