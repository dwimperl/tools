
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
Devel::Refactor                                 0.05
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


=================================
TODO for first 5.14.2 release

#ExtUtils::MakeMaker                 6.62  # upgrade
#Carp                                1.23  # upgrade
#Term::ReadLine                      1.07  # upgrade
#File::HomeDir                       0.98 was 0.97.
# IPC::Run                            0.90

App::cpanoutdated                               0.19
Net::Telnet                                     3.03
Text::CSV_XS                                    0.85
Text::CSV
AppConfig                                       1.66
Template                                        2.22
Win32::SystemInfo                               0.11
Win32::Daemon                                   20110117
HTTP::Tiny                                      0.016
App::pmuninstall                                0.25
Params::Validate                                1.00
Sys::Syslog                                     0.29
Log::Dispatch                                   2.29
Modern::Perl                                    1.03
Win32::Env                                      0.03
Win32::Env::Path                                0.03
Crypt::RC4                                      2.02
Digest::Perl::MD5                               1.8
OLE::Storage_Lite                               0.19
Spreadsheet::ParseExcel                         0.59
Parse::RecDescent                               1.965001
Spreadsheet::WriteExcel                         2.37
Excel::Writer::XLSX                             0.33
Spreadsheet::WriteExcelXML                      0.13
B::Keywords                                     1.10
Email::Address                                  1.892
Readonly                                        1.03
Readonly::XS                                    1.05
PPIx::Utilities::Node                           1.001000
Perl::Tidy                               20101217
Pod::Spell                                      1.01
String::Format                                  1.16
Perl::Critic                                    1.116
Padre::Plugin::PerlCritic                       0.12
Padre::Plugin::PerlTidy                         0.16
Module::ScanDeps                                1.04
Module::Install                                 1.04
Class::Accessor::Grouped                        0.10003
Class::C3                                       0.23
Class::C3::Componentised                        1.001000
Config::Any                                     0.23
ok                                              0.02     # in Test-use-ok
Context::Preserve                               0.01
Data::Dumper::Concise                           2.020
Class::Accessor                                 0.34
Class::Accessor::Chained::Fast                  0.01
Data::Page                                      2.02


*) Configure the CPAN client again:
cpan> o conf prerequisites_policy follow
cpan> o conf test_report 0

git tag -a v6 -m "v6 released"


------------------------------------
Preparing v7

Hash::Merge                            0.12
Module::Find                           0.10
Getopt::Long::Descriptive              0.090
SQL::Abstract                          1.72
Scope::Guard                           0.20
Sub::Identify                          0.04
DBIx::Class                            0.08196
Module::Metadata               1.000004 1.000007
Archive::Extract               0.52    0.58
Archive::Tar                   1.76    1.82
Attribute::Handlers            0.88    0.93
Carp                           1.23    1.24
Class::Inspector               1.25    1.27

CPAN                           1.9600  1.9800
YAML::Tiny                     1.48    1.50
Win32::API                     0.62    0.64
Win32::ChangeNotify            1.08    1.09
Win32::Exe                     0.15    0.17
Win32API::File                 0.1101  0.1200
Test::NoWarnings               1.02    1.04
URI                            1.58    1.59
Class::Base                            0.03
Class::MakeMethods                     1.01
Class::Method::Modifiers               1.08
strictures                             1.002002
Moo                                    0.009013
XML::Writer                            0.615
SQL::Translator                        0.11010
HTTP::Body                             1.15
HTTP::Server::Simple::PSGI             0.14
MIME::Types                            1.34
Dancer                                 1.3092

------------------

TODO
(mark with a star the ones that will be announced)

Task::Kensho

Dancer::Plugin::SiteMap
Dancer::Plugin::SimpleCRUD
Dancer::Plugin::Database
Dancer::Plugin::Captcha::SecurityImage
Dancer::Plugin::Auth::RBAC
Dancer::Plugin::Auth::Twitter
Dancer::Plugin::Database
Dancer::Plugin::DBIC                          0.1504
Dancer::Plugin::FlashMessage                  0.313

POE


MooseX::Storage                             0.30
MooseX::Storage::Deferred                   0.30
MooseX::LogDispatch                         1.2002
MooseX::StrictConstructor                     0.16
MooseX::Singleton                             0.27
Any::Moose               0.15


Test::Perl::Critic                          1.02
Win32::GuiTest                      1.58

GD
ImageMagic
Web::Simple


TODO: change the way we install modules so they will go in the vendor directory!
(Is that really a good thing?)

------------------

Upgrade process
c:\strawberry> cpan
cpan> o conf prerequisites_policy ask
cpan> o conf test_report 1

c:\strawberry> cpan-outdated --verbose > ..\outdated.txt     (to see which modules we might want to upgrade)
c:\strawberry> mversion New::Module
c:\strawberry> cpan New::Module
# update this README file with the 

c:\strawberry> cpan
cpan> o conf prerequisites_policy follow
cpan> o conf test_report 0

# TODO automatically install

git tag -a v7 -m "v7 released"


