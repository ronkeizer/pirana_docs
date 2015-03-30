my @psn_commands = qw /bootstrap cdd execute llp mcmp npc scm sse sumo update_inits vpc data_stats create_subsets unwrap_data single_valued_columns create_cont_data/;
foreach my $command (@psn_commands) {
    print "Getting info for PsN command: ".$command."\n";
    system ($command . " -h >".$command."_h.txt");
    system ($command . " -help >".$command."_help.txt");
}
