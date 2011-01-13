package XML::MAD::Op_leave;
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

has 'op_enter_collection' => (
    isa         => 'ArrayRef[MyApp::Op_enter]',
    is          => 'ro',
    init_arg    => 'op_enters',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_op_enter => ['push'] },
    description => {
        LocalName    => "op_enter",
        Prefix       => "",
        node_type    => "child",
        Name         => "op_enter",
        NamespaceURI => "",
        sort_order   => 1,
    },
);

has 'op_entersub_collection' => (
    isa         => 'ArrayRef[MyApp::Op_entersub]',
    is          => 'ro',
    init_arg    => 'op_entersubs',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_op_entersub => ['push'] },
    description => {
        LocalName    => "op_entersub",
        Prefix       => "",
        node_type    => "child",
        Name         => "op_entersub",
        NamespaceURI => "",
        sort_order   => 2,
    },
);

has 'op_nextstate_collection' => (
    isa         => 'ArrayRef[MyApp::Op_nextstate]',
    is          => 'ro',
    init_arg    => 'op_nextstates',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_op_nextstate => ['push'] },
    description => {
        LocalName    => "op_nextstate",
        Prefix       => "",
        node_type    => "child",
        Name         => "op_nextstate",
        NamespaceURI => "",
        sort_order   => 3,
    },
);

has 'op_null_collection' => (
    isa         => 'ArrayRef[MyApp::Op_null]',
    is          => 'ro',
    init_arg    => 'op_nulls',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_op_null => ['push'] },
    description => {
        LocalName    => "op_null",
        Prefix       => "",
        node_type    => "child",
        Name         => "op_null",
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

has 'refcnt' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        LocalName    => "refcnt",
        Prefix       => "",
        node_type    => "attribute",
        Name         => "refcnt",
        NamespaceURI => "",
        sort_order   => 6,
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
        sort_order   => 7,
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
        sort_order   => 8,
    },
);

1;

__END__
