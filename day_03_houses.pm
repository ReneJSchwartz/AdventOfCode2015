use 5.38.2;
use feature "switch";

# Day 3: Perfectly Spherical Houses in a Vacuum
# Part 1
# Counts how many houses receive over 1 gift which happens
# if santa visits the house in the infinite 2D grid more than 1 time.
# hash keeps track of visited locations

my %houses;
my $directions = " ^><^>>";
my $x_pos = 0;
my $y_pos = 0;

# then process other directions
for my $dir (split('', $directions)) {
    given ($dir)
    {
      when ('^') { $y_pos++; }
      when ('v') { $y_pos--; }
      when ('<') { $x_pos--; }
      when ('>') { $x_pos++; }
      default {}
    }
    $houses{"$x_pos $y_pos"} += 1;
}

my $lucky_houses = 0;
for (keys %houses)
{
  if ($houses{$_} > 0)
  {
    $lucky_houses++;
  }
}

say "Part 1 \t Amount of houses at least 1 gift: $lucky_houses.";


# Day 3: Perfectly Spherical Houses in a Vacuum
# Part 2
# 

#say "Part 2 ribbon needed: $ribbon_needed.";
