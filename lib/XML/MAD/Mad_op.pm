package XML::MAD::Mad_op;
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

has 'op_method_collection' => (
    isa         => 'ArrayRef[MyApp::Op_method]',
    is          => 'ro',
    init_arg    => 'op_methods',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_op_method => ['push'] },
    description => {
        LocalName    => "op_method",
        Prefix       => "",
        node_type    => "child",
        Name         => "op_method",
        NamespaceURI => "",
        sort_order   => 2,
    },
);
1;

__END__
