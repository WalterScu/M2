--- status: TODO
--- author(s): 
--- notes: 

document { 
     Key => sort,
     Headline => "sort a list or columns of a matrix",
     SeeAlso => {rsort, sortColumns, symbol<=, symbol?}
     }
document { 
     Key => (sort,Matrix),
     Headline => "sort the columns of a matrix",
     Usage => "sort m",
     Inputs => {
	  "m" => "between free modules"
	  },
     Outputs => {
	  Matrix => {"with the same shape as ", TT "m", " whose columns
	  are sorted in increasing order"}
	  },
     PARA{},
     "The default monomial order is to sort the columns in ascending degree first,
     and within each degree, sort in ascending monomial order in the target free
     module.",
     EXAMPLE {
	  "R = ZZ/32003[a..d,MonomialOrder=>Lex];",
	  "m = matrix{{a*d, b^2, b^100, b^50*d^50, c^2*d}}",
	  "sort m"
	  },
     PARA{},
     "The two optional arguments can modify this default order.
     The value of ", TO DegreeOrder, " is considered first (Ascending,
	  Descending, or null), and after that the monomial order
     is used to break ties, either ascending or descending, depending on the
     value of ", TO MonomialOrder, ".",
     PARA{},
     "To sort the columns of ", TT "m", " in descending monomial order:",
     EXAMPLE {
	  "options sort",
	  "sort(m, DegreeOrder=>null, MonomialOrder=>Descending)"
	  },
     SeeAlso => {sortColumns}
     }
document { 
     Key => {(sort,List)},
     Headline => "sort a list",
     Usage => "sort v",
     Inputs => { "v" },
     Outputs => {
	  List => {" of the same length as ", TT "v", " sorted in ascending order"}
	  },
     "The sort function uses ", TO symbol<=, " to compare elements of the
     list, which in turn calls upon ", TO symbol?, ".",
     EXAMPLE {
	  "sort {c,e,a,f,b,f}",
	  "sort {4,2,6,3,8,2}"
	  },
     "Note: we have modified the sort order for strings so that symbols come
     before alphanumeric characters, and upper and lower case characters are
     sorted together.",
     PARA{},
     "If the elements of the list are polynomials, then the monomial order
     is used to sort the elements according to their lead terms.",
     EXAMPLE {
	  "R = ZZ[a..d,MonomialOrder=>Lex];",
	  "sort{a*d, b^100, c^3*d}"
	  },
     PARA{},
     "The optional arguments are not used in this version of sort.",
     Caveat => {
	  "If a list contains elements of different types, the sorting still
	  occurs, but might not be particularly intuitive."
	  },
     SeeAlso => { rsort, symbol<=, symbol? }
     }
document { 
     Key => [sort, MonomialOrder],
     Headline => "specify Ascending or Descending monomial order",
     Usage => "sort(...,MonomialOrder=>x)",
     Inputs => {
	  "x" => Symbol => { "either ", TO "Ascending", " or ", TO "Descending"}
	  },
     Consequences => {
	  {"After the degree order has been considered, sort the columns of
	  the matrix in Ascending or Descending monomial order"}
	  },     
     EXAMPLE {
	  },
     Caveat => {"This option only works for sorting columns of a matrix, not
	  the elements of a list"},
     SeeAlso => {}
     }
document { 
     Key => [sort, DegreeOrder],
     Headline => "specify Ascending, Descending, or null",
     Usage => "sort(...,DegreeOrder=>x)",
     Inputs => {
	  "x" => Symbol => { "either ", TO "Ascending", ", ", TO "Descending", ", or ", TO null}
	  },
     Consequences => {
	  {"If ", TT "x", " is not null, first order the columns of the matrix
	  in ascending or descending degree (depending on ", TT "x", ").  If ",
	  TT "x", " is null, then only use the monomial order in the sort"}
	  },     
     Caveat => {"This option only works for sorting columns of a matrix, not
	  the elements of a list"},
     SeeAlso => {}
     }
 -- doc12.m2:137:     Key => sort,
 -- doc12.m2:154:     Key => rsort,
 -- doc8.m2:1199:     Key => [sortColumns,DegreeOrder],
 -- doc8.m2:1209:     Key => [sortColumns,MonomialOrder],
 -- doc8.m2:1219:     Key => sortColumns,
