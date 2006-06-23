newPackage("Dmodules", Version => "1.0",
     Headline => "functions for computations with D-modules",
     Authors => {
	  {Name => "Anton Leykin", Email => "leykin@math.uic.edu"},
	  {Name => "Harrison Tsai"}
	  }
     )
export {ExternalProduct,TwistMap,twistMap,twistInvMap,projMap1,projMap2,bFunction,NonGeneric,TryGeneric,IntRing,
        globalB,globalBFunction,ViaAnnFs,ReducedB,factorBFunction,getIntRoots,Boperator,Bpolynomial,globalBoperator,
	AnnFs,AnnIFs,Dtrace,getDtrace,setHomSwitch,getHomSwitch,localCohom,Walther,OaTa,LocStrategy,
	OaTaWa,pruneLocalCohom,paramBpoly,GroundField,makeCyclic,Generator,AnnG,isHolonomic,DHom,DExt,Special,
	None,Info,PolySols,Alg,GD,Duality,PolyExt,RatSols,RatExt,createDpairs,dpairInds,
	dpairVars,Fourier,Dtransposition,singLocus,charIdeal,Drank,Ddim,makeWeylAlgebra,Ddual,Dlocalize,
	Oaku,OTW,Dlocalization,DlocalizationAll,DlocalizeMap,LocModule,GeneratorPower,LocMap,annFS,
	DlocalizeAll,IntegrateBfunction,Bfunction,DlocalizationMap,Dresolution,Schreyer,Vhomogenize,Dres,
	Drestriction,Drestrict,DrestrictionClasses,DrestrictClasses,DrestrictIdeal,DrestrictAll,
	DrestrictionComplex,DrestrictionAll,DrestrictionIdeal,DrestrictComplex,HomologyModules,
	GenCycles,Exponents,Cycles,Boundaries,VResolution,Explicit,IntegrateComplex,Dintegration,
	Dintegrate,DintegrateIdeal,DintegrationIdeal,DintegrationComplex,DintegrateClasses,DintegrateComplex,
	DintegrationClasses,DintegrateAll,DintegrationAll,gkz,Vars,Local,Global,AppellF1,PolyAnn,
	RatAnn,WeylClosure,deRham,deRhamAll,TransferCycles,CohomologyGroups,PreCycles,OmegaRes,
	diffOps,PolyGens,BasisElts,putWeylAlgebra,inw,gbw,pInfo,
	Dprune,Dprune2,optGB,FourierInverse,	
	reduceCompress,zeroize
	}
   
assert (isGlobalSymbol "Output" and value getGlobalSymbol "Output" === getGlobalSymbol "Output")

load "Dmodules/Dloadfile.m2"

beginDocumentation()
load "Dmodules/DMODdoc.m2"

-- Local Variables:
-- compile-command: "make -C $M2BUILDDIR/Macaulay2/packages Dmodules.installed"
-- End:
