package XML::MAD::Madprops;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'mad_op_collection' => (
    isa         => 'ArrayRef[MyApp::Mad_op]',
    is          => 'ro',
    init_arg    => 'mad_ops',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_mad_op => ['push'] },
    description => {
        LocalName    => "mad_op",
        Prefix       => "",
        node_type    => "child",
        Name         => "mad_op",
        NamespaceURI => "",
        sort_order   => 0,
    },
);

has 'mad_sv_collection' => (
    isa         => 'ArrayRef[MyApp::Mad_sv]',
    is          => 'ro',
    init_arg    => 'mad_svs',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_mad_sv => ['push'] },
    description => {
        LocalName    => "mad_sv",
        Prefix       => "",
        node_type    => "child",
        Name         => "mad_sv",
        NamespaceURI => "",
        sort_order   => 1,
    },
);
1;

__END__
