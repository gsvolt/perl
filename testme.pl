#use Carp;
#croak "out of here!";
use LWP::Simple qw/get/;
$comics_home = 'http://www.comics.com';
$comics = get $comics_home or die "cannot get $comics_home\n";
my $n = 0;
foreach(split /\n/, $comics)
{
 #next unless /OPTION\s+VALUE/i;
 if(my($comic_url, $comic) = m\"([^"]+)">(.*)\)
 {
  $comic =~ s/\t//g;
  $comic =~ s/\r//g;
  printf "%-30s : %s\n",$comic, $comic_url;
  $n++;
 }
}
printf "\n found $n comics\n";

