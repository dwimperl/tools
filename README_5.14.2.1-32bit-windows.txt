# DWIM Perl Version 5.14.2.1 v7 32 bit for Windows
# ===================================================


# DWIM Perl for Windows is a Perl distribution for Microsoft Windows.
# It is based on the Strawberry Perl distribution and includes several
# hundred additional modules from CPAN.

# The following describes the process as the package was created.
# It also lists all the additional packages with their respective
# version numbers. The order of the packages is the order as they
# were added to the distribution.
# Where ther are 2 version numbers this means the module was upgraded
# in the distribution.
# In some cases you'll see comments next the modules names after a # mark.
# You can safely ignore them.

# All the included packages are Copyright their respective authors.
# For detailed license information check out the individual packages.


########################################################################

# Download and install http://strawberryperl.com/package/kmx/p5.14.2.1-RC/strawberry-perl-5.14.2.1-32bit.msi
# Open command prompt
# Check in the whole Strawberry directory to a fresh Git repository:

# c:\strawberry> git init .
# c:\strawberry> git add .
# c:\strawberry> git commit -m "initial version"

# Create a git repository called https://github.com/dwimperl/perl-5.14.2.1-32bit-windows
# and follow the instructions to connect to the remote repository and push put the initial version to Github.

# Add c:\strawberry\.gitignore   and add the following lines:

#   perl/lib/CPAN/Config.pm~
#  /cpan/

# c:\strawberry> git add .gitignore
# c:\strawberry> git commit -m "ignore cpan files"

# c:\strawberry> cpan
# cpan> o conf prerequisites_policy ask
# cpan> reload index
# cpan> q
# git add perl/lib/CPAN/Config.pm
# git commit -m "configure CPAN"

#  First thing is to install CPAN::Reporter

# ( c:\strawberry> perl \work\tools\dwim.pl CPAN::Reporter )

Capture::Tiny                        0.11       0.15
Config::Tiny                                    2.14
IO::CaptureOutput                               1.1102
Devel::Autoflush                                0.05
Test::Reporter                                  1.58
CPAN::Reporter                                  1.2003   #  Test Failed. "notest install CPAN::Reporer"
Data::UUID                                      1.217
Sub::Install                                    0.925
Data::OptList                                   0.107
Sub::Exporter                                   0.982
Data::GUID                                      0.046
Metabase::Fact::Hash                            0.020
CPAN::Testers::Report                           1.999001
Config::Perl::V                                 0.14
Metabase::Client::Simple                        0.008
Test::Reporter::Transport::Metabase             1.999008
Mozilla::CA                         20111025    20120118
# Net::HTTP                           6.01        6.02 (reverted to 6.01 as test reporting does not work with 6.02)
IPC::Cmd                            0.72        0.76

#  cpan> o conf test_report 1

Devel::StackTrace                               1.27
Class::Data::Inheritable                        0.08
Exception::Class                                1.32
Test::Differences                               0.61
PadWalker                                       1.93
Data::Dumper::Names                             0.03
Test::Most                                      0.25
Devel::Symdump                                  2.08
Pod::Coverage                                   0.22
Test::Pod::Coverage                             1.08
Test::Pod                                       1.45
Test::LeakTrace                                 0.14
Test::Requires                                  0.06
Test::SharedFork                                0.19
Test::TCP                                       1.15
Test::DatabaseRow                               2.02
UNIVERSAL::can                                  1.20110617
UNIVERSAL::isa                                  1.20110614
Test::MockObject                                1.20110612
Test::Mock::LWP                                 0.06
Data::Dump                                      1.21
Test::Trap                                      0.2.1
Try::Tiny                                       0.11
Test::Fatal                                     0.008
Test::MockModule                                0.05
Devel::Cycle                                    1.11
Test::Memory::Cycle                             1.04
Test::Taint                                     1.04
HTML::TreeBuilder                               4.2   # part of HTML::Tree
HTTP::Server::Simple                            0.44
HTML::Form                                      6.00
WWW::Mechanize                                  1.72  # *
Carp::Assert                                    0.20
Carp::Assert::More                              1.12
Test::LongString                                0.15
HTML::Lint                                      2.10
Test::WWW::Mechanize                            1.38
Win32::Event                                    1.09   # Win32-IPC
Test::HTTP::Server::Simple                      0.11
HTML::Template                                  2.9
List::MoreUtils                                 0.33
Dist::CheckConflicts                            0.02
Devel::GlobalDestruction                        0.04
Eval::Closure                                   0.07
MRO::Compat                                     0.11
Package::DeprecationManager                     0.11
Package::Stash::XS                              0.25
Package::Stash                                  0.33
Sub::Name                                       0.05
Test::Output                                    1.01    # install earlier!
Params::Classify                                0.013
Module::Runtime                                 0.011
Module::Implementation                          0.04
Class::Load                                     0.15
Class::Load::XS                                 0.04
Test::Without::Module                           0.17    # install earlier!
Moose                                           2.0402

Sub::Identify                                   0.04  # install earlier!
SUPER                                           1.17  # install earlier!
Algorithm::C3                                   0.08  # install earlier!
Path::Class                                     0.24  # install earlier!
Module::Refresh                                 0.17  # install earlier!
Carp::Clan                                      6.04  # install earlier!
aliased                                         0.30  # install earlier!
Declare::Constraints::Simple                    0.03  # install earlier!
Test::use::ok                                   0.02  # install earlier!
Tie::ToObject                                   0.03  # install earlier!
Variable::Magic                                 0.47  # install earlier!
B::Hooks::EndOfScope                            0.09  # install earlier!
namespace::clean                                0.22  # install earlier!
Data::Visitor                                   0.27  # install earlier!
Alien::wxWidgets                                0.54  # pulling in http://prdownloads.sourceforge.net/wxwindows/wxWidgets-2.8.12.tar.gz 
Spiffy                                          0.30
Test::Base                                      0.60
ExtUtils::XSpp                                  0.1602
Wx                                              0.9903
Clone                                           0.31
Test::Object                                    0.07
Hook::LexWrap                                   0.24
Test::SubCalls                                  1.09
PPI                                             1.215
Wx::Perl::ProcessStream                         0.30
App::cpanminus                                  1.5007
Class::Adapter                                  1.08
Class::Unload                                   0.07
Class::XSAccessor                               1.13
Debug::Client                                   0.16
Devel::Dumpvar                                  1.06
Devel::Refactor                                 0.05   # TODO: check the tests
File::Glob::Windows                             0.1.4
Format::Human::Bytes                            0.06
Locale::Msgfmt                                  0.15
Module::Manifest                                1.08
ORLite                                          1.52
POD2::Base                                      0.043
PPIx::EditorTools                               0.15
PPIx::Regexp                                    0.025
Pod::POM                                        0.27
Parse::ErrorString::Perl                        0.15
Parse::ExuberantCTags                           1.02
Pod::Abstract                                   0.20
Template::Tiny                                  1.12
Text::FindIndent                                0.10
Win32::Shortcut                                 0.07  # no tests provided, small test sent to Jan Dubois
DBD::SQLite                                     1.33  1.35
ORLite::Migrate                                 1.10
Text::Patch                                     1.8
Wx::Scintilla                                   0.36
Padre                                           0.94
App::cpanoutdated                               0.20
Net::Telnet                                     3.03
Text::CSV_XS                                    0.86
Text::CSV                                       1.21
AppConfig                                       1.66
Template                                        2.24
Win32::SystemInfo                               0.11  # TODO: check the tests
Win32::Daemon                                   20110117
App::pmuninstall                                0.29
Params::Validate                                1.05
Sys::Syslog                                     0.29
Log::Dispatch                                   2.29
Modern::Perl                                    1.20120130
Win32::Env                                      0.03
Win32::Env::Path                                0.03
Crypt::RC4                                      2.02  # TODO: check tests
Digest::Perl::MD5                               1.8
OLE::Storage_Lite                               0.19
Spreadsheet::ParseExcel                         0.59
Parse::RecDescent                               1.967003
Spreadsheet::WriteExcel                         2.37
Excel::Writer::XLSX                             0.46
Spreadsheet::WriteExcelXML                      0.13
B::Keywords                                     1.12
Email::Address                                  1.895
Readonly                                        1.03
Readonly::XS                                    1.05
PPIx::Utilities::Node                           1.001000
Perl::Tidy                               20101217
Pod::Spell                                      1.01
String::Format                                  1.16
Perl::Critic                                    1.117
Padre::Plugin::PerlCritic                       0.12
Padre::Plugin::PerlTidy                         0.21
Module::ScanDeps                                1.07
Module::Install                                 1.04
Class::Accessor::Grouped                        0.10006
Class::C3                                       0.23
Hash::Merge                                     0.12
Class::C3::Componentised                        1.001000
Config::Any                                     0.23
Context::Preserve                               0.01
Data::Dumper::Concise                           2.020
Class::Accessor                                 0.34
Class::Accessor::Chained                        0.01  # was Class::Accessor::Chained::Fast TODO: add version number to Fast module?
Data::Page                                      2.02
Module::Find                                    0.10
Getopt::Long::Descriptive                       0.090
SQL::Abstract                                   1.72
Scope::Guard                                    0.20
DBIx::Class                                     0.08196
Class::Base                                     0.04
Class::MakeMethods                              1.01
Class::Method::Modifiers                        1.08
strictures                                      1.002002
Moo                                             0.009013
XML::Writer                                     0.615
SQL::Translator                                 0.11010 # install earlier! before DBIx::Class
HTTP::Body                                      1.15
HTTP::Server::Simple::PSGI                      0.14
MIME::Types                                     1.34
Dancer                                          1.3092
Devel::StackTrace::AsHTML                       0.11
Filesys::Notify::Simple                         0.08
Hash::MultiValue                                0.10  # TODO some warnings during testing
Module::Install::ReadmeFromPod                  0.16
Plack                                           0.9985 # install before Dancer
DBIx::RunSQL                                    0.07
Date::Format                                    2.24   # supplied by TimeDate-1.20
Mail::Address                                   2.08   # supplied by MailTools-2.08
Email::Valid                                    0.187
Email::Date::Format                             1.002
MIME::Lite                                      3.028
String::Random                                  0.22
DateTime::Locale                                0.45
Class::Singleton                                1.4
DateTime::TimeZone                              1.42
Math::Round                                     0.06
DateTime                                        0.72
# run test DateTime::TimeZone   again as it also needs DateTime TODO and the tests failed!, check them.
DateTime::Format::Mail                          0.3001
DateTime::Format::W3CDTF                        0.06
Feed::Find                                      0.07
URI::Fetch                                      0.09
XML::XPath                                      1.13
XML::Atom                                       0.41
DateTime::Format::RFC3339                       1.0.5 # v in filename
DateTime::Format::Atom                          1.0.2 # v in filename, install before XML::Atom
XML::RSS                                        1.49
XML::Feed                                       0.46  # TODO test failed, installed using "notest install"
Win32::Console                                  0.09  # no tests supplied
Win32::Pipe                                     0.024 # no tests supplied
Task::Kensho::Toolchain                         0.28
CSS::Tiny                                       1.19
PPI::HTML                                       1.08
# Pod::Coverage::CountParents has an undef version number and Devel::Cover is checking it sort of.
Devel::Cover                                    0.79
Task::Kensho::Testing                           0.28
Log::Log4perl                                   1.35
Fennec::Lite                                    0.004
Meta::Builder                                   0.003
Exporter::Declare                               0.105
Log::Contextual                                 0.004001
Task::Kensho::Logging                           0.01
ExtUtils::Depends                               0.304
B::Hooks::OP::Check                             0.19
B::Hooks::OP::PPAddr                            0.03
Devel::Declare                                  0.006010
MooseX::Types                                   0.31
namespace::autoclean                            0.13
MooseX::Traits                                  0.11
Devel::PartialDump                              0.15
MooseX::Types::DateTime                         0.07
MooseX::Types::Structured                       0.28
Parse::Method::Signatures                       1.003014
Scope::Upper                                    0.18
TryCatch                                        1.003000
Task::Kensho::Exceptions                        0.28
MooseX::StrictConstructor                       0.19
Devel::Caller                                   2.05
MooseX::Params::Validate                        0.16
MooseX::Role::TraitConstructor                  0.01
MooseX::Object::Pluggable                       0.0011
MooseX::Role::Parameterized                     1.00
Test::Unit::Lite                                0.12
Exception::Base                                 0.2401
Symbol::Util                                    0.0202 # deprecation warnings during testing
constant::boolean                               0.02
Test::Assert                                    0.0504
MooseX::GlobRef                                 0.0701
Hash::Util::FieldHash::Compat                   0.03
MooseX::InsideOut                               0.106
MooseX::Singleton                               0.29
MooseX::NonMoose                                0.22
MooseX::LazyRequire                             0.07
MooseX::Meta::Method::Authorized                undef   # provided by MooseX-AuthorizedMethods-0.006
MooseX::Meta::Method::Transactional             undef   # provided by MooseX-TransactionalMethods-0.008
MooseX::Meta::TypeConstraint::ForceCoercion     0.01

Test::Perl::Critic                              1.02
Mouse                                           0.97
Any::Moose                                      0.18
Win32::GuiTest                                  1.58
# GD                                            2.46 already installed
SVG                                             2.50
Log::Dispatch::Configurator                     1.00
MooseX::LogDispatch                             1.2002
String::RewritePrefix                           0.006
MooseX::Storage                                 0.30
syntax                                          0.003
Syntax::Keyword::Gather                         1.001000
warnings::illegalproto                          0.001000
Web::Simple                                     0.012
File::ShareDir::Install                         0.04
IO::TieCombine                                  1.001
CPAN::Meta::Requirements                        2.120351
CPAN::Uploader                                  0.103000
Mixin::Linewise::Readers                        0.003 # Mixin-Linewise-0.003
Config::INI::Reader                             0.019 # supplied by Config-INI-0.019
Tie::IxHash                                     1.22
MooseX::OneArgNew                               0.002
StackTrace::Auto                                0.102080
Role::Identifiable::HasIdent                    0.005 # provided by Role-Identifiable-0.005
String::Formatter                               0.102082
String::Errf                                    0.006
Role::HasMessage                                0.005
Config::MVP::Assembler                          2.200001  # provided by Config-MVP-2.200001
Data::Section                                   0.101621
Hash::Merge::Simple                             0.051
Log::Dispatch::Array                            1.001
String::Flogger                                 1.101241
Config::MVP::Reader::INI                        2.101461
Sub::Exporter::GlobExporter                     0.002
Log::Dispatchouli                               2.005
Perl6::Junction                                 1.400000
autobox                                         2.75
Moose::Autobox                                  0.11
MooseX::SetOnce                                 0.200001
MooseX::Types::Path::Class                      0.05
MooseX::Types::Perl                             0.101341
Perl::PrereqScanner                             1.009
Perl::Version                                   1.011
Pod::Eventual                                   0.093330
Text::Template                                  1.45
Software::License                               0.103004
Sub::Exporter::ForMethods                       0.100050
POE::Test::Loops                                1.350
Win32::Job                                      0.04 # no tests
# Curses                                        1.28 ??? Could these be really installed on Windows?
# IO::Pty                                       1.10 ???
POE                                             1.350
Task::Kensho::Async                             0.28
Email::Simple                                   2.101
Email::Abstract                                 3.004
Email::Sender                                   0.110003
Email::MIME::ContentType                        1.015
Email::MIME::Encodings                          1.313
Email::MessageID                                1.402
Email::MIME                                     1.910
YAML::XS                                        0.38      # YAML-LibYAML-0.38
Email::MIME::Kit                                2.102010
Task::Kensho::Email                             0.28
Config::General                                 2.50
Task::Kensho::Config                            0.28
WWW::Mechanize::TreeBuilder                     1.10003
HTTP::Lite                                      2.3
Task::Kensho::WebCrawling                       0.28

App::Cmd::Setup                                 0.316
Dist::Zilla                                     4.300007


# *) Configure the CPAN client again:
# cpan> o conf prerequisites_policy follow
# cpan> o conf test_report 0


# In dwimperl.iss
#    Update AppVersion

# git tag -a v7 -m "v7 released"


# DWIM Perl Version 5.14.2.1 v8 32 bit for Windows
# ===================================================

# *) Configure the CPAN client:
# cpan> o conf prerequisites_policy ask
# cpan> o conf test_report 1

DBIx::Class::IntrospectableM2M        0.001001
Lingua::EN::Inflect                   1.893
Lingua::EN::Inflect::Number           1.1
Lingua::PT::Stemmer                   0.01
Lingua::Stem::Fr                      0.02
Lingua::Stem::It                      0.02
Lingua::Stem::Ru                      0.01
Lingua::Stem::Snowball::Da            1.01
Lingua::Stem::Snowball::No            1.2
Lingua::Stem::Snowball::Se            1.2
Text::German                          0.06
Lingua::Stem                          0.84
Memoize::ExpireLRU                    0.55
Lingua::EN::Tagger                    0.16
Lingua::EN::Inflect::Phrase           0.12
String::CamelCase                     0.02
Text::Unidecode                       0.04
String::ToIdentifier::EN              0.07
MooseX::MarkAsMethods                 0.14
Test::Distribution                    2.00
Test::Class                           0.36   # *
Debug::Client                   0.16  0.18   # *
Padre::Plugin::Moose                  0.20   # *
YAML                            0.77  0.80
Padre::Plugin::Snippet                0.01   # *
B::Utils                              0.19
Data::Dump::Streamer                  2.32   # selecting 'yes' for DDS
MooseX::Getopt                        0.39
MooseX::AttributeHelpers              0.23
File::Next                            1.06
Devel::LexAlias                       0.04
Lexical::Persistence                  1.020
WWW::Pastebin::PastebinCom::Create    0.004
Win32::Clipboard                      0.56
Clipboard                             0.13
Browser::Open                         0.04
# Config::GitLike                       1.08  # test failed, sent to CPAN Testers
App::Nopaste                          0.33
# Sys::SigAction                        0.15      # OS unsupported
Devel::REPL                           1.003012 # *
Test::WWW::Selenium                   1.32 # *
App::ack                              1.96 # *
DBIx::Class::Schema::Loader           0.07010    # 0.07017  failed, report sent to CPAN Testers, ticket opened with SHA
XML::Generator::PerlData              0.91
XML::Filter::BufferText               1.01
XML::SAX::Writer                      0.53
Task::Kensho::XML                     0.28 # *


