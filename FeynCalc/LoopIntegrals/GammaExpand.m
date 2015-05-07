(* ------------------------------------------------------------------------ *)
(* ------------------------------------------------------------------------ *)

(* ------------------------------------------------------------------------ *)

GammaExpand::usage = "GammaExpand[exp] rewrites
Gamma[n + m] (where n has Head Integer).";


(* ------------------------------------------------------------------------ *)

Begin["`Package`"]
End[]

Begin["`GammaExpand`Private`"]

GammaExpand[exp_] :=
	Block[ {gamma1, gamma2},
		gamma1[y_] :=
			gamma1[y] = gamma2[Expand[y]];
		gamma2[n_Integer + m_] :=
			(gamma2[n + m] =
			Pochhammer[m+1,n-1] Gamma[m+1]) /; (n =!= 1);
		gamma2[m_ /; Head[m]=!=Plus] :=
			Gamma[1 + m]/m;
		exp /. Gamma -> gamma1 /. gamma2 -> Gamma
	];
FCPrint[1,"GammaExpand.m loaded."];
End[]