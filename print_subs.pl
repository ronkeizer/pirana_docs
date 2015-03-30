open (HTML, ">sub_decriptions.html");
print HTML "<HTML><HEAD><title>Piraña subroutines</title><link rel=stylesheet href='format.css' type=text/css></HEAD><BODY>";
print HTML "<TABLE><TR><TH>Subroutine</TH><TH>Purpose</TH><TH>Compat</TH><TH>Notes</TH></TR>";
scan_sub ("../internal/subs.pl", HTML);
print HTML "<TR><TH colspan=4><B>model.pm</B></TH></TR>";
scan_sub ("../pirana_modules/model.pm", HTML);
print HTML "<TR><TH colspan=4><B>pcluster.pm</B></TH></TR>";
scan_sub ("../pirana_modules/pcluster.pm", HTML);
print HTML "<TR><TH colspan=4><B>editor.pm</B></TH></TR>";
scan_sub ("../pirana_modules/editor.pm", HTML);
print HTML "<TR><TH colspan=4><B>db.pm</B></TH></TR>";
scan_sub ("../pirana_modules/db.pm", HTML);
print HTML "<TR><TH colspan=4><B>PsN.pm</B></TH></TR>";
scan_sub ("../pirana_modules/PsN.pm", HTML);
print HTML "<TR><TH colspan=4><B>data_inspector.pm</B></TH></TR>";
scan_sub ("../pirana_modules/data_inspector.pm", HTML);
print HTML "<TR><TH colspan=4><B>misc.pm</B></TH></TR>";
scan_sub ("../pirana_modules/misc.pm", HTML);

print HTML "</TABLE></BODY></HTML>";
close HTML;

sub scan_sub {
  my $file = shift;
  open (SUB, "<$file");
  @lines = <SUB>;
  close SUB;
  my $sub;
  our %sub_purpose; our %sub_compat; our %sub_note;
  foreach (@lines) {
    if(substr($_,0,3) eq "sub") {
      $_ =~ s/sub//; 
      ($sub,$rest) = split(/\{/,$_); 
      $sub =~ s/\s//g; 
    };
    if ($_ =~ m/### Purpose/ig) {
      my ($rest, $purp) = split ( ": ", $_);
      $sub_purpose{$sub} = $purp;
    }
    if ($_ =~ m/### Compat/ig) {
      my ($rest, $compat) = split ( ": ", $_);
      $sub_compat{$sub} = $compat;
    }    
    if ($_ =~ m/### Notes/ig) {
      my ($rest, $notes) = split ( ": ", $_);
      $sub_notes{$sub} = $notes;
    } 
    if (substr($_,0,1) eq "}") {print_sub($sub)};   
  }
}

sub print_sub () {
  $sub = shift;
  print HTML "<TR><TD>";
  print HTML $sub;
  print HTML "</TD><TD>";
  print HTML $sub_purpose{$sub};
  print HTML "</TD><TD>";
  print HTML $sub_compat{$sub};
  print HTML "</TD><TD>";
  print HTML $sub_notes{$sub};
  print HTML "</TD></TR>\n";
};
