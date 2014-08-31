use 5.012001;
use FindBin;
use File::Basename;

say $FindBin::Bin;

say File::Basename::dirname(__FILE__);

