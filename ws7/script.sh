BEGIN{

FS=" , "
}
{
	if ( $17 >= 10.0)
		{print $14 }
	}


