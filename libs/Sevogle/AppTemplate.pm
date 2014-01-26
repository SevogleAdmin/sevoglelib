
=begin

Begin-Doc
Name: Sevogle::AppTemplate
Type: module
Description: premier wrapper around apptemplate to set defaults


End-Doc

=cut

package Sevogle::AppTemplate;
require 5.000;
use Exporter;
use strict;
use Local::AppTemplate;

use vars qw (@ISA @EXPORT);
@ISA    = qw(Local::AppTemplate Exporter);
@EXPORT = qw();

=begin
Begin-Doc
Name: new
Type: method
Description: creates object
Syntax: $obj->new(%params)
Comments: Same syntax/behavior as routine in AppTemplate module.
End-Doc
=cut

sub new {
    my $self = shift;
    my @args = @_;

    return $self->SUPER::new(
        template_url  => "/apptmpl",
        template_path => [ "/local/apptmpl" ],
        title         => "Sevogle",
        stylesheet    => "/apptmpl/sevogle.css",
        @_
    );
}

1;
