use 5.38.2;

# Day 1: Not Quite Lisp
# Part 1
# Count which floor santa ends up if ')' is down 1 floor and '(' is up;

# replace example with personalized input
my $floors = ')())())'; 
my @down_matches = $floors =~ /\)/g;
my @up_matches = $floors =~ /\(/g;
say "Part 1 floor: ", scalar(@up_matches) - scalar(@down_matches);


# Day 1: Not Quite Lisp
# Part 2
# todo implement counting when santa steps to basement (-1 floor)
