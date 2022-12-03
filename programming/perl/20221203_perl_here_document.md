# Notes perl here document

### Eotect, 20221203

我总是忘了perl的here document的格式，所以就记下来。

```perl
	print STDERR <<"SOME_TEXT";
	$author said:
	H
	 e
	  l
	   l
	    o
		 ,
		  W
		   o
		    r
			 l
			  d
			   !
	<<SOME_TEXT
```

或者

```perl
	print STDERR <<'SOME_TEXT';
	H
	 e
	  l
	   l
	    o
		 ,
		  W
		   o
		    r
			 l
			  d
			   !
	<<SOME_TEXT
```
