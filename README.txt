
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


Test::Pod 1.45

TODO: change the way we install modules so they will go in the vendor directory! (Should that be really?)

