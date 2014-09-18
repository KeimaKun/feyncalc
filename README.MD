FeynCalc is a Mathematica package for algebraic calculations in
elementary particle physics.

For a descrition of FeynCalc, please see http://www.feyncalc.org/.

This software is covered by the GNU Lesser General Public License 3.

Copyright (C) 1990-2014 Rolf Mertig
Copyright (C) 1997-2014 Frederik Orellana
Copyright (C) 2014      Vladyslav Shtabovenko

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

INSTALLATION
------------------------------------------------------------------------------------

Download the file HighEnergyPhysics-5.1.x.tar.gz

Unpack the file (preferrably) in the directory to which $UserAddOnsDirectory is
set (evaluate $UserAddOnsDirectory in Mathematica).

Start Mathematica.

Choose 'Rebuild Help Index' from the 'Help' menu.

Type <<HighEnergyPhysics`FeynCalc`, open the help browser and try out
some of the examples.

CHANGELOGS
------------------------------------------------------------------------------------

Version 8.2.0: 2012, added FeynArts 3.7 - unpatched. On first load it will be patched automatically.
                    When running the first time set $LoadPhi=True before executing
                    Needs["HighEnergyPhysics`FeynCalc`"], then it will be patched automatically.
                    Updated PHI to work with FeynArts-3.7, which can now be kept in a subdir.

Version 8.1.0.1: 2012, updated PHI to work with FeynArts-3.7, which can now be kept in a subdir

Version 8.1.0: 2012,  fixed DiracTrick, improved SUNSimplify, DiracEquation, fixed Hyperlinks in FeynCalc8.nb, fixed Tarcer .mx loading

Version 8.0.3: 2011,  added ClearAttributes[FeynAmpDenominator,Orderless], added Momentum in DiracSimplify

Version 8.0.2: 2011,  fixed more problems, working on documentation

Version 8.0.1: 2011,  fixed a problem in DiracTrace

Version 8.0.0beta3: 2011,  fixed a bug in OneLoop, changed Uncontract, TID

Version 8.0.0: 2011,  fixed some bugs reported by ibedir

Version 8.0.0: 2010,  minimal updates for Mathematica 8.0, added a patched o FeynArts 3.4

Version 7.0.0: 2009/2010, bug fixes, updates for mma 7.0 and new FeynArts

Version 6.0.0: 2007, bug fixes, updates for mma 6.0 and new FeynArts
               For Mathematica 6 only.
               Rolf patched FeynCalc to be compatible with Mathematica 6 (not Phi, not FeynArts)
               and zipped it together, including fully evaluated documentation notebooks in
               HighEnergyPhysics/Documentation/English/.
               Notice that this version does not load Phi nor FeynArts by default.
               Notice also that the changes are not entered into CVS yet, due to lack of time.

Version 5.1.0: 2006, bug fixes, updates for mma 5.2 and new FeynArts

Version 5.0.0b: 2003, bug fixes, adjustments for M5.0 more reorganization
                   by Frederik Orellana
                   inclusion of help system, PHI and FeynArts

CHANGELOG version 4.2.1 -> 4.9.beta
------------------------------------------------------------------------------------
- improved DiracOrder
- added FeynCalcToLaTeX
- fixed the cyclicity problem with Gamma[5]
- simplified installation mechanism
- fixed things for Mathematica 5.0 and FeynArts and patching and all that 
- ...


CHANGELOG version 4.1.1 -> 4.2.0
------------------------------------------------------------------------------------

Changed to use DOT everywhere instead of DOT.

FeynArts 3 support: Exclude "ShapeData" from autoloading.

Keep PolarizationVector unevaluated when given "FeynArts arguments". 

Added support for other multiplications than DOT.

Added FieldDerivative and CovariantFieldDerivative.

Added $Multiplications, $DistributiveFunctions and $Containers to allow customization of FieldDerivative.

DOT moved into main context.

Have ExpandScalarProduct expand also Pair[LorentzIndex[mu], Momentum[a] + Momentum [b] +...].
Small bug fix of FourVector: fci not defined.

IsolateHead dropped. IsolateNames used instead everwhere.

Some more box definitions for PartialD.

Split FeynCalcBook.nb in two.

New directory "fcdevel" with files under development (or just unfinished).

New directory "fcloops" with (1,2) loop related files.

Changed usage into "usage".

Had Contract contract also denominators.

Moved Vectors into context FORM2FeynCalc`.

Moved FORMEpilog, FORMProlog and TraceDimension into context FeynCalc2FORM`
Fixed Breit-Maison problem of  FeynCalcInternal.

Had FeynRule and FunctionalD know about ExplicitSUNIndex.

Dropped Global` symbols in SquareAmplitude.

Small bug fix in Uncontract.

Let Uncontract accept option Dimension -> Automatic.

Have Uncontract uncontract also denominators.

Changed option of A0 A0ToB0 from True to False.

Code moved from "FeynCalc.m" to new files; should improve maintainability.

Moved "SUNSimplify.m"  and "SUNTrace.m" from "qcd" to "fctools",
"qcd/InverseMellin.m" -> "fctables/InverseMellin.m" and
"qcd/ToLarin.m" -> "fctools/ToLarin.m" (corrections of Rolf).

Moved a few more files to more logical places.

Changed usage to "usage" everywhere.

Moved IsolagePrint and IsolateSplit into context Isolate.

Changed QCDScaleMu into ScaleMu.

Dropped SUNF2.

Changed option of SUNSimplify SUNTrace from True to False.

Made SUNSimplify trace also term proportional to the identity matrix when
SUNTrace is set to True.

"FeynCalc.m": 

   Added support for :> to OptionsSelect.

   Placed FDr and CDr in correct contexts.

   Bugfixed check for integer arguments in SUND and SUNDeltaContract:
   Added ExplicitSUNIndex.

   SUND: No longer set all SUND[a,a,b] to 0 if a is not an integer, only when
   a has head SUNIndex.

"DiracSimplify.m":

   Defined print1, print2, print3

"OneLoop.m":

   Changed a few debug printing statements.

   Fixed SumOver to comply with FeynArts 3.


PHI:

   As far as possible dropped using explicit contexts, use MakeContext instead.
   Small fix of ArgumentsSupply.

   Moved FieldDerivative and CovariantFieldDerivative (and CDr and FDr) into
   HighEnergyPhysics/fctools/.

   Implemented compatibility with FeynCalc's PartialD-operator notation.

   Removed many comments. They don't give useful information and clutter things.

   Changed the possible settings of B0Evaluation to strings to facilitate extensibility
   and reduce the number of defined symbols.

   Introduced LeutwylerJBarEvaluation instead of ExplicitLeutwylerJBar.

   Implemented above-threshold evaluation of VeltmanB0 (and LeutwylerJBar).

   Dropped FANonCommutative, FAMetricTensorm, FAPolarizationVector, FAFourVector,
   FADiracMatrix, FAIndices  in favour of NonCommutative in consistence with "FAPatch.m".

   Had "FAPatch.m" add $FermionHeads to P$NonCommuting in "Setup.m",
   as well as set FeynCalcInternal -> False for FourVector, MetricTensor,
   DiracSlash.

   End all usage difinitions with a full stop.

   Changed Dot to DOT.

   "Objects.m":

      Dropped RemoveIntegerIndices.

      Changed to have head ExplicitSUNIndex on integers (instead of nothing) in compliance
      with FeynCalc.

      setLeftRightComponents fixed to have Explicit in right context.

      Fixed bug in WriteOutUMatrices causing NM[a[x], UMatrix[b]] + UMatrix[UIdentity] not
      to work (reported by P.Buettiker).

      Fixed bug in UIndicesSupply, putting DOT in correct context.

      Fixed bug in UExp (reported by Paul Buettiker):
      When zeros were in $UExpansionCoefficients MM, UFieldMatrix didn't work.

   "Utilities.m":

      Added support for WFFactor in DiscardOrders (Don't discard if order is not known).

      MandelstamReduce now has renormalized masses as default.

      Added first sketch of PhiToLaTeX.

   "Palettes.m":

      LoadLagrangian now keeps lagrangians given as strings in context Global`
      (instead of HighEnergyPhysics`Phi`Objects`).

   "Renormalization.m":

      Fixed small bug causing LeutwylerJBar causing problem with LeutwylerSigma.

      Readded C0Evaluation -> "none", D0Evaluation -> "none" to Options[VeltmanExpand].

   "Couplings.m":

      Added PhiModel as option of WFFactor, PMFactor, DCFactor.

      Added Drop as option of DoSumOver.

      Fixed problem with FCToFA causing possible substitution of multiple pairs of
      identical indices in a product.

      Added DiracSlash to FCToFA.

      Dropped Projection in FCToFA, since RemoveIntegerIndices has been dropped.

      Fixed bug in XName causing existing coupling vectors not to be found.

      Fixed bug in VerticesSpecifications. Multiple order of a coupling are now
      correctly merged into e.g. one coupling with orders {2, 4} instead of two
      couplings. (orderJoin).

      Fixed problem with DiscardCT and FeynArts 3.

      Fixed bug in FixCouplingIndices. SUNDelta, SUND and SUNF are now also supported in
      coupling vectors.

      Updated DoSumOver to comply with FeynArts 3.

      Improved WFFactor, DCFactor and PMFactor to behave better if a file is not there.
      DCRenormalize now correctly uses the inverse factor.

   "Channels.m":

      Dropped RemoveIntegerIndices  and Projection.

      Fixed bug with SU2F in SUNReduce.

      Added support for ExplicitSUNIndex.

   "PhiStart.m":

      Dropped RemoveIntegerIndices.

      Switched to UNablaHatDelta with "scalar weak source", remember to switch back if
      vectors or axial-vectors are needed.

   "ChPTW34.m":

      Bugfix: Missing comma in N29.

   ChPTW32.m":

      Bugfix: Typo (QuantumField` instead of QuantumField).


CHANGELOG version 4.1.0.2 -> 4.1.1
------------------------------------------------------------------------------------

HELP SYSTEM:
Following the instructions above, the FeynCalc Book is now viewable via the
Mathematica help browser. It is possible to look up help pages on individual
functions by selecting them in a notebook with the cursor and then clicking
on AddOns in the help browser.

PHI/FeynArts:
Support for FeynArts through the new sub-package Phi, which is now fully integrated
in FeynCalc. Phi adds support for Chiral Perturbation Theory including tools for
dealing with a large number of Feynman rules, derivative couplings, field expansion,
etc. Moreover, some examples of using Phi are provided which should also be
generally instructive. The examples can be found at
http://www.feyncalc.org/examples/index.html. Information about Phi can be found at
http://www.feyncalc.org/examples/phi/index.html.

The ReadProtected Attribute has been removed from all functions.

Moved the file FeynCalcBook.nb into the new directory English and
added the file "BrowserCategories.m" to allow lookup via the
Mathematica help browser.

Changes in "FeynCalc.m":

  All FeynCalc definitions are now cleared upon reload,
  hopefully improved the way filenames and paths are determined,

  added support for loading from ~/.Mathematica,

  added support for loading Phi and FeynArts,

  added $Abbreviations,

  added a few definitions to DeltaFunction,

  fixed bug in DiracTrace reported by A. Kyrieleis,

  fixed bug in DiracTrace causing Tr[DiracSlash[p,p]] to give p^2 instead
  of 4 p^2 (reported by W. Broniowski and L. Trueman and A. Krishna),

  fixed small display bug of Spinor reported by A. Krishna,

  added FCIntegrate and FCNIntegrate which are options of the new
  (still experimental) function FeynmanDoIntegrals,

  fixed bug in the display definition for Pair causing infinite recursion,

Added two new functions (still very experimental) FeynmanReduce and
FeynmanDoIntegrals.

Very small addition to Integrate2.

Added option InitialFunction to FeynRule.

Fixed bug in ComplexConjugate's treatment of DiracGamma[5],
reported by T.Rashba and V. Khotilovich.

Fixed bugs related to Mac OS's filesystem in "FeynCalc.m", "FORM2FeynCalc.m",
"FeynCalc2FORM.m", "OneLoop.m", "PaVeReduce.m", "RHI.m", "SquareAmplitude.m", "Write2.m".

Fixed bug in "FeynCalc2FORM.m" reported by V. Khotilovich.

Fixed forgotten small bugs in "FeynCalcExternal.m".

Changed "FeynCalcExternal.m", "OneLoopSimplify.m", "TID.m"
 to allow other symbols for Dimension than D.

Completely rewrote "FeynmanParametrize1.m". It is still experimental, but in
progress and intended to be much more general than "FeynmanParametrize.m".

Small changes in "OneLoop.m", "PaVeReduce.m" to write out to more readable file names.

Fixed forgotten Blank in "SimplifyPolyLog.m".

Added the following new general utility functions:
NumericQ1, Combinations, MLimit, TimedIntegrate, SelectSplit.

Added check for integers in SU(N) related functions.

Small change in TARCER.nb to avoid name conflict with FeynCalc and FeynArts.

Various very small spelling fixes etc.

------------------------------------------------------------------------------------

Version 4.0 : 2000, reorganized for open-source and extensibility

Version 3.0.1.1 includes two bug-fixes for OneLoop

Version 3.0 includes typesetting features of Mathematica 3.0

Version 1.0 written 1991 by Rolf Mertig
