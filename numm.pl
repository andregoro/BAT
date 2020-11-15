$var="nomeal";
%hash={"1","1"};
@var2=(1,2,3,4);

#print("$var2[1]");
sub volume {
  #       #return $_[0] * $_[1] * $_[2];
  #       #return $_[0];
  # my $test = shift;
  # print($test);
  # my $aaRef = shift;
  # print($aaRef);
  foreach $i(@_){
    print($i);
  }
}



%hash = ('name' => 'Tom', 'age' => 19);
volume(1,2,%h);
print(%hash)