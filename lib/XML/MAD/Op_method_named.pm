package XML::MAD::Op_method_named;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'madprops_collection' => (
    isa         => 'ArrayRef[MyApp::Madprops]',
    is          => 'ro',
    init_arg    => 'madpropss',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_madprops => ['push'] },
    description => {
        LocalName    => "madprops",
        Prefix       => "",
        node_type    => "child",
        Name         => "madprops",
        NamespaceURI => "",
        sort_order   => 0,
    },
);

has 'PV' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        LocalName    => "PV",
        Prefix       => "",
        node_type    => "attribute",
        Name         => "PV",
        NamespaceURI => "",
        sort_order   => 1,
    },
);

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
        sort_order   => 2,
    },
);

1;

__END__
