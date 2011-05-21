package Graph::GEXF::Role::Viz::Shape;

use Moose::Util::TypeConstraints;
use MooseX::Role::Parameterized;

enum EdgeShape => qw(solid doted dashed double);
enum NodeShape => qw(disc square triangle diamond);

parameter for => (
    is       => 'ro',
    required => 1,
);

role {
    my $p = shift;

    my $type = lcfirst( $p->for ) . 'Shape';

    has shape => (
        is  => 'rw',
        isa => $type,
    );
};

no Moose::Util::TypeConstraints;

1;
