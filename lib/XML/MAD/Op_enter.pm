package XML::MAD::Op_enter;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'seq' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        LocalName    => "seq",
        Prefix       => "",
        node_type    => "attribute",
        Name         => "seq",
        NamespaceURI => "",
        sort_order   => 0,
    },
);

1;

__END__
