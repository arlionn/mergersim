program J_resid
	version 13
	syntax varlist if, at(name) 
	quietly {
		tempvar xb xb2 epsilon eta costs costpars costs2 mv
		local epsilon : word 1 of `varlist'		
		
		matrix score double `xb' = `at' `if', eq(#1)
		replace `epsilon' = M_ls - `xb' `if'
		
	}
*	sum `costs' `costs2'
*	matlist M_demand_b
end
