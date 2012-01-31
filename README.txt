
Building Dwimperl

*) Download and install Strawberry perl strawberry-perl-5.12.3.0.msi
*) Open command prompt
*) Check in the whole Strawberry directory to a fresh Git repository
*) Create a git repository in dwimper for perl-5.12.3.0

*)  For development set:

  cpan> o conf prerequisites_policy ask

*) First thing is to install CPAN::Reporter

Capture::Tiny                       0.11
Config::Tiny                        2.14
IO::CaptureOutput                   1.1102
Devel::Autoflush                    0.05
File::Copy::Recursive               0.38
Test::Reporter                      1.58
CPAN::Reporter                      1.2002     Test Failed.
Data::UUID                          1.217
Sub::Install                        0.925
Data::OptList                       0.107
Sub::Exporter                       0.982
Data::GUID                          0.046
Metabase::Fact::Hash                0.020
CPAN::Testers::Report               1.999001
Config::Perl::V                     0.14
Metabase::Client::Simple            0.008
Test::Reporter::Transport::Metabase 1.999008
Mozilla::CA                         20111025
Encode::Locale                      1.02
HTTP::Date                          6.00    was 5.831
File::Listing                       6.03    was  5.837
LWP::MediaTypes                     6.01    was 5.835
HTTP::Headers::Util                 6.02    was ???
HTTP::Cookies                       6.00    was 5.837
HTTP::Daemon                        6.00    was 5.827.
HTTP::Negotiate                     6.00    was 5.835.
Net::HTTP                           6.01    was 5.834.
WWW::RobotRules                     6.01    was 5.832.
LWP::UserAgent                      6.03    was ???
LWP::Protocol::https                6.02    was ???

  cpan> o conf test_report 1


Devel::StackTrace                   1.27
Class::Data::Inheritable            0.08
Exception::Class                    1.32
Test::Differences                   0.61
PadWalker                           1.92
Data::Dumper::Names                 0.03
Test::Most                          0.25
Devel::Symdump                      2.08
Pod::Coverage                       0.21
Test::Pod::Coverage                 1.08
Test::Pod                           1.45


Test::LeakTrace                     0.14
Test::Requires                      0.06
Test::SharedFork                    0.18
Test::TCP                           1.13
Test::DatabaseRow                   1.04
UNIVERSAL::can                      1.20110617
UNIVERSAL::isa                      1.20110614
Test::MockObject                    1.20110612
Test::Mock::LWP                     0.06
Data::Dump                          1.21
Test::Trap                          0.2.1
Try::Tiny                           0.11
Test::Fatal                         0.006
Test::MockModule                    0.05
Devel::Cycle                        1.11
Test::Memory::Cycle                 1.04
Test::Taint                         1.04
HTML::TreeBuilder                   4.2
HTTP::Server::Simple                0.44
WWW::Mechanize                      1.70
Carp::Assert                        0.20
Carp::Assert::More                  1.12
Test::LongString                    0.15
HTML::Lint                          2.06
Test::WWW::Mechanize                1.38
Win32::Event                       (Win32-IPC 1.08)
Test::HTTP::Server::Simple          0.11
HTML::Template                      2.9
List::MoreUtils                     0.33
Dist::CheckConflicts                0.02
Devel::GlobalDestruction            0.04
Eval::Closure                       0.06
MRO::Compat                         0.11
Package::DeprecationManager         0.11
Package::Stash::XS                  0.25
Package::Stash                      0.33
Sub::Name                           0.05
Moose                               2.0205
Test::Output                        1.01
Module::Version                     0.12
Alien::wxWidgets                    0.53      pulling in http://prdownloads.sourceforge.net/wxwindows/wxWidgets-2.8.12.tar.gz 
Spiffy                              0.30
Test::Base                          0.60
ExtUtils::XSpp                      0.1602
Wx                                  0.9902
Clone                               0.31
Test::Object                        0.07
Hook::LexWrap                       0.24
Test::SubCalls                      1.09
PPI                                 1.215
Wx::Perl::ProcessStream             0.30
App::cpanminus                      1.5003
Class::Adapter                      1.08
Class::Unload                       0.07
Class::XSAccessor                   1.13
ExtUtils::MakeMaker                 6.62  # upgrade
Carp                                1.23  # upgrade
Term::ReadLine                      1.07  # upgrade
Debug::Client                       0.16
Devel::Dumpvar                      1.06
Devel::Refactor                     0.05
File::Glob::Windows                 0.1.4
File::HomeDir                       0.98 was 0.97.
Format::Human::Bytes                0.06
Locale::Msgfmt                      0.15
Module::Manifest                    1.08
ORLite                              1.51
POD2::Base                          0.043
PPIx::EditorTools                   0.15
PPIx::Regexp                        0.021
Pod::POM                            0.27
Parse::ErrorString::Perl            0.15
Parse::ExuberantCTags               1.02
Pod::Abstract                       0.20
Template::Tiny                      1.12
Text::FindIndent                    0.10
Win32::Shortcut                     0.07
IPC::Run                            0.90
DBD::SQLite                         1.35 # upgrade
ORLite::Migrate                     1.09
Text::Patch                         1.8
Padre                               0.90
App::cpanoutdated                   0.19
Net::Telnet                         3.03
Text::CSV_XS                        0.85
AppConfig                           1.66
Template                            2.22
Win32::SystemInfo                   0.11
Win32::Daemon                       20110117
Wx::Scintilla                       0.36
HTTP::Tiny                          0.016
App::pmuninstall                    0.25
Params::Validate                    1.00
Sys::Syslog                         0.29
Log::Dispatch                       2.29
Modern::Perl                        1.03
Win32::Env                          0.03
Win32::Env::Path                    0.03
Crypt::RC4                          2.02
Digest::Perl::MD5                   1.8
OLE::Storage_Lite                   0.19
Spreadsheet::ParseExcel             0.59
Parse::RecDescent                   1.965001
Spreadsheet::WriteExcel             2.37
Excel::Writer::XLSX                 0.33
Spreadsheet::WriteExcelXML          0.13
B::Keywords                         1.10
Email::Address                      1.892
Readonly                            1.03
Readonly::XS                        1.05
PPIx::Utilities::Node               1.001000
Perl::Tidy                   20101217
Pod::Spell                          1.01
String::Format                      1.16
Perl::Critic                        1.116
Padre::Plugin::PerlCritic           0.12
Padre::Plugin::PerlTidy             0.16
Module::ScanDeps                    1.04
Module::Install                     1.04
Class::Accessor::Grouped            0.10003
Class::C3                           0.23
Class::C3::Componentised            1.001000
Config::Any                         0.23
ok                                  0.02     # in Test-use-ok
Context::Preserve                   0.01
Data::Dumper::Concise               2.020
Class::Accessor                     0.34
Class::Accessor::Chained::Fast      0.01
Data::Page                          2.02


------------------
TODO

Hash::Merge 0.12
Module::Find 0.06
Path::Class 0.18
SQL::Abstract 1.72
Scope::Guard 0.03
Variable::Magic 0.44
namespace::clean 0.20
DBIx::Class 0.08195

*) Configure the CPAN client again:
cpan> o conf prerequisites_policy follow
cpan> o conf test_report 0

Task::Kensho

Dancer
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

TODO: change the way we install modules so they will go in the vendor directory!
(Is that really a good thing?)

-----


