package XML::MAD::Op_method;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'flags' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        LocalName    => "flags",
        Prefix       => "",
        node_type    => "attribute",
        Name         => "flags",
        NamespaceURI => "",
        sort_order   => 0,
    },
);

has 'op_const_collection' => (
    isa         => 'ArrayRef[MyApp::Op_const]',
    is          => 'ro',
    init_arg    => 'op_consts',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_op_const => ['push'] },
    description => {
        LocalName    => "op_const",
        Prefix       => "",
        node_type    => "child",
        Name         => "op_const",
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
