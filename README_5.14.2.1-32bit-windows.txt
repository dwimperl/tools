
# Download and install http://strawberryperl.com/package/kmx/p5.14.2.1-RC/strawberry-perl-5.14.2.1-32bit.msi
# Open command prompt
# Check in the whole Strawberry directory to a fresh Git repository:

# c:\strawberry> git init .
# c:\strawberry> git add .
# c:\strawberry> git ci -m "initial version"

# Create a git repository in dwimperl called https://github.com/dwimperl/perl-5.14.2.1-32bit-windows
# and follow the instructions to connect to the remote repository and push put the initial version to Github.

# Add c:\strawberry\.gitignore   and add the following lines:

#   perl/lib/CPAN/Config.pm~
#  /cpan/

# c:\strawberry> git add .gitignore
# c:\strawberry> git ci -m "ignore cpan files"

# c:\strawberry> cpan
# cpan> o conf prerequisites_policy ask
# cpan> reload index
# cpan> q
# git add perl/lib/CPAN/Config.pm
# git ci -m "configure CPAN"

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
Win32::Console                                  0.09  # 0.191  no tests supplied
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



# App::Cmd::Setup                                 0.315 # test failed, reported

StackTrace::Auto
Role::Identifiable::HasIdent
Role::HasMessage
Throwable
Config::MVP::Assembler                          0
Config::MVP::Assembler::WithBundles             0
Config::MVP::Reader                             2.101540
Config::MVP::Reader::Findable::ByExtension      0
Config::MVP::Reader::Finder                     0
Config::MVP::Reader::INI                        2
Config::MVP::Section                            2.200001
Data::Section                                   0.004
Hash::Merge::Simple                             0
Log::Dispatchouli                               1.102220
Moose::Autobox                                  0.10 not found.
MooseX::SetOnce 0 not found.
MooseX::Types::Path::Class 0 not found.
MooseX::Types::Perl 0 not found.
Perl::PrereqScanner 1.005 not found.
Perl::Version 0 not found.
Pod::Eventual 0.091480 not found.
Software::License 0.101370 not found.
Software::LicenseUtils 0 not found.
String::Formatter 0.100680 not found.
Sub::Exporter::ForMethods 0 not found.
Text::Template 0 not found.
autobox 2.53 not found.

Dist::Zilla                                     4.300007



# =================================
# TODO for first 5.14.2 release

# MooseX::Method::Signatures                      0.37  # failed, asked on the moose mailing list
# MooseX::Method::Signatures::Meta::Method        0
# MooseX::Method::Signatures::Types               0
# MooseX::Declare                                 0.35
# Task::Moose                                     0.03
# Task::Kensho::OOP                               0.28
# Task::Kensho                                    0.31


# JSON::DWIW                                      0.47 # failed with:
# cd libjsonevt; ./configure && ./fixup_config 'C:\strawberry\perl\bin\perl.exe'
# The system cannot find the path specified.
# JSON::Any                                       1.29
# Devel::NYTProf                                  4.06 # prereq above could not be installed

# Win32::Console::ANSI                            1.04  # the test rebooted my Windows XP in a Virtual Box TODO: need to check this.
# Term::Screen::Win32                             

# 
# Task::Plack ??

# *) Configure the CPAN client again:
# cpan> o conf prerequisites_policy follow
# cpan> o conf test_report 0

# git tag -a v1 -m "v1 released"

# Module::Install::Repository                     0.06

# mark with a star the ones that will be announced)

# Dancer::Plugin::SiteMap
# Dancer::Plugin::SimpleCRUD
# Dancer::Plugin::Database
# Dancer::Plugin::Captcha::SecurityImage
# Dancer::Plugin::Auth::RBAC
# Dancer::Plugin::Auth::Twitter
# Dancer::Plugin::Database
# Dancer::Plugin::DBIC                          0.1504
# Dancer::Plugin::FlashMessage                  0.313

# POE

# ImageMagic


