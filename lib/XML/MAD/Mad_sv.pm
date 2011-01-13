package XML::MAD::Mad_sv;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'key' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        LocalName    => "key",
        Prefix       => "",
        node_type    => "attribute",
        Name         => "key",
        NamespaceURI => "",
        sort_order   => 0,
    },
);

has 'val' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        LocalName    => "val",
        Prefix       => "",
        node_type    => "attribute",
        Name         => "val",
        NamespaceURI => "",
        sort_order   => 1,
    },
);
1;

__END__
