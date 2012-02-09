
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




