use 5.38.2;

# Day 5: Doesn't He Have Intern-Elves For This?
# Part 1
# Look for nice strings in santas text-file (using what else than regex!).
# Nice strings have 3+vowels, double letter, and it does not contain 
# certain substrings like ab or pq

my $santas_text_file = "ugknbfddgicrmopn
aaa
jchzalrnumimnmhp
haegwjzuvuyypxyu
dvszwmarrgswjxmb";

my $nice_strings = 0;

for (split(/\n/, $santas_text_file))
{
  my @vowels = $_ =~ /[aeiou]/g;
  next if scalar(@vowels) < 3;
  
  my @double_letter = $_ =~ /(\w)\1/g;
  next if scalar(@double_letter) < 1;
  
  my @forbidden_combinations = $_ =~ /ab|cd|xy|pq/g;
  next if scalar(@forbidden_combinations) > 0;
  
  $nice_strings++;
}

print "Nice strings found: $nice_strings";
