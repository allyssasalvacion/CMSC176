#Allyssa S. Albores
#File name is input.txt

use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

my $tokens = 0;
my $types = 0;
my $number_of_punctuations = 0;
my $types_of_punctuations = 0;
my @punctuations;
my $apostrophe_count = 0;
my $quotation_count = 0;
my $search_count = 0;

#getting all words in the text file and putting into an array
my @words;

say "Enter name of file: ";


open(my $fh, "< input.txt") || die "Couldn't read file: $!\n";
while(<$fh>){
  foreach my $word (split){
    push @words, $word;
  }
}

my $size = @words;
my $substring = "\'";
my $replacement = " ";

for(my $i = 0; $i < $size; $i++) {
	#converts all letters of the word to lowercase
	$words[$i] = lc $words[$i];
	if($words[$i] =~ /\Q$substring\E/) {
		#finds all common contractions
		if($words[$i] =~ "i'll") {
			$words[$i] =~ s/i'll//ig;
			push @words, 'i';
			push @words, 'will';
		} elsif($words[$i] =~ "i've") {
			$words[$i] =~ s/i've//ig;
			push @words, 'i';
			push @words, 'have';
		} elsif($words[$i] =~ "i'm") {
			$words[$i] =~ s/i'm//ig;
			push @words, 'i';
			push @words, 'am';
		} elsif($words[$i] =~ "she'd") {
			$words[$i] =~ s/she'd//ig;
			push @words, 'she';
			push @words, 'had';
		} elsif($words[$i] =~ "she'll") {
			$words[$i] =~ s/she'll//ig;
			push @words, 'she';
			push @words, 'will';
		} elsif($words[$i] =~ "they'll") {
			$words[$i] =~ s/they'll//ig;
			push @words, 'they';
			push @words, 'will';
		}  elsif($words[$i] =~ "they're") {
			$words[$i] =~ s/they're//ig;
			push @words, 'they';
			push @words, 'are';
		} elsif($words[$i] =~ "they've") {
			$words[$i] =~ s/they've//ig;
			push @words, 'they';
			push @words, 'have';
		} elsif($words[$i] =~ "we'd") {
			$words[$i] =~ s/we'd//ig;
			push @words, 'we';
			push @words, 'would';
		} elsif($words[$i] =~ "i'd") {
			$words[$i] =~ s/i'd//ig;
			push @words, 'i';
			push @words, 'would';
		} elsif($words[$i] =~ "we'll") {
			$words[$i] =~ s/we'll//ig;
			push @words, 'we';
			push @words, 'will';
		} elsif($words[$i] =~ "we're") {
			$words[$i] =~ s/we're//ig;
			push @words, 'we';
			push @words, 'are';
		} elsif($words[$i] =~ "we've") {
			$words[$i] =~ s/we've//ig;
			push @words, 'we';
			push @words, 'have';
		} elsif($words[$i] =~ "it'll") {
			$words[$i] =~ s/it'll//ig;
			push @words, 'it';
			push @words, 'will';
		} elsif($words[$i] =~ "it's") {
			$words[$i] =~ s/it's//ig;
			push @words, 'it';
			push @words, 'is';
		} elsif($words[$i] =~ "that's") {
			$words[$i] =~ s/that's//ig;
			push @words, 'that';
			push @words, 'is';
		} elsif($words[$i] =~ "there's") {
			$words[$i] =~ s/there's//ig;
			push @words, 'there';
			push @words, 'is';
		} elsif($words[$i] =~ "where's") {
			$words[$i] =~ s/where's//ig;
			push @words, 'where';
			push @words, 'is';
		} elsif($words[$i] =~ "let's") {
			$words[$i] =~ s/let's//ig;
			push @words, 'let';
			push @words, 'us';
		} elsif($words[$i] =~ "can't") {
			$words[$i] =~ s/can't//ig;
			push @words, 'can';
			push @words, 'not';
		} elsif($words[$i] =~ "couldn't") {
			$words[$i] =~ s/couldn't//ig;
			push @words, 'could';
			push @words, 'not';
		} elsif($words[$i] =~ "didn't") {
			$words[$i] =~ s/didn't//ig;
			push @words, 'did';
			push @words, 'not';
		} elsif($words[$i] =~ "doesn't") {
			$words[$i] =~ s/doesn't//ig;
			push @words, 'does';
			push @words, 'not';
		} elsif($words[$i] =~ "don't") {
			$words[$i] =~ s/don't//ig;
			push @words, 'do';
			push @words, 'not';
		} elsif($words[$i] =~ "hadn't") {
			$words[$i] =~ s/hadn't//ig;
			push @words, 'had';
			push @words, 'not';
		} elsif($words[$i] =~ "hasn't") {
			$words[$i] =~ s/hasn't//ig;
			push @words, 'has';
			push @words, 'not';
		} elsif($words[$i] =~ "isn't") {
			$words[$i] =~ s/isn't//ig;
			push @words, 'is';
			push @words, 'not';
		} elsif($words[$i] =~ "aren't") {
			$words[$i] =~ s/aren't//ig;
			push @words, 'are';
			push @words, 'not';
		} elsif($words[$i] =~ "shouldn't") {
			$words[$i] =~ s/shouldn't//ig;
			push @words, 'should';
			push @words, 'not';
		} elsif($words[$i] =~ "wasn't") {
			$words[$i] =~ s/wasn't//ig;
			push @words, 'was';
			push @words, 'not';
		} elsif($words[$i] =~ "wouldn't") {
			$words[$i] =~ s/wouldn't//ig;
			push @words, 'would';
			push @words, 'not';
		} elsif($words[$i] =~ "could've") {
			$words[$i] =~ s/could've//ig;
			push @words, 'could';
			push @words, 'have';
		} elsif($words[$i] =~ "might've") {
			$words[$i] =~ s/might've//ig;
			push @words, 'might';
			push @words, 'have';
		} elsif($words[$i] =~ "must've") {
			$words[$i] =~ s/must've//ig;
			push @words, 'must';
			push @words, 'have';
		} elsif($words[$i] =~ "should've") {
			$words[$i] =~ s/should've//ig;
			push @words, 'should';
			push @words, 'have';
		} elsif($words[$i] =~ "would've") {
			$words[$i] =~ s/would've//ig;
			push @words, 'would';
			push @words, 'have';
		} elsif($words[$i] =~ "who's") {
			$words[$i] =~ s/who's//ig;
			push @words, 'who';
			push @words, 'is';
		} elsif($words[$i] =~ "'s") {
			chop $words[$i];
			chop $words[$i];
			push @words, 's';
		} else {
			my $letter = substr($words[$i], 0, 1);
			if($letter =~ "\'") {
				substr($words[$i], 0, 1) = "";
			} else {
				chop $words[$i];
			}
		}
		push @punctuations, '\'';
		$apostrophe_count++;
		#TODO: single quote count
	}
}

#removes indexes with white space only
@words = grep { $_ ne '' } @words;
#sort the words
@words = sort @words;
#prints or update of the list of words in the array
$size = @words;

#################################################################################
$tokens = $size;
#################################################################################

findAllPunctuations();
findAllPunctuations();
findAllPunctuations();

my $size2 = @punctuations;

#################################################################################
$number_of_punctuations = $size2;
#################################################################################

#removes indexes with white space only
@words = grep { $_ ne '' } @words;
#sort the words
@words = sort @words;

#group all identical strings in the text file (array)
my %hash1 = map { $_ => 1 } @words;
my @unique1 = keys %hash1;
$types = @unique1;

#determine how many types of punctuations in the text file (array)
my %hash2 = map { $_ => 1 } @punctuations;
my @unique2 = keys %hash2;
$types_of_punctuations = @unique2;

#################################################################################
#a. tokenize the texts in the document
for(my $i = 0; $i < $size; $i++) {
	say $words[$i];
} 
#################################################################################

#a - c
print "\nTokens: ", $tokens;
print "\nTypes: ", $types;
print "\nNumber of Punctuations: ", $number_of_punctuations;
print "\nTypes of Punctuations: ", $types_of_punctuations, "\n";

#################################################################################
#d. Search words based on user input
my $input;
my $end = 'esc';

do {
	$search_count = 0;
	say "\nSearch: ";

	$input = <STDIN>;
	print "\nSearching for ", $input;
	print "\n.........";
	print "\n.........";
	print "\n.........";

	$input = lc $input;
	my $length = length($input);
	my $start = substr($input, 0, 1);
	my $end = substr($input, $length - 2, 1);
	
	say "\n";

	if($start eq "?" and $end eq "*"){
		chop $input;
		chop $input;
		substr($input, 0, 1) = "";
		my $length_of_input = length($input);
		for(my $i = 0; $i < $size; $i++) {
			my $temp = substr($words[$i], 1, $length_of_input);
			if($temp eq $input) {
				say $words[$i];
				$search_count++;
			}
		}
	} elsif($start eq "?" or $end eq "*") {
		if($end eq "*") {
			chop $input;
			chop $input;
			my $length_of_input = length($input);
			for(my $i = 0; $i < $size; $i++) {
				my $temp = substr($words[$i], 0, $length_of_input);
				if($temp eq $input) {
					say $words[$i];
					$search_count++;
				}
			}
		} elsif($start eq "?") {
			substr($input, 0, 1) = "";
			chop $input;
			my $length_of_input = length($input);
			for(my $i = 0; $i < $size; $i++) {
				my $length_of_word = length($words[$i]);
				
				if($length_of_word eq ($length_of_input + 1)) {
					my $temp = substr($words[$i], -$length_of_input);
					if($temp eq $input) {
						say $words[$i];
						$search_count++;
					}
				}
			}			
		}
	} else {		
		chop $input;
		for(my $i = 0; $i < $size; $i++) {
			if($words[$i] =~ /\Q$input\E/) {
				say $words[$i];
				$search_count++;
			}
		}
	}
	say "\ncount: ", $search_count;
} until($input eq $end);

#################################################################################
sub findAllPunctuations {
	#collects all punctuations used in the text file
	for(my $i = 0; $i < $size; $i++) {
		if($words[$i] =~ /\Q"\E/) {
		 	my $letter = substr($words[$i], 0, 1);
				if($letter =~ "\"") {
					substr($words[$i], 0, 1) = "";
					$quotation_count++;
					push @punctuations, '"';
				} else {
					chop $words[$i];
				} 
		} elsif($words[$i] =~ /\Q.\E/) {
			push @punctuations, '.';
			chop $words[$i];
		} elsif($words[$i] =~ /\Q?\E/) {
			push @punctuations, '?';
			chop $words[$i];
		} elsif($words[$i] =~ /\Q!\E/) {
			push @punctuations, '!';
			chop $words[$i];
		} elsif($words[$i] =~ /\Q,\E/) {		
			push @punctuations, ',';
			chop $words[$i];
		} elsif($words[$i] =~ /\Q;\E/) {		
			push @punctuations, ';';
			chop $words[$i];
		} elsif($words[$i] =~ /\Q:\E/) {		
			push @punctuations, ':';
			chop $words[$i];
		} elsif($words[$i] =~ /\Q-\E/) {
			push @punctuations, '-';
			$words[$i] =~ s/-//;
		} elsif($words[$i] =~ /\Q—\E/) {		
			push @punctuations, '—';
			chop $words[$i];
		} elsif($words[$i] =~ /\Q[\E/) {		
			push @punctuations, '[';
			substr($words[$i], 0, 1) = "" 
		} elsif($words[$i] =~ /\Q]\E/) {
			chop $words[$i];
		} elsif($words[$i] =~ /\Q{\E/) {		
			push @punctuations, '{';
			substr($words[$i], 0, 1) = "" 
		} elsif($words[$i] =~ /\Q}\E/) {
			chop $words[$i];
		} elsif($words[$i] =~ /\Q(\E/) {		
			push @punctuations, '(';
			substr($words[$i], 0, 1) = "" 
		} elsif($words[$i] =~ /\Q)\E/) {
			chop $words[$i]; 
		}  
		#TODO: ...
	}	
}