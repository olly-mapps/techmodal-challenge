
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

var t_s integer >= 0;
var t_l integer >= 0; 

## OBJECTIVE ## 

minimize Total_Cost:
	t_l * (uc_l + dc_l + fc_l) + t_s * (uc_s + dc_s + fc_s);
	
## CONSTRAINTS ##

subject to

# Demand Requirement

Large_Demand {d in Days}:
	t_l >= d_l[d];
	
Small_Demand {d in Days}:
	t_s + 4*t_l >= d_s[d];