#############################################################################
##
##                             orb package
##  read.g
##                                                          Juergen Mueller
##                                                          Max Neunhoeffer
##                                                             Felix Noeske
##
##  Copyright 2005-2008 by the authors.
##  This file is free software, see license information at the end.
##
##  Reading the implementation part of the orb package.
##
#############################################################################

ReadPackage("orb","gap/homwdata.gi");

# This functionality is moved to the GAPData package. Since
# GAPData is a SuggestedOtherPackage, it should already be
# Loaded here.
if TestPackageAvailability("gapdata") <> true then
    ReadPackage("orb","gap/avltree.gi");
    ReadPackage("orb","gap/hash.gi");
    ReadPackage("orb","gap/cache.gi");
fi;

ReadPackage("orb","gap/orbits.gi");
ReadPackage("orb","gap/search.gi");
ReadPackage("orb","gap/bysuborbit.gi");
ReadPackage("orb","gap/transform.gi");

if IsBound(IO_PackageIsLoaded) then
    ReadPackage("orb","gap/picklers.gi");
else
    if not(IsBound(IO_PkgThingsToRead)) then
        IO_PkgThingsToRead := [];
    fi;
    Add(IO_PkgThingsToRead,["orb","gap/picklers.gi"]);
fi;

