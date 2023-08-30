
## SETS ##

set Days = 1..730;

## PROFITS ##
 
param p_s;
param p_l;

## COSTS ## 

param dc_s;
param dc_l;

param fc_s;
param fc_l;

param uc_s;
param uc_l;

## DEMANDS ## 

param d_l{d in Days};
param d_s{d in Days};

## DECISION VARIABLES ## 

var t_s{d in Days} integer >= 0;
var t_l{d in Days} integer >= 0; 

## OBJECTIVE ## 

minimize Total_Cost:
	sum{d in Days} t_l[d] * (dc_l + fc_l)
	+ sum{d in Days} t_s[d] * (dc_s + fc_s);
	
## CONSTRAINTS ##

subject to

# Demand Requirement

Large_Demand {d in Days}:
	t_l[d] >= d_l[d];
	
# Uncomment for optimal solution 
Small_Demand {d in Days}:
	4*t_l[d] + t_s[d] >= d_s[d];
	
#Small_Demand {d in Days}:
#	t_s[d] >= d_s[d];