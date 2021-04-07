#!/usr/bin/perl
use strict;
use Parse::CSV;
use Data::Dumper;
use Math::Round;
binmode STDOUT, ":utf8";

our $VAT_RATE = 1.21;


my $input = shift(@ARGV);
if(!$input) {
  die("usage: $0 <input> > <output>");
}

# Parse a colon-separated variables file  from a handle as a hash
# based on headers from the first line.
# Then filter, so we emit objects rather than the plain hash.
my $objects = Parse::CSV->new(
  file => $input,
  sep_char   => "\t",
  names      => 1,
);

our @headers = map { "\"$_\"" } split(/\s+/, "id title description link image_link additional_image_link availability price sale_price google_product_category product_type brand gtin  mpn condition adult energy_efficiency_class age_group color gender  material  pattern size  size_type size_system item_group_id shipping_label  shipping_weight custom_label_0 custom_label_1 custom_label_2 custom_label_3 custom_label_4");
print(join("\t", @headers));
print("\n");


while (my $record = $objects->fetch) {
  if($record->{'link'}) {
    $record->{'link'} =~ s/www\.billy\.be/www.billyskate.be/;
  }
  if($record->{'price'}) {
    my ($num, $cur) = split(/\s+/, $record->{price});
    $num *= $VAT_RATE;
    $num = Math::Round::round(100*$num)/100;
    $record->{price} = "$num $cur";
  }
  if($record->{'sale_price'}) {
    my ($num, $cur) = split(/\s+/, $record->{sale_price});
    $num *= $VAT_RATE;
    $num = Math::Round::round(100*$num)/100;
    $record->{sale_price} = "$num $cur";
  }

  my @dataline = (
    '"' . $record->{'id'}. '"',
    '"' . $record->{'title'}. '"',
    '"' . $record->{'description'}. '"',
    '"' . $record->{'link'}. '"',
    '"' . $record->{'image_link'}. '"',
    '"' . $record->{'additional_image_link'}. '"',
    '"' . $record->{'availability'}. '"',
    '"' . $record->{'price'}. '"',
    '"' . $record->{'sale_price'}. '"',
    '"' . $record->{'google_product_category'}. '"',
    '"' . $record->{'product_type'}. '"',
    '"' . $record->{'brand'}. '"',
    '"' . $record->{'gtin'}. '"',
    '"' . $record->{'mpn'}. '"',
    '"' . $record->{'condition'}. '"',
    '"' . $record->{'adult'}. '"',
    '"' . $record->{'energy_efficiency_class'}. '"',
    '"' . $record->{'age_group'}. '"',
    '"' . $record->{'color'}. '"',
    '"' . $record->{'gender'}. '"',
    '"' . $record->{'material'}. '"',
    '"' . $record->{'pattern'}. '"',
    '"' . $record->{'size'}. '"',
    '"' . $record->{'size_type'}. '"',
    '"' . $record->{'size_system'}. '"',
    '"' . $record->{'item_group_id'}. '"',
    '"' . $record->{'shipping_label'}. '"',
    '"' . $record->{'shipping_weight'}. '"',
    '"' . $record->{'custom_label_0'}. '"',
    '"' . $record->{'custom_label_1'}. '"',
    '"' . $record->{'custom_label_2'}. '"',
    '"' . $record->{'custom_label_3'}. '"',
    '"' . $record->{'custom_label_4'}. '"'
  );
  print(join("\t", @dataline));
  print("\n");
}
