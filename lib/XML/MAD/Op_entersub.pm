package XML::MAD::Op_entersub;
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
        sort_order   => 1,
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
        sort_order   => 2,
    },
);

has 'op_method_named_collection' => (
    isa         => 'ArrayRef[MyApp::Op_method_named]',
    is          => 'ro',
    init_arg    => 'op_method_nameds',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_op_method_named => ['push'] },
    description => {
        LocalName    => "op_method_named",
        Prefix       => "",
        node_type    => "child",
        Name         => "op_method_named",
        NamespaceURI => "",
        sort_order   => 3,
    },
);

has 'op_pushmark_collection' => (
    isa         => 'ArrayRef[MyApp::Op_pushmark]',
    is          => 'ro',
    init_arg    => 'op_pushmarks',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_op_pushmark => ['push'] },
    description => {
        LocalName    => "op_pushmark",
        Prefix       => "",
        node_type    => "child",
        Name         => "op_pushmark",
        NamespaceURI => "",
        sort_order   => 4,
    },
);

has 'private' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        LocalName    => "private",
        Prefix       => "",
        node_type    => "attribute",
        Name         => "private",
        NamespaceURI => "",
        sort_order   => 5,
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
        sort_order   => 6,
    },
);

has 'targ' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        LocalName    => "targ",
        Prefix       => "",
        node_type    => "attribute",
        Name         => "targ",
        NamespaceURI => "",
        sort_order   => 7,
    },
);

1;

__END__
