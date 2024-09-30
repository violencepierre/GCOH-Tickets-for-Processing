
IF ( Subst(Vwbs,1,11) @<> 'US20 No WBS');
	   Pcmg = 'US20';
	elseif ( Vwbs @= 'US20 No WBS' % Vwbs @= 'US20 No WBS PFD');
	   Pcmg = 'US20';
	Elseif ( Vwbs @<> 'US20 No WBS');
	   Pcmg = 'US20-'|Subst(Vwbs,13,4);
                   Vpar = Subst(Vwbs,13,4);
	Endif;

IF (VFun @= 'F04' % VFun @= 'F60' % VFun @= 'FA0' % VFun @= 'FA5' % VFun @= 'FA7' % VFun @= 'FF4' % VFun @= 'FD3' % VFun @= 'FD4' % VFun @= 'FD'
              % VFun @= 'F02' % VFun @= 'F07' % VFun @= 'FB0' % VFun @= 'FB1' % VFun @= 'FB3' % VFun @= 'F98' % VFun @= 'FB9' % VFun @= 'FD2' % VFun @= 'FC7' % VFun @= 'FC8' % VFun @= 'FA2' % VFun @= 'FA4');
   VFun = VFun | '_';
Endif;

#asciioutput('\\USBE1W0067\data\TM1\EMDSerono_Log\OpexToSPER2013.txt', Vyr, Vmon, Vsce, Vver, Vcurr,  Vcc, Vwbs, Vacc, Vamt, numbertostring(Value), Vfun);

############	3012100000 - Royalty income
   if (Vacc @= '13340000');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar, '3012100000',Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3012100000' ,Vcc, Vacc, Vwbs, 'A5',Vus);
   endif;
############	3020110000 - Local COGs IC
############	3020120000 - Local COGs 3rd parties
   if ( Vacc @= '14802090' );
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc,Vwbs,'91',Vus)+(Value*V3020100000_91)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc,Vwbs,'B9',Vus)+(Value*V3020100000_B9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000',Vcc,Vacc,Vwbs,'52',Vus)+(Value*V3020100000_52)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs, '52',Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc,Vwbs,'59',Vus)+(Value*V3020100000_59)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc,Vwbs,'70',Vus)+(Value*V3020100000_70)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs, '70',Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc,Vwbs,'A9',Vus)+(Value*V3020100000_A9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc,Vwbs,'A8',Vus) +(Value*V3020100000_A8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc,Vwbs,'A4',Vus) +(Value*V3020100000_A4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc,Vwbs,'A2',Vus) +(Value*V3020100000_A2)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc,Vwbs,'B3',Vus) +(Value*V3020100000_B3)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc,Vwbs,'A5',Vus) +(Value*V3020100000_A5)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020120000' ,Vcc,Vacc, Vwbs, 'A5',Vus);
   endif;


############	3020211000 - Price variances 3rd party
   if (Vacc @= '14804000');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*V3020211000_91)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'B9',Vus)+(Value*V3020211000_B9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*V3020211000_52)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*V3020211000_59)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*V3020211000_70)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs, '70',Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*V3020211000_A9)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3020211000_A8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3020211000_A4)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*V3020211000_A2)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*V3020211000_B3)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3020211000_A5)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020211000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
   endif;


############	3020220000 – Cost Center variances

   if (Vcc @= ' US20000003');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020220000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3020220000_A8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020220000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020220000',Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3020220000_A4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020220000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020220000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3020220000_A5)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020220000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
   endif;


############	3020440000 – Cost Center variances

   if (Vcc @= ' US20000002');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020440000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3020440000_A8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020440000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020440000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3020440000_A4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020440000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020440000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3020440000_A5)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020440000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
   endif;

############	3020520000 - Inventory revaluation IC
   if (Vacc @= '14804100');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar, '3020520000',Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*V3020520000_91)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*V3020520000_B9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*V3020520000_52)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*V3020520000_59)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*V3020520000_70)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*V3020520000_A9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3020520000_A8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3020520000_A4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*V3020520000_A2)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*V3020520000_B3)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3020520000_A5)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020520000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
   endif;

############	3020600000 – Global Tech Ops
if (Vcc @= 'US20130100');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020600000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020600000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020600000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020600000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020600000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020600000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
#asciioutput('\\USBE1W0067\data\TM1\EMDSerono_Log\OpexToSPER2013.txt', Vyr, Vmon, Vsce, Vver, Vcurr,  Vcc, Vwbs, Vacc, Vamt, numbertostring(Value),numbertostring(CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3020600000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)),Vfun);
endif;


############	3110100000 - Field Force
############	3110170000 - Field Force Expenses
####   S&M Allocation  ###
   If ( Vcc @= 'US20CFSSAL' & (Vacc @<>'92230000' & Vacc @<>'92250008'));
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VFF_A8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VFF_A4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VFF_A5)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
      CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VFF_59)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VFF_FD)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VFF_V7)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VFF_V8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	  CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VFF_V9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VFF_98)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VFF_E4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
   Endif;

   If ( Vcc @= 'US20CFSSAL' & Vacc @='92230000');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VFFLGOCIS_A8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VFFLGOCIS_A4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VFFLGOCIS_A5)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
      CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VFFLGOCIS_FD)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
     CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VFFLGOCIS_V7)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
      CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VFFLGOCIS_V8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	        CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VFFLGOCIS_V9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VFFLGOCIS_98)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VFFLGOCIS_E4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
   Endif;

   If (Vcc @= 'US20CFSSAL' & Vacc @='92250008');
       CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc,Vwbs,'A8',Vus)+(Value*VFFLGOCFAC_A8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VFFLGOCFAC_A4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VFFLGOCFAC_A5)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
      CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VFFLGOCFAC_FD)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
     CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VFFLGOCFAC_V7)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
      CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VFFLGOCFAC_V8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	        CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VFFLGOCFAC_V9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VFFLGOCFAC_98)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VFFLGOCFAC_E4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD
CellPutN ((CellGetN ('SPER_2013', Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000', Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VFFLGOCFAC_B3)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
   Endif;


############	CCO Support Field   ##############
   if ( Subst(Vwbs,1,11) @= 'US201000FCC');
	if( Subst(Vwbs, 14, 4) @= 'PEAP' % Subst(Vwbs, 14, 4) @= 'PRAP');
		      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	else;
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VFF_A8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VFF_A4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VFF_A5)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VFF_59)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VFF_FD)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VFF_V7)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VFF_V8)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	  CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VFF_V9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VFF_98)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VFF_E4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD###
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VFF_B3)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VFF_EV)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VFF_XE)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
  endif;
  endif;

##############	Egrifta   ##############
   if ( Subst(Vwbs,1,9) @= 'US201EGOF');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
   endif;

##############	Rebif     ###############
   if ( Subst(Vwbs,1,9) @= 'US201REOF' % Subst(Vwbs,1,9) @= 'US201REIF');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
   endif;

##############	Cladribine     ###############
   if ( Subst(Vwbs,1,9) @= 'US201CLOF' );
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
   endif;

### Maureen C. 01-22-2023 Added Direct expenses for Evobrutinib ###
   if ( Subst(Vwbs,1,9) @= 'US201VOOF' );
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
   endif;
   
##############  Fertility   ##############
   if ( Subst(Vwbs,1,9) @= 'US201RHOF');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
   endif;

##############  Fertility Technology ##############
   if ( Subst(Vwbs,1,9) @= 'US201FTOF');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
   endif;

##############  Saizen   ######
   if ( Subst(Vwbs,1,9) @= 'US201SZOF');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
   endif;

##############	Serostim   ######
   if ( Subst(Vwbs,1,9) @= 'US201SEOF');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
   endif;

##############	Oncology   ######
   if ( Subst(Vwbs,1,10) @= 'US201ONOFR');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
   endif;
   if ( Subst(Vwbs,1,11) @= 'US201ONOFST');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'D7' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'D7' ,Vus);
   endif;
   if ( Subst(Vwbs,1,11) @= 'US201ONOFCI');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'D8' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'D8' ,Vus);
   endif;

##############	Anti-PD-L1   ######
   if ( Subst(Vwbs,1,9) @= 'US201APOF' % Subst(Vwbs,1,9) @= 'US201APIF');
	### 03-21-2018 MF - new allocation rule to W0 - have to exclude WBS that contains 'APIF' and 'PR' string ##
	#if(SCAN('PI', Vwbs) > 0);
	if(SCAN('PI', Vwbs) > 0 & Subst(Vwbs,1,9) @<> 'US201APIF' & SCAN('PR', Vwbs) = 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	elseif(Subst(Vwbs,1,9) @= 'US201APIF' & SCAN('PE', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	elseif(Subst(Vwbs,1,9) @= 'US201APIF' & SCAN('OH', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	elseif(Subst(Vwbs,1,9) @= 'US201APIF' & SCAN('PR', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
	elseif(SCAN('PO', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;
   endif;

##############	Xalkori   ######
   if ( Subst(Vwbs,1,9) @= 'US201XAOF');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
   endif;


##############	TH302 Evofosfamide   ######
   if ( Subst(Vwbs,1,9) @= 'US201EVOF');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
   endif;
##############	Allegropharma   ######
   if ( Subst(Vwbs,1,9) @= 'US201ALOF');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
   endif;

### Maureen C. 03-22-2020 Added Direct expenses for Tepotinib & Bintrfusp ###
##############	Tepotinib   ######
   if ( Subst(Vwbs,1,9) @= 'US201TTOF');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
   endif;

   if ( Subst(Vwbs,1,9) @= 'US201XEOF' );
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
   endif;

  ##############	Bintrafusp   ######
   if ( Subst(Vwbs,1,9) @= 'US201BTOF' % Subst(Vwbs,1,9) @= 'US201BTIF');
	if(SCAN('TI', Vwbs) > 0 & Subst(Vwbs,1,9) @<> 'US201BTIF' & SCAN('PR', Vwbs) = 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'BS' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'BS' ,Vus);
	elseif(Subst(Vwbs,1,9) @= 'US201BTIF' & SCAN('PE', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'BS' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'BS' ,Vus);
	elseif(Subst(Vwbs,1,9) @= 'US201BTIF' & SCAN('OH', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'BS' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'BS' ,Vus);
	elseif(Subst(Vwbs,1,9) @= 'US201BTIF' & SCAN('PR', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus);
	elseif(SCAN('TO', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
	endif;

  endif;


##### Field Force Effectiveness


############	3110200000 - Internal Sales Service (ISS)
############	3110240000 - IC income internal sales service
   if (Vacc @= '13360100' );
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*V3110240000_100_54_91)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*V3110240000_100_54_B9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*V3110240000_100_54_52)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*V3110240000_100_54_59)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*V3110240000_100_54_70)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*V3110240000_100_54_A9)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3110240000_100_54_A8)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3110240000_100_54_A4)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*V3110240000_100_54_A2)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000',Vcc,Vacc, Vwbs,'A2' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*V3110240000_100_54_B3)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3110240000_100_54_A5)),
      'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110240000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
   endif;


############	3110250000 - Internal Sales Service Expenses
##############	S&M allocations   ###############
if (   Vcc @= 'US20CMSSAL' & (Vacc @<>'92230000' & Vacc @<>'92250008'));
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISS_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISS_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISS_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VISS_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISS_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISS_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISS_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISS_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISS_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISS_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
endif;

if (   Vcc @= 'US20CMSSAL' & Vacc @='92230000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISSLGOCIS_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISSLGOCIS_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISSLGOCIS_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISSLGOCIS_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISSLGOCIS_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISSLGOCIS_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISSLGOCIS_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISSLGOCIS_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISSLGOCIS_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
endif;

if (   Vcc @= 'US20CMSSAL' & Vacc @='92250008');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISSLGOCFAC_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISSLGOCFAC_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISSLGOCFAC_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISSLGOCFAC_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISSLGOCFAC_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISSLGOCFAC_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISSLGOCFAC_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISSLGOCFAC_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISSLGOCFAC_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VISSLGOCFAC_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);

endif;

##if ( Vwbs @= 'US201CLOMVPDXPE');
###CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
###	'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
###endif;



############	Strategic Planning   ##############
if (Subst(Vwbs,1,15) @= 'US201000MESBIPE' % Subst(Vwbs,1,15) @= 'US201000MESBIOH');
if(SubSt(Vwbs, 16, 2) @<> 'AP'); 
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISS_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISS_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISS_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VISS_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISS_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISS_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISS_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISS_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISS_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISS_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VISS_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VISS_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VISS_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);

else;

	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
	'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
#		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
#	'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
endif;
endif;



##############	CCO Admin  Commercial Expenses ###############
### Maureen C. 09-09-2019 Removed allocation for Program ###

If (Subst(Vwbs,1,15) @=  'US201000MCCBXPE'  % Subst(Vwbs,1,15) @= 'US201000MCCBXOH');
if (SubSt(Vwbs, 16, 2) @<> 'AP');
If (Vwbs @<> 'US201000MCCBXPEAJ' % Vwbs @<> 'US201000MCCBXOHAJ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISS_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISS_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISS_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VISS_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISS_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISS_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISS_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISS_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISS_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISS_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VISS_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VISS_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VISS_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;
Endif;
Endif;


### Maureen C. - 03-24-2020 - Added allocations for CCO Hedge
##############	CCO Admin  Hedge ###############
if (Vwbs @= 'US201000MCCBXPEAJ' % Vwbs @= 'US201000MCCBXOHAJ');
if (SubSt(Vwbs, 16, 2) @<> 'AP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISSCCO_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISSCCO_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISSCCO_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VISSCCO_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISSCCO_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISSCCO_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISSCCO_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISSCCO_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISSCCO_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISSCCO_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VISSCCO_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VISSCCO_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VISSCCO_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
endif;
Endif;


##############  Business Intelligence   ##############
if  (Subst(Vwbs,1,15) @= 'US201000MCCEXPE' % Subst(Vwbs,1,15) @= 'US201000MCCEXOH') ;
 if(SubSt(Vwbs, 16, 2) @<> 'AP'); 
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISS_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISS_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISS_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VISS_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISS_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISS_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISS_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISS_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISS_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISS_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VISS_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VISS_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VISS_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
else;
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
	'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
endif;
endif;

############## 	Managed Markets Support   ##############
if (Subst(Vwbs,1,15) @= 'US201000MCCIXPE' % Subst(Vwbs,1,15) @= 'US201000MCCIXOH');
 if(SubSt(Vwbs, 16, 2) @<> 'AP'); 
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISS_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc,Vwbs,'A4',Vus	)+(Value*VISS_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'A4',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'A5',Vus)+(Value*VISS_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, '59',Vus)+(Value*VISS_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'FD',Vus)+(Value*VISS_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'V7',Vus)+(Value*VISS_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'V8',Vus)+(Value*VISS_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'V9',Vus)+(Value*VISS_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, '98',Vus)+(Value*VISS_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'E4',Vus)+(Value*VISS_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'B3',Vus)+(Value*VISS_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
### Maureen C. - 01-20-2023 - Added allocations for EVO and XEV ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'EV',Vus)+(Value*VISS_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'XE',Vus)+(Value*VISS_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
else;
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'V8',Vus)+(Value*1)),
	'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
#		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'V9',Vus)+(Value*1)),
#	'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
endif;
endif;



##############  Patient Support Services  ##############
### Maureen C. 02-23-2021 Added Allocation for PSP ###

if  (Subst(Vwbs,1,15) @= 'US201000MCCTXPE' % Subst(Vwbs,1,15) @= 'US201000MCCTXOH') ;
 if(SubSt(Vwbs, 16, 2) @<> 'AP'); 
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISS_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISS_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISS_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VISS_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISS_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISS_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISS_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISS_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISS_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISS_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VISS_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VISS_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VISS_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);

else;
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
	'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
endif;
endif;


############## Government Pricing  ##############
### Maureen C. 10-02-2023 Added Allocation for GP ###

if  (Subst(Vwbs,1,15) @= 'US201000MCCGPPE' % Subst(Vwbs,1,15) @= 'US201000MCCGPOH') ;
 if(SubSt(Vwbs, 16, 2) @<> 'AP'); 
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISS_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISS_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISS_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VISS_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISS_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISS_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISS_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISS_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISS_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISS_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VISS_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VISS_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VISS_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);

else;
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
	'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
endif;
endif;

############## Market Insights and Forecasting  ##############
### Maureen C. 10-02-2023 Added Allocation for MI ###

if  (Subst(Vwbs,1,15) @= 'US201000MCCMIPE' % Subst(Vwbs,1,15) @= 'US201000MCCMIOH') ;
 if(SubSt(Vwbs, 16, 2) @<> 'AP'); 
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISS_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISS_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISS_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VISS_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISS_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISS_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISS_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISS_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISS_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISS_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VISS_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VISS_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VISS_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);

else;
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
	'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
endif;
endif;


##############	AIID     New Therapies   ###############
if ( Subst(Vwbs,1,15) @= 'US201AI0MFRAXPE' % Subst(Vwbs,1,15) @= 'US201AI0MFRAXOH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
endif;
##############	Egrifta   ##############
if ( Subst(Vwbs,1,15) @= 'US201EGOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201EGOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201EGOMEVBXOH' % Subst(Vwbs,1,15) @= 'US201EGOMEVBXPE'
               % Subst(Vwbs,1,15) @= 'US201EGOMVPTXPE' % Subst(Vwbs,1,15) @='US201EGOMVPTXOH'
               % Subst(Vwbs,1,15) @= 'US201EGOMVPPXOH'  );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;
#############	Rebif     ###############
if ( Subst(Vwbs,1,15) @= 'US201REOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201REOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201REOMEVBXPE' % Subst(Vwbs,1,15) @= 'US201REOMEVBXOH'
% Subst(Vwbs,1,15) @= 'US201REOMEVCXPE' % Subst(Vwbs,1,15) @= 'US201REOMEVCXOH'
% Subst(Vwbs,1,15) @= 'US201REOMVPTXPE' % Subst(Vwbs,1,15) @='US201REOMVPTXOH'
% Subst(Vwbs,1,15) @= 'US201REOMVPLXOH'% Subst(Vwbs,1,15) @= 'US201REOMVPLXPE' 
% Subst(Vwbs,1,15) @= 'US201REOMVPNXOH'% Subst(Vwbs,1,15) @= 'US201REOMVPNXPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPRXOH'% Subst(Vwbs,1,15) @= 'US201REOMVPRXPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPJXOH'% Subst(Vwbs,1,15) @= 'US201REOMVPJXPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPLAOH'% Subst(Vwbs,1,15) @= 'US201REOMVPLAPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPLEOH'% Subst(Vwbs,1,15) @= 'US201REOMVPLEPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPLFOH'% Subst(Vwbs,1,15) @= 'US201REOMVPLFPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPLGOH'% Subst(Vwbs,1,15) @= 'US201REOMVPLGPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPLJOH'% Subst(Vwbs,1,15) @= 'US201REOMVPLJPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPLKOH'% Subst(Vwbs,1,15) @= 'US201REOMVPLKPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPLLOH'% Subst(Vwbs,1,15) @= 'US201REOMVPLLPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPLNOH'% Subst(Vwbs,1,15) @= 'US201REOMVPLNPE'
% Subst(Vwbs,1,15) @= 'US201REOMVPQXPE' % Subst(Vwbs,1,15) @='US201REOMVPQXOH'
% Subst(Vwbs,1,15) @= 'US201REOMVPPXPE' % Subst(Vwbs,1,15) @='US201REOMVPPXOH'
% Subst(Vwbs,1,15) @= 'US201REOMVPMXPE' % Subst(Vwbs,1,15) @='US201REOMVPMXOH'
% Subst(Vwbs,1,15) @= 'US201REOMCCEXPE' % Subst(Vwbs,1,15) @='US201REOMCCEXOH'
% Subst(Vwbs,1,15) @= 'US201REOMCCIXPE' % Subst(Vwbs,1,15) @='US201REOMCCIXOH'
% Subst(Vwbs,1,15) @= 'US201REOMCCGVPE' % Subst(Vwbs,1,15) @='US201REOMCCGVOH'
);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'A8',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
endif;

### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD
#############	Cladribine     ###############
if ( Subst(Vwbs,1,15) @= 'US201CLOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201CLOMEVCXPE'
% Subst(Vwbs,1,15) @= 'US201CLOMEVBXPE' % Subst(Vwbs,1,15) @= 'US201CLOMVPLXPE'
% Subst(Vwbs,1,15) @= 'US201CLOMVPTXPE' % Subst(Vwbs,1,15) @='US201CLOMCCEXPE'
% Subst(Vwbs,1,15) @= 'US201CLOMCCIXPE'  % Subst(Vwbs,1,15) @='US201CLOMVPDXPE'
% Subst(Vwbs,1,15) @= 'US201CLOMVPJXPE'  % Subst(Vwbs,1,15) @='US201CLOMVPLAPE'
% Subst(Vwbs,1,15) @= 'US201CLOMVPLEPE'  % Subst(Vwbs,1,15) @='US201CLOMVPLFPE'
% Subst(Vwbs,1,15) @= 'US201CLOMVPLGPE'  % Subst(Vwbs,1,15) @='US201CLOMVPLJPE'
% Subst(Vwbs,1,15) @= 'US201CLOMVPLKPE'  % Subst(Vwbs,1,15) @='US201CLOMVPLLPE'
% Subst(Vwbs,1,15) @= 'US201CLOMVPLNPE'  % Subst(Vwbs,1,15) @='US201CLOMVPLNOH'
% Subst(Vwbs,1,15) @= 'US201CLOMCCGVPE'  % Subst(Vwbs,1,15) @='US201CLOMCCGVOH'
% Subst(Vwbs,1,15) @= 'US201CLOMEVAXOH'  % Subst(Vwbs,1,15) @='US201CLOMEVBXOH'
% Subst(Vwbs,1,15) @= 'US201CLOMEVCXOH'  % Subst(Vwbs,1,15) @='US201CLOMVPLXOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPDXOH'  % Subst(Vwbs,1,15) @='US201CLOMVPTXOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPJXOH'  % Subst(Vwbs,1,15) @='US201CLOMCCEXOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPLAOH'  % Subst(Vwbs,1,15) @='US201CLOMCCIXOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPLEOH'  % Subst(Vwbs,1,15) @='US201CLOMVPLFOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPLGOH'  % Subst(Vwbs,1,15) @='US201CLOMVPLJOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPLLOH'  % Subst(Vwbs,1,15) @= 'US201CLOMVPLKOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPNXPE'  % Subst(Vwbs,1,15) @='US201CLOMVPNXOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPFXPE'  % Subst(Vwbs,1,15) @='US201CLOMVPFXOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPQXPE'  % Subst(Vwbs,1,15) @='US201CLOMVPQXOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPPXPE'  % Subst(Vwbs,1,15) @='US201CLOMVPPXOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPMXPE'  % Subst(Vwbs,1,15) @='US201CLOMVPMXOH'
% Subst(Vwbs,1,15) @= 'US201CLOMVPTLPE'  % Subst(Vwbs,1,15) @='US201CLOMVPTLOH'
##### Pierres first edit yayy 10/3/2023 ###
);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'B3',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
endif;

### Maureen C. - 01-20-2023 - Added for EVO
##############	Evobrutinib ######
if ( Subst(Vwbs,1,15) @= 'US201VOOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201VOOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201VOOMEVCXPE'  % Subst(Vwbs,1,15) @='US201VOOMVEVCXOH'
% Subst(Vwbs,1,15) @= 'US201VOOMEVBXPE'  % Subst(Vwbs,1,15) @='US201VOOMVEVBXOH'
% Subst(Vwbs,1,15) @= 'US201VOOMVPFXPE'  % Subst(Vwbs,1,15) @='US201VOOMVPFXOH'
% Subst(Vwbs,1,15) @= 'US201VOOMVPJXPE'  % Subst(Vwbs,1,15) @='US201VOOMVPJXOH'	
% Subst(Vwbs,1,15) @= 'US201VOOMVPMXPE'  % Subst(Vwbs,1,15) @='US201VOOMVPMXOH'
% Subst(Vwbs,1,15) @= 'US201VOOMVPQXPE'  % Subst(Vwbs,1,15) @='US201VOOMVPQXOH'
% Subst(Vwbs,1,15) @= 'US201VOOMVPPXPE'  % Subst(Vwbs,1,15) @='US201VOOMVPPXOH'
% Subst(Vwbs,1,15) @= 'US201VOOMVPTXPE'  % Subst(Vwbs,1,15) @='US201VOOMVPTXOH'
% Subst(Vwbs,1,15) @= 'US201VOOMVPTLPE'  % Subst(Vwbs,1,15) @='US201VOOMVPTLOH'
% Subst(Vwbs,1,15) @= 'US201VOOMCCEXPE'  % Subst(Vwbs,1,15) @='US201VOOMCCEXOH'
% Subst(Vwbs,1,15) @= 'US201VOOMCCIXPE'  % Subst(Vwbs,1,15) @='US201VOOMCCIXOH'
% Subst(Vwbs,1,15) @= 'US201VOOMCCGVPE'  % Subst(Vwbs,1,15) @='US201VOOMCCGVOH'
);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
endif;

##############	Xevinapant ######
if ( Subst(Vwbs,1,15) @= 'US201XEOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201XEOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201XEOMEVBXPE'  % Subst(Vwbs,1,15) @='US201XEOMVEVBXOH'
% Subst(Vwbs,1,15) @= 'US201XEOMEVCXPE'  % Subst(Vwbs,1,15) @='US201XEOMVEVCXOH'
% Subst(Vwbs,1,15) @= 'US201XEOMVPLXPE'  % Subst(Vwbs,1,15) @='US201XEOMVPLXOH'	
% Subst(Vwbs,1,15) @= 'US201XEOMVPTXPE'  % Subst(Vwbs,1,15) @='US201XEOMVPTXOH'
% Subst(Vwbs,1,15) @= 'US201XEOMCCEXPE'  % Subst(Vwbs,1,15) @='US201XEOMCCEXOH'
% Subst(Vwbs,1,15) @= 'US201XEOMCCIXPE'  % Subst(Vwbs,1,15) @='US201XEOMCCIXOH'
% Subst(Vwbs,1,15) @= 'US201XEOMCCGVPE'  % Subst(Vwbs,1,15) @='US201XEOMCCGVOH'
% Subst(Vwbs,1,15) @= 'US201XEOMCCMIPE'  % Subst(Vwbs,1,15) @='US201XEOMCCMIOH'

);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
endif;

########################## Glucophage###################

if ( Subst(Vwbs,1,15) @= 'US201GLOMCCIXPE' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'B4',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
endif;


##############	Fertility     ###############
if ( Subst(Vwbs,1,15) @= 'US201RHOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201RHOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201RHOMEVBXPE' % Subst(Vwbs,1,15) @= 'US201RHOMEVBXOH'
% Subst(Vwbs,1,15) @= 'US201RHOMEVCXPE' % Subst(Vwbs,1,15) @= 'US201RHOMEVCXOH'
% Subst(Vwbs,1,15) @= 'US201RHOMVPCXOH' % Subst(Vwbs,1,15) @= 'US201RHOMVPCXPE'
% Subst(Vwbs,1,15) @= 'US201RHOMVPTXOH' % Subst(Vwbs,1,15) @='US201RHOMVPTXPE'
% Subst(Vwbs,1,15) @= 'US201RHOMVPLXPE' % Subst(Vwbs,1,15) @= 'US201RHOMVPLXOH'
% Subst(Vwbs,1,15) @= 'US201RHOMVPPXPE' % Subst(Vwbs,1,15) @= 'US201RHOMVPPXOH'
% Subst(Vwbs,1,15) @= 'US201RHOMVPQXPE' % Subst(Vwbs,1,15) @= 'US201RHOMVPQXOH' 
% Subst(Vwbs,1,15) @= 'US201RHOMVDQXPE' % Subst(Vwbs,1,15) @= 'US201RHOMVPDXOH' 
% Subst(Vwbs,1,15) @= 'US201RHOMCCEXPE' % Subst(Vwbs,1,15) @= 'US201RHOMCCEXOH' 
% Subst(Vwbs,1,15) @= 'US201RHOMCCIXPE' % Subst(Vwbs,1,15) @= 'US201RHOMCCIXOH' 
% Subst(Vwbs,1,15) @= 'US201RHOMCCGVPE' % Subst(Vwbs,1,15) @= 'US201RHOMCCGVOH' 
% Vcc @= 'US20REBIL3' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'A4',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
endif;
#############	Fertility Technology     ###############
if ( Subst(Vwbs,1,15) @= 'US201FTOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201FTOMEVAXOH' % Subst(Vwbs,1,15) @= 'US201FTOMEVBXOH' % Subst(Vwbs,1,15) @= 'US201FTOMVPLXPE' % Subst(Vwbs,1,15) @= 'US201FTOMVPLXOH' % Subst(Vwbs,1,15) @= 'US201FTOMVPPXOH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'E4',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
endif;

##############	Saizen   ######
if ( Subst(Vwbs,1,15) @= 'US201SZOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201SZOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201SZOMEVBXPE' % Subst(Vwbs,1,15) @= 'US201SZOMVPPXOH'
               % Subst(Vwbs,1,15) @= 'US201SZOMEVBXOH' % Subst(Vwbs,1,15) @='US201SZOMVPTXPE'
	% Subst(Vwbs,1,15) @= 'US201SZOMVPTXOH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;
##############	Serostim   ######
if ( Subst(Vwbs,1,15) @= 'US201SEOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201SEOMEVAXOH'
	% Subst(Vwbs,1,15) @= 'US201SEOMEVBXPE' % Subst(Vwbs,1,15) @= 'US201SEOMEVTXPE'
	% Subst(Vwbs,1,15) @= 'US201SEOMEVTXOH'  % Subst(Vwbs,1,15) @= 'US201SEOMVPPXOH'
	% Subst(Vwbs,1,15) @= 'US201SEOMEVBXOH' % Subst(Vwbs,1,15) @= 'US201SEOMVPPXPE'
                % Subst(Vwbs,1,15) @= 'US201SEOMVPQXOH' % Subst(Vwbs,1,15) @= 'US201SEOMVPQXPE'
                % Subst(Vwbs,1,15) @= 'US201SEOMVPTXOH' % Subst(Vwbs,1,15) @= 'US201SEOMVPTXPE'
                % Subst(Vwbs,1,15) @= 'US201SEOMCCEXOH' % Subst(Vwbs,1,15) @= 'US201SEOMCCEXPE'
                % Subst(Vwbs,1,15) @= 'US201SEOMCCIXOH' % Subst(Vwbs,1,15) @= 'US201SEOMCCIXPE'
                % Subst(Vwbs,1,15) @= 'US201SEOMCCGVOH' % Subst(Vwbs,1,15) @= 'US201SEOMCCGVPE'
 );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


###########        Oncology    #########
IF( Vcc @= 'US20REBIL6');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '');
IF ( Subst(Vwbs,1,11) @= 'US201ONOMFR' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;
IF ( Subst(Vwbs,1,11) @= 'US201ONOMSU' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;

IF ( Subst(Vwbs,1,11) @= 'US201ONOMST' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D7' ,Vus);
Endif;
IF ( Subst(Vwbs,1,11) @= 'US201ONOMCI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D8' ,Vus);
Endif;
Endif;

##############	Xalkori   ######
if ( Subst(Vwbs,1,15) @= 'US201XAOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201XAOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201XAOMEVBXPE' % Subst(Vwbs,1,15) @= ' US201XAOMEVBXOH' % Subst(Vwbs,1,15) @= 'US201XAOMSUSXPE' % Subst(Vwbs,1,15) @= 'US201XAOMSUSXOH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
endif;

##############	Evofosfamide    TH302 ######
if ( Subst(Vwbs,1,15) @= 'US201EVOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201EVOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201EVOMEVBXPE' % Subst(Vwbs,1,15) @= ' US201EVOMEVBXOH' % Subst(Vwbs,1,15) @= 'US201EVOMSUSXPE' % Subst(Vwbs,1,15) @= 'US201EVOMSUSXOH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
endif;

##############	Anti-PD-L1 non- shared ######
if ( Subst(Vwbs,1,15) @= 'US201APOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201APOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201APOMEVBXPE' % Subst(Vwbs,1,15) @= ' US201APOMEVBXOH' 
% Subst(Vwbs,1,15) @= 'US201APOMSUSXPE' % Subst(Vwbs,1,15) @= 'US201APOMSUSXOH'
% Subst(Vwbs,1,15) @= 'US201APOMEVSXPE' % Subst(Vwbs,1,15) @= 'US201APOMEVSXOH' 
% Subst(Vwbs,1,15) @= 'US201APOMVPDXPE' % Subst(Vwbs,1,15) @= 'US201APOMVPDXOH' 
% Subst(Vwbs,1,15) @= 'US201APOMEVCXPE' % Subst(Vwbs,1,15) @= 'US201APOMCCGVPE'
% Subst(Vwbs,1,15) @= 'US201APOMCCGVOH' % Subst(Vwbs,1,15) @= 'US201APOMCCEXPE' 
% Subst(Vwbs,1,15) @= 'US201APOMEVCXOH' % Subst(Vwbs,1,15) @= 'US201APOMCCEXOH'
% Subst(Vwbs,1,15) @= 'US201APOMVPTXPE' % Subst(Vwbs,1,15) @= 'US201APOMVPTXOH' 
% Subst(Vwbs,1,15) @= 'US201APOMVPLXPE' % Subst(Vwbs,1,15) @= 'US201APOMVPLXOH' 
% Subst(Vwbs,1,15) @= 'US201APOMCCIXPE' % Subst(Vwbs,1,15) @= 'US201APOMCCIXOH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
endif;

##############	Anti-PD-L1 shared ######
if ( Subst(Vwbs, 1, 15) @= 'US201APIMEVAXPE' % Subst(Vwbs, 1, 15) @= 'US201APIMEVAXOH' 
% Subst(Vwbs, 1, 15) @= 'US201APIMEVBXPE' % Subst(Vwbs, 1, 15) @= 'US201APIMEVBXOH' 
% Subst(Vwbs, 1, 15) @= 'US201APIMSUSXPE' % Subst(Vwbs, 1, 15) @= 'US201APIMSUSXOH' 
% Subst(Vwbs, 1, 15) @= 'US201APIMVPDXPE' % Subst(Vwbs, 1, 15) @= 'US201APIMVPDXOH' 
% Subst(Vwbs, 1, 15) @= 'US201APIMVPTXPE' % Subst(Vwbs, 1, 15) @= 'US201APIMVPTXOH' 
% Subst(Vwbs, 1, 15) @= 'US201APIMCCEXPE' % Subst(Vwbs,1,15) @= 'US201APIMCCEXOH'
% Subst(Vwbs, 1, 15) @= 'US201APIMCCIXPE' % Subst(Vwbs,1,15) @= 'US201APIMCCIXOH' 
% Subst(Vwbs,1,15) @= 'US201APIMEVCXPE' % Subst(Vwbs,1,15) @= 'US201APIMEVCXOH' 
% Subst(Vwbs,1,15) @= 'US201APIMCCGVPE' % Subst(Vwbs,1,15) @= 'US201APIMCCGVOH' 
% Subst(Vwbs,1,15) @= 'US201APIMVPLXOH'% Subst(Vwbs,1,15) @= 'US201APIMVPLXPE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
endif;

##############	Allegropharma ######
if ( Subst(Vwbs,1,15) @= 'US201ALOMALAXPE' % Subst(Vwbs,1,15) @= 'US201ALOMALAXOH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
endif;

### Maureen C.  03-22-2020 - Added Tepotinib and Bintrafusp
#############	Tepotinib     ###############
if ( Subst(Vwbs,1,15) @= 'US201TTOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201TTOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201TTOMEVBXPE' % Subst(Vwbs,1,15) @= 'US201TTOMEVBXOH'
% Subst(Vwbs,1,15) @= 'US201TTOMEVCXPE' % Subst(Vwbs,1,15) @= 'US201TTOMEVCXOH'
% Subst(Vwbs,1,15) @= 'US201TTOMVPTXPE' % Subst(Vwbs,1,15) @='US201TTOMVPTXOH'
% Subst(Vwbs,1,15) @= 'US201TTOMCCEXPE' % Subst(Vwbs,1,15) @='US201TTOMCCEXOH'
% Subst(Vwbs,1,15) @= 'US201TTOMCCIXPE' % Subst(Vwbs,1,15) @='US201TTOMCCIXOH'
% Subst(Vwbs,1,15) @= 'US201TTOMCCGVPE' % Subst(Vwbs,1,15) @='US201TTOMCCGVOH'
% Subst(Vwbs,1,15) @= 'US201TTOMVPLXPE' % Subst(Vwbs,1,15) @='US201TTOMVPLXOH'
% Subst(Vwbs,1,15) @= 'US201TTIMEVAXPE' % Subst(Vwbs,1,15) @= 'US201TTIMEVAXOH'
);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs, 'TT',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
endif;

##############	Bintrafusp Shared ######
if ( Subst(Vwbs, 1, 15) @= 'US201BTIMEVAXPE' % Subst(Vwbs, 1, 15) @= 'US201BTIMEVAXOH' 
% Subst(Vwbs, 1, 15) @= 'US201BTIMEVBXPE' % Subst(Vwbs, 1, 15) @= 'US201BTIMEVBXOH'
% Subst(Vwbs, 1, 15) @= 'US201BTIMSUSXPE' % Subst(Vwbs, 1, 15) @= 'US201BTIMSUSXOH' 
% Subst(Vwbs, 1, 15) @= 'US201BTIMVPDXPE' % Subst(Vwbs, 1, 15) @= 'US201BTIMVPDXOH' 
% Subst(Vwbs, 1, 15) @= 'US201BTIMVPTXPE' % Subst(Vwbs, 1, 15) @= 'US201BTIMVPTXOH' 
% Subst(Vwbs, 1, 15) @= 'US201BTIMCCEXPE' % Subst(Vwbs, 1, 15) @= 'US201BTIMCCEXOH' 
% Subst(Vwbs, 1, 15) @= 'US201BTIMCCIXPE' % Subst(Vwbs, 1, 15) @= 'US201BTIMCCIXOH'
% Subst(Vwbs, 1, 15) @= 'US201BTIMCCGVPE' % Subst(Vwbs, 1, 15) @= 'US201BTIMCCGVOH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'BS' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'BS' ,Vus);
endif;

##############	Bintrafusp Non-Shared ######
if ( Subst(Vwbs,1,15) @= 'US201BTOMEVAXPE' % Subst(Vwbs,1,15) @= 'US201BTOMEVAXOH'
% Subst(Vwbs,1,15) @= 'US201BTOMEVBXPE' % Subst(Vwbs,1,15) @= ' US201BTOMEVBXOH' 
% Subst(Vwbs,1,15) @= 'US201BTOMSUSXPE' % Subst(Vwbs,1,15) @= 'US201BTOMSUSXOH'
% Subst(Vwbs,1,15) @= 'US201BTOMEVSXPE' % Subst(Vwbs,1,15) @= 'US201BTOMEVSXOH' 
% Subst(Vwbs,1,15) @= 'US201BTOMVPDXPE' % Subst(Vwbs,1,15) @= 'US201BTOMVPDXOH'
% Subst(Vwbs,1,15) @= 'US201BTOMEVCXPE' % Subst(Vwbs,1,15) @= 'US201BTOMEVCXOH'
% Subst(Vwbs,1,15) @= 'US201BTOMCCGVPE' % Subst(Vwbs,1,15) @= 'US201BTOMCCGVOH' 
% Subst(Vwbs,1,15) @= 'US201BTOMCCEXPE' % Subst(Vwbs,1,15) @= 'US201BTOMCCEXOH'
% Subst(Vwbs,1,15) @= 'US201BTOMVPTXPE' % Subst(Vwbs,1,15) @= 'US201BTOMVPTXOH'
% Subst(Vwbs,1,15) @= 'US201BTOMCCIXPE' % Subst(Vwbs,1,15) @= 'US201BTOMCCIXOH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
endif;



##### Process and OPs  ####
IF (Subst(Vwbs,1,15) @=  'US201000MCCPOPE'  % Subst(Vwbs,1,15) @= 'US201000MCCPOOH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*VISS_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*VISS_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISS_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VISS_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISS_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISS_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISS_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISS_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISS_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISS_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
 Endif;

#### Global   ####
If (ATTRS('Account_Opex', VAcc, 'Field Status Group') @= 'COMI');
IF ( Vcc @= 'US20GBIOSI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,Vcc,Vacc,Vwbs,'E1',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,
		Vcc,Vacc, Vwbs,'E1',Vus);
Endif;
              #### IF ( Vcc @= 'US20GALLER' );
##### CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
##### '3110250000',Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
##### SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'98' ,Vus);
##### Endif;
               IF ( Vcc @= 'US20GMAXFE' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000',Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;
IF ( Vcc @= 'US20CMBX01');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20CMBX01_A8 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
               IF ( Vcc @= 'US20GMAXND' % Vcc @= 'US20GMBXND' % Vcc @= 'US20GMDXND'
                       % Vcc @= 'US20GMOXND');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000',Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A8',Vus);
Endif;
               IF ( Vcc @= 'US20GMAXAI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000',Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A2',Vus);
Endif;

               IF ( Vcc @= 'US20GMOTND');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000',Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',
		Vcc,Vacc, Vwbs,'D9',Vus);
Endif;

               IF ( Vcc @= 'US20GONC00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000',Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',
		Vcc,Vacc, Vwbs,'52',Vus);
Endif;

               IF ( Vcc @= 'US20GONEVO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000',Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',
		Vcc,Vacc, Vwbs,'V7',Vus);
Endif;

               IF ( Vcc @= 'US20GONCPD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000',Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',
		Vcc,Vacc, Vwbs,'V8',Vus);
Endif;

               IF ( Vcc @= 'US20REBILb');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000',Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',
		Vcc,Vacc, Vwbs,'A4',Vus);
Endif;


	IF ( Vcc @= 'US20GMDIGI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMDIGI_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMDIGI_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMDIGI_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMDIGI_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
Endif;

	IF ( Vcc @= 'US20GMSTRG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMSTRG_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMSTRG_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMSTRG_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMSTRG_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
Endif;


	IF ( Vcc @= 'US20PM5200');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5200_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5200_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5200_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5200_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5200_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5200_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5200_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5200_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5200_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5200_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5200_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5200_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5200_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5200_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5200_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5200_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;

	IF ( Vcc @= 'US20PM5300');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5300_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5300_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5300_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5300_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5300_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5300_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5300_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5300_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5300_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5300_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5300_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5300_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5300_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5300_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5300_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5300_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;
	IF ( Vcc @= 'US20PM5400');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5400_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5400_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5400_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5400_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5400_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5400_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5400_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5400_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5400_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5400_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5400_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5400_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5400_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5400_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5400_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5400_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;

IF ( Vcc @= 'US20PM5600');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5600_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5600_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5600_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5600_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5600_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5600_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5600_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5600_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5600_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5600_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5600_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5600_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5600_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5600_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5600_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5600_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20PM5700');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5700_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5700_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5700_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5700_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5700_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5700_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5700_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5700_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5700_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5700_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5700_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5700_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5700_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5700_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5700_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5700_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20PM5800');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5800_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5800_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5800_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5800_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5800_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5800_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5800_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5800_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5800_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5800_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5800_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5800_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5800_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5800_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5800_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5800_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;


IF ( Vcc @= 'US20PM5900');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5900_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5900_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5900_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5900_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5900_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5900_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5900_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5900_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5900_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5900_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5900_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5900_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5900_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5900_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5900_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5900_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20GMEDDE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20GMEDDE_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,  Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMEDDE_A4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMEDDE_A5 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMEDDE_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
endif;

	IF ( Vcc @= 'US20GFCE00' % Vcc @= 'US20GFMA00' % Vcc @= 'US20GMBI00'
		% Vcc @= 'US20GMCE00' % Vcc @= 'US20GMGO00'  % Vcc @= 'US20GMEXC0');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMCE00_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,	   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20GMCE00_59 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,	   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20GMCE00_77 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20GMCE00_B4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,	   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20GMCE00_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20GMCE00_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,	   Vcc,Vacc, Vwbs,'97' ,Vus)+(Value*VUS20GMCE00_97)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'97' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110250000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20GMCE00_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20GMCE00_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20GMCE00_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,	   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20GMCE00_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,	   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20GMCE00_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMCE00_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMCE00_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMCE00_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
IF ( Vcc @= 'US20GGOVT0' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GGOVT0_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GGOVT0_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GGOVT0_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GGOVT0_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20GGOVT0_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20GGOVT0_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20GGOVT0_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20GGOVT0_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20GGOVT0_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20GGOVT0_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20GGOVT0_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'97' ,Vus)+(Value*VUS20GGOVT0_97)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'97' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20GGOVT0_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20GGOVT0_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
Endif;
### GOV

if (SubSt(Vwbs, 1, 13) @= 'US201000AESGV');
	if(SubSt(Vwbs, 14, 4) @= 'PEAP');
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V8' ,Vus);
#				CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
#		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9' ,Vus);
	else;
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISS_A8)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISS_A4)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISS_A5)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISS_FD)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISS_V7)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISS_V8)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISS_V9)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
                                CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VISS_W0)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
                                CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VISS_A2)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISS_98)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISS_E4)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD###
                                CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VISS_B3)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
### Maureen C. - 01-20-2023 - Added allocations for EVO and XEV###
                              CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VISS_EV)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
                                CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VISS_XE)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
	Endif;
Endif;
endif;


############	3110300000 - Sales Promotion
############	3110310000 - Promotion material
##############	Support   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VSP_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VSP_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VSP_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VSP_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VSP_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VSP_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VSP_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'W0' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VSP_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VSP_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VSP_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'E4' ,Vus);

### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VSP_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'B3' ,Vus);

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VSP_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'EV' ,Vus);

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VSP_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'XE' ,Vus);

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000'
,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VSP_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'V8' ,Vus);
Endif;

##############	Rebif   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 RE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Cladribine   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;

##############	Evobrutinib ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

##############	Novantrone   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 NO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	AIID   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 AI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A2', Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A2' ,Vus);
Endif;
##############                Fertility ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 RH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;
##############                Fertility Technology ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 FT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;

##############	Egrifta   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 EG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############	Xalkori   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 XA');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'FD' ,Vus);
Endif;

##############	Evofosfamide TH302   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 EV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'V7' ,Vus);
Endif;

##############	Anti-PD-L1   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 AP');
	
	if(SCAN('PI', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
                elseif(SCAN('PI', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	elseif(SCAN('PO', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;
Endif;

##############	Serostim   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 SE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Saizen   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 SZ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############                Allegropharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

##############                Tepotinib   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 TT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;

##############                Xevinapant ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000',Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

##############	Bintrafusp   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '31 BT');
	
	if(SCAN('TI', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus);
	elseif(SCAN('TO', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110310000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
	endif;


Endif;


############	3110320000 - Advertising
##############	Support   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VSP_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VSP_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VSP_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VSP_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VSP_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VSP_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VSP_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'W0' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VSP_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VSP_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VSP_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VSP_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VSP_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VSP_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000'
,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VSP_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3210320000',Vcc,Vacc, Vwbs,'V8' ,Vus);
Endif;



##############	Rebif   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 RE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Cladribine   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;
##############	Evobrutinib ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

##############	Novantrone   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 NO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	AIID   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 AI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
Endif;
##############                Fertility ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 RH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;

##############                Fertility Technology ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 FT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;

##############	Egrifta   ##############
If ( ATTRS('WBS', Vwbs, 'RPP BF') @= '32 EG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############	Xalkori   ##############
If ( ATTRS('WBS', Vwbs, 'RPP BF') @= '32 XA');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
Endif;
##############	Evofosfamide TH302   ##############
If ( ATTRS('WBS', Vwbs, 'RPP BF') @= '32 EV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
Endif;
##############	Anti-PD-L1   ##############
If ( ATTRS('WBS', Vwbs, 'RPP BF') @= '32 AP');
	if(SCAN('PI', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
                elseif(SCAN('PI', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	elseif(SCAN('PO', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;
Endif;

##############	Serostim   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 SE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

#############                Saizen   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 SZ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Zorbtive   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 ZO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
#############                Allegropharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

##############	Tepotinib   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 TT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;

##############	Xevinapant ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '32 XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

##############	Bintrafusp   ##############
If ( ATTRS('WBS', Vwbs, 'RPP BF') @= '32 BT');
	if(SCAN('TI', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus);
	elseif(SCAN('TO', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
	endif;



Endif;


#### Global   ####
If (ATTRS('Account_Opex', VAcc, 'Field Status Text') @= 'AUS20-PR32');

	IF ( Vcc @= 'US20GFCE00' % Vcc @= 'US20GFMA00' % Vcc @= 'US20GMBI00'
		% Vcc @= 'US20GMCE00' % Vcc @= 'US20GMGO00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMCE00_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,	   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20GMCE00_59 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,	   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20GMCE00_77 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20GMCE00_B4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,	   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20GMCE00_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20GMCE00_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,	   Vcc,Vacc, Vwbs,'97' ,Vus)+(Value*VUS20GMCE00_97)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'97' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20GMCE00_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20GMCE00_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20GMCE00_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,	   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20GMCE00_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,	   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20GMCE00_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMCE00_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMCE00_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMCE00_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
	IF ( Vcc @= 'US20PM5200');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5200_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5200_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5200_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5200_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5200_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5200_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5200_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5200_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5200_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5200_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5200_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5200_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5200_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5200_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5200_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5200_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;
	IF ( Vcc @= 'US20PM5300');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5300_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5300_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5300_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5300_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5300_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5300_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5300_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5300_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5300_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5300_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5300_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5300_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5300_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5300_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5300_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5300_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;
	IF ( Vcc @= 'US20PM5400');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5400_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5400_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5400_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5400_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5400_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5400_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5400_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5400_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5400_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5400_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5400_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5400_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5400_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5400_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5400_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5400_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;

IF ( Vcc @= 'US20PM5600');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5600_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5600_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5600_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5600_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5600_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5600_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5600_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5600_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5600_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5600_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5600_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5600_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5600_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5600_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5600_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5600_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20PM5700');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5700_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5700_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5700_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5700_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5700_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5700_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5700_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5700_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5700_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5700_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5700_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5700_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5700_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5700_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5700_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5700_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20PM5800');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5800_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5800_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5800_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5800_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5800_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5800_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5800_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5800_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5800_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5800_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5800_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5800_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5800_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5800_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5800_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5800_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20PM5900');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5900_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5900_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5900_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5900_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5900_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5900_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5900_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5900_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5900_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5900_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5900_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5900_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5900_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5900_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5900_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5900_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;


IF ( Vcc @= 'US20GMEDDE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20GMEDDE_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMEDDE_A4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMEDDE_A5 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMEDDE_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
endif;

               IF ( Vcc @= 'US20GONC00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000',Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000',
		Vcc,Vacc, Vwbs,'52',Vus);
Endif;

IF ( Vcc @= 'US20REBILb');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000',Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000',
Vcc,Vacc, Vwbs,'A4',Vus);
Endif;

IF ( Vcc @= 'US20GMOTND');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000',Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000',
Vcc,Vacc, Vwbs,'D9',Vus);
Endif;

IF ( Vcc @= 'US20GONCPD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000',Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000',
Vcc,Vacc, Vwbs,'W0',Vus);
Endif;

IF ( Vcc @= 'US20GONEVO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000',Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000',
Vcc,Vacc, Vwbs,'V7',Vus);
Endif;




               IF ( Vcc @= 'US20GMAXND' % Vcc @= 'US20GMBXND' % Vcc @= 'US20GMDXND'
                       % Vcc @= 'US20GMOXND' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000',Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000',
		Vcc,Vacc, Vwbs,'A8',Vus);
Endif;

IF ( Vcc @= 'US20GBIOSI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,Vcc,Vacc,Vwbs,'E1',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,
		Vcc,Vacc, Vwbs,'E1',Vus);
Endif;

               IF ( Vcc @= 'US20GMAXAI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000',Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000',
		Vcc,Vacc, Vwbs,'A2',Vus);
Endif;

IF ( Vcc @= 'US20GMAXFE' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
endif;
IF ( Vcc @= 'US20CMBX01');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110320000' ,  Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20CMBX01_A8 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;

IF ( Vcc @= 'US20GMDIGI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMDIGI_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMDIGI_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMDIGI_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMDIGI_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
Endif;

IF ( Vcc @= 'US20GMSTRG' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMSTRG_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMSTRG_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMSTRG_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMSTRG_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
Endif;

IF ( Vcc @= 'US20GGOVT0' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GGOVT0_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GGOVT0_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GGOVT0_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GGOVT0_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20GGOVT0_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20GGOVT0_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20GGOVT0_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20GGOVT0_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20GGOVT0_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20GGOVT0_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20GGOVT0_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'97' ,Vus)+(Value*VUS20GGOVT0_97)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'97' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20GGOVT0_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20GGOVT0_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
Endif;
### GOV

if (SubSt(Vwbs, 1, 13) @= 'US201000AESGV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VSP_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VSP_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VSP_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VSP_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VSP_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VSP_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VSP_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VSP_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VSP_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VSP_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VSP_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VSP_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VSP_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110320000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
Endif;
Endif;




############	3110330000 - Marketing samples
##############	Rebif   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 RE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
####Maureen C.  - Added 09-08-2019
##############	Cladribine   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;

##############	Evobrutinib ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

##############                Fertility ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 RH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;

##############                Fertility Technology ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 FT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;

##############	Egrifta   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 EG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############	Serostim   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 SE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Saizen   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 SZ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############                Allegropharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

##############	Tepotinib   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 TT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;

##############	Xevinapant ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '33 XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

#### Global   ####
If (ATTRS('Account_Opex', VAcc, 'Field Status Text') @= 'AUS20-PR33');

	IF ( Vcc @= 'US20GFCE00' % Vcc @= 'US20GFMA00' % Vcc @= 'US20GMBI00'
		% Vcc @= 'US20GMCE00' % Vcc @= 'US20GMGO00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMCE00_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,	   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20GMCE00_59 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,	   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20GMCE00_77 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20GMCE00_B4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,	   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20GMCE00_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20GMCE00_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,	   Vcc,Vacc, Vwbs,'97' ,Vus)+(Value*VUS20GMCE00_97)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'97' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20GMCE00_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20GMCE00_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20GMCE00_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,	   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20GMCE00_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,	   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20GMCE00_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMCE00_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMCE00_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMCE00_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
	IF ( Vcc @= 'US20PM5200');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5200_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5200_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5200_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5200_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5200_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5200_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5200_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5200_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5200_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5200_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5200_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5200_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5200_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5200_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5200_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5200_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;
	IF ( Vcc @= 'US20PM5300');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5300_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5300_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5300_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5300_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5300_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5300_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5300_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5300_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5300_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5300_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5300_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5300_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5300_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5300_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5300_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5300_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;
	IF ( Vcc @= 'US20PM5400');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5400_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5400_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5400_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5400_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5400_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5400_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5400_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5400_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5400_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5400_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5400_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5400_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5400_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5400_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5400_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5400_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;

IF ( Vcc @= 'US20PM5600');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5600_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5600_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5600_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5600_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5600_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5600_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5600_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5600_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5600_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5600_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5600_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5600_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5600_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5600_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5600_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5600_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;
IF ( Vcc @= 'US20PM5700');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5700_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5700_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5700_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5700_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5700_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5700_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5700_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5700_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5700_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5700_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5700_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5700_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5700_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5700_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5700_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5700_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;
IF ( Vcc @= 'US20PM5800');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5800_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5800_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5800_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5800_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5800_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5800_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5800_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5800_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5800_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5800_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5800_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5800_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5800_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5800_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5800_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5800_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20PM5900');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5900_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5900_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5900_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5900_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5900_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5900_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5900_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5900_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5900_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5900_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5900_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5900_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5900_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5900_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5900_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5900_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20GMEDDE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20GMEDDE_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMEDDE_A4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMEDDE_A5 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMEDDE_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
endif;

IF ( Vcc @= 'US20GBIOSI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,Vcc,Vacc,Vwbs,'E1',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,
		Vcc,Vacc, Vwbs,'E1',Vus);
Endif;

               IF ( Vcc @= 'US20GONC00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000',Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000',
		Vcc,Vacc, Vwbs,'52',Vus);
Endif;

               IF ( Vcc @= 'US20REBILb');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000',Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000',
		Vcc,Vacc, Vwbs,'A4',Vus);
Endif;

               IF ( Vcc @= 'US20GMOTND');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000',Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000',
		Vcc,Vacc, Vwbs,'D9',Vus);
Endif;

               IF ( Vcc @= 'US20GONCPD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000',Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000',
		Vcc,Vacc, Vwbs,'W0',Vus);
Endif;


               IF ( Vcc @= 'US20GONEVO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000',Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000',
		Vcc,Vacc, Vwbs,'V7',Vus);
Endif;


               IF ( Vcc @= 'US20GMAXND' % Vcc @= 'US20GMBXND' % Vcc @= 'US20GMDXND'
                       % Vcc @= 'US20GMOXND' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000',Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000',
		Vcc,Vacc, Vwbs,'A8',Vus);
Endif;

               IF ( Vcc @= 'US20GMAXAI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000',Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000',
		Vcc,Vacc, Vwbs,'A2',Vus);
Endif;

IF ( Vcc @= 'US20GMAXFE' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
endif;
IF ( Vcc @= 'US20CMBX01');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110330000' ,  Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20CMBX01_A8 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;

IF ( Vcc @= 'US20GMDIGI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMDIGI_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMDIGI_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMDIGI_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMDIGI_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
Endif;

IF ( Vcc @= 'US20GMSTRG' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMSTRG_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMSTRG_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMSTRG_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMSTRG_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
Endif;

IF ( Vcc @= 'US20GGOVT0' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GGOVT0_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GGOVT0_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GGOVT0_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GGOVT0_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20GGOVT0_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20GGOVT0_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20GGOVT0_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20GGOVT0_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20GGOVT0_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20GGOVT0_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20GGOVT0_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'97' ,Vus)+(Value*VUS20GGOVT0_97)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'97' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20GGOVT0_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20GGOVT0_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
Endif;
### GOV

if (SubSt(Vwbs, 1, 13) @= 'US201000AESGV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VSP_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VSP_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VSP_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VSP_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VSP_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VSP_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VSP_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VSP_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VSP_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VSP_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VSP_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VSP_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VSP_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110330000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
Endif;
Endif;

############	3110340000 - Congresses and events
##############	Support   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VSP_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VSP_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VSP_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VSP_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VSP_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VSP_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VSP_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VSP_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VSP_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VSP_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD ###
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VSP_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VSP_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VSP_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VSP_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
Endif;


##############	Rebif   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 RE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Cladribine   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;

##############	Evobrutinib ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

##############	Allegropharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

##############	Novantrone   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 NO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;

##############	AIID   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 AI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
Endif;
##############                Fertility ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 RH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;
##############                Fertility Technology ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 FT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;

##############                Xalkori ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 XA');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
Endif;
##############                Evofosfamide TH302 ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 EV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
Endif;

##############                Anti-PD-L1 ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 AP');
	if(SCAN('PI', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
                elseif(SCAN('PI', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	elseif(SCAN('PO', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;
Endif;

##############	Egrifta   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 EG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############	Serostim   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 SE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Saizen   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 SZ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Oncology   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 ON');

IF ( Vwbs @= ' US201MEDOFDPR0501' % Vwbs @= ' US201MEDOONPR0300 ' % Vwbs @= ' US201MEDOONPR0501' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;

IF ( Subst(Vwbs,1,11) @= 'US201ONOMFR' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;
               IF ( Subst(Vwbs,1,11) @= 'US201ONOMST' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D7' ,Vus);
Endif;
               IF ( Subst(Vwbs,1,11) @= 'US201ONOMCI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D8' ,Vus);
Endif;
Endif;

##############	Tepotinib   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 TT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;

##############	Xevinapant ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

##############                Bintrafusp ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '34 BT');
	if(SCAN('TI', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus);
	elseif(SCAN('TO', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
	endif;

Endif;



#### Global   ####
If (ATTRS('Account_Opex', VAcc, 'Field Status Text') @= 'AUS20-PR34');

IF ( Vcc @= 'US20GFCE00' % Vcc @= 'US20GFMA00' % Vcc @= 'US20GMBI00'
		% Vcc @= 'US20GMCE00' % Vcc @= 'US20GMGO00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMCE00_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,	   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20GMCE00_59 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,	   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20GMCE00_77 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20GMCE00_B4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,	   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20GMCE00_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20GMCE00_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,	   Vcc,Vacc, Vwbs,'97' ,Vus)+(Value*VUS20GMCE00_97)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'97' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20GMCE00_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20GMCE00_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20GMCE00_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,	   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20GMCE00_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,	   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20GMCE00_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMCE00_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMCE00_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMCE00_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
	IF ( Vcc @= 'US20PM5200');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5200_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5200_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5200_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5200_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5200_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5200_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5200_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5200_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5200_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5200_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5200_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5200_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5200_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5200_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5200_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5200_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;
	IF ( Vcc @= 'US20PM5300');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5300_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5300_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5300_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5300_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5300_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5300_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5300_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5300_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5300_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5300_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5300_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5300_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5300_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5300_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5300_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5300_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;
	IF ( Vcc @= 'US20PM5400');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5400_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5400_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5400_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5400_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5400_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5400_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5400_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5400_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5400_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5400_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5400_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5400_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5400_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5400_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5400_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5400_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;

IF ( Vcc @= 'US20PM5600');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5600_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5600_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5600_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5600_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5600_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5600_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5600_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5600_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5600_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5600_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5600_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5600_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5600_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5600_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5600_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5600_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;
IF ( Vcc @= 'US20PM5700');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5700_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5700_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5700_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5700_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5700_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5700_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5700_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5700_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5700_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5700_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5700_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5700_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5700_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5700_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5700_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5700_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;
IF ( Vcc @= 'US20PM5800');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5800_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5800_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5800_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5800_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5800_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5800_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5800_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5800_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5800_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5800_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5800_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5800_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5800_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5800_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5800_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5800_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20PM5900');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5900_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5900_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5900_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5900_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5900_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5900_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5900_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5900_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5900_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5900_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5900_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5900_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5900_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5900_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5900_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5900_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20GMEDDE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20GMEDDE_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMEDDE_A4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMEDDE_A5 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMEDDE_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
endif;

IF ( Vcc @= 'US20GBIOSI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,Vcc,Vacc,Vwbs,'E1',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,
		Vcc,Vacc, Vwbs,'E1',Vus);
Endif;

               IF ( Vcc @= 'US20GONC00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000',Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000',
		Vcc,Vacc, Vwbs,'52',Vus);
Endif;

               IF ( Vcc @= 'US20REBILb');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000',Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000',
		Vcc,Vacc, Vwbs,'A4',Vus);
Endif;

               IF ( Vcc @= 'US20GMOTND');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000',Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000',
		Vcc,Vacc, Vwbs,'D9',Vus);
Endif;


               IF ( Vcc @= 'US20GONCPD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000',Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000',
		Vcc,Vacc, Vwbs,'W0',Vus);
Endif;

               IF ( Vcc @= 'US20GONEVO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000',Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000',
		Vcc,Vacc, Vwbs,'V7',Vus);
Endif;


               IF ( Vcc @= 'US20GMAXND' % Vcc @= 'US20GMBXND' % Vcc @= 'US20GMDXND'
                       % Vcc @= 'US20GMOXND' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000',Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000',
		Vcc,Vacc, Vwbs,'A8',Vus);
Endif;

               IF ( Vcc @= 'US20GMAXAI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000',Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000',
		Vcc,Vacc, Vwbs,'A2',Vus);
Endif;

IF ( Vcc @= 'US20GMAXFE' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
endif;
IF ( Vcc @= 'US20CMBX01');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110340000' ,  Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20CMBX01_A8 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;

IF ( Vcc @= 'US20GMDIGI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMDIGI_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMDIGI_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMDIGI_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMDIGI_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
Endif;

IF ( Vcc @= 'US20GMSTRG' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMSTRG_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMSTRG_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMSTRG_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMSTRG_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
Endif;

IF ( Vcc @= 'US20GGOVT0' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GGOVT0_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GGOVT0_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GGOVT0_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GGOVT0_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20GGOVT0_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20GGOVT0_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20GGOVT0_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20GGOVT0_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20GGOVT0_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20GGOVT0_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20GGOVT0_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'97' ,Vus)+(Value*VUS20GGOVT0_97)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'97' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20GGOVT0_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20GGOVT0_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
Endif;
### GOV

if(SubSt(Vwbs, 1, 13) @= 'US201000AESGV' & ATTRS('WBS', Vwbs, 'RPP BF') @<> '34 00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VSP_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VSP_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VSP_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VSP_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VSP_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VSP_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VSP_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VSP_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VSP_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD ###
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VSP_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
### Maureen C. - 01-20-2023 - Added allocations for EVO and XEV ###
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VSP_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VSP_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VSP_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110340000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
Endif;
Endif;

############	3110350000 - Other marketing & selling costs

##############	Support   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 00' & ATTRS('Account_Opex', VAcc, 'Field Status Text') @<> 'AUS20-PR34');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VSP_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VSP_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VSP_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VSP_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VSP_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VSP_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VSP_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VSP_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VSP_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VSP_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD ###
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VSP_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VSP_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VSP_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VSP_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
Endif;

##############	Business Development   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 BD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VSPPFD_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VSPPFD_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VSPPFD_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VSPPFD_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;

###### CCO Administration - Program ########
### Maureen C. 09-09-2019 - Added CCO Administration Program Allocation


If ( ATTRS('WBS', Vwbs, 'RPP BF') @= '35 CC'  & Vwbs @<> 'US201000MCCBXPRAJ');
###if (SubSt(Vwbs, 16, 2) @<> 'AP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VSP_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VSP_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VSP_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VSP_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VSP_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VSP_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VSP_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VSP_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VSP_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VSP_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VSP_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VSP_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VSP_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VSP_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
Endif;


If (Vwbs @= 'US201000MCCBXPRAJ');
### if (SubSt(Vwbs, 16, 2) @<> 'AP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VISSCCO_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VISSCCO_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VISSCCO_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VISSCCO_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VISSCCO_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VISSCCO_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VISSCCO_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VISSCCO_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VISSCCO_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VISSCCO_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VISSCCO_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VISSCCO_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VISSCCO_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VISSCCO_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;


##############	Rebif   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 RE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Cladribine   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;

##############	Evobrutinib ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

##############	Novantrone   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 NO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Allegropharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

#############	AIID   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 AI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
Endif;
##############                Fertility ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 RH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;

##############                Fertility Technology ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 FT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;

##############	Egrifta   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 EG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############	Serostim   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 SE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Saizen   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 SZ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Zorbtive   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 ZO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############                Xalkori   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 XA');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
Endif;

##############                Evofosfamide TH302   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 EV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
Endif;

##############                Anti-PD-L1   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 AP');
	if(SCAN('PI', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
                elseif(SCAN('PI', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
	elseif(SCAN('PO', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;

Endif;


##############                Oncology   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 ON');
IF (Vwbs @= 'US201MEDOONPR0700' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;

IF ( Subst(Vwbs,1,11) @= 'US201ONOMFR' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;
IF ( Subst(Vwbs,1,11) @= 'US201ONOMSU' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;

               IF ( Subst(Vwbs,1,11) @= 'US201ONOMST' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D7' ,Vus);
Endif;
               IF ( Subst(Vwbs,1,11) @= 'US201ONOMCI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D8' ,Vus);
Endif;
Endif;


##############	Tepotinib   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 TT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;


##############                Xevinapant ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

##############                Bintrafusp  ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '35 BT');
	if(SCAN('TI', Vwbs) > 0 );
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus);
	elseif(SCAN('TO', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
	endif;


Endif;


#### Global   ####
If (ATTRS('Account_Opex', VAcc, 'Field Status Group') @= 'COMB' & ATTRS('WBS', Vwbs, 'RPP BF') @<> '35 00');
IF ( Vcc @= 'US20GBIOSI' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,Vcc,Vacc,	Vwbs,'E1',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000',
		Vcc,Vacc, Vwbs,'E1',Vus);
Endif;
               IF ( Vcc @= 'US20GMAXFE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000',Vcc,Vacc,	Vwbs,'A4',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000',
		Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;
               IF ( Vcc @= 'US20GMAXND' % Vcc @= 'US20GMBXND' % Vcc @= 'US20GMDXND'
                       % Vcc @= 'US20GMOXND' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000',Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000',
		Vcc,Vacc, Vwbs,'A8',Vus);
Endif;
               IF ( Vcc @= 'US20GMAXAI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000',Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000',
		Vcc,Vacc, Vwbs,'A2',Vus);
Endif;
	IF ( Vcc @= 'US20PM5200');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5200_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5200_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5200_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5200_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5200_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5200_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5200_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5200_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5200_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5200_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5200_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5200_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5200_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5200_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5200_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5200_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;
	IF ( Vcc @= 'US20PM5300');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5300_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5300_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5300_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5300_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5300_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5300_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5300_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5300_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5300_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5300_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5300_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5300_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5300_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5300_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5300_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5300_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;
	IF ( Vcc @= 'US20PM5400');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5400_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5400_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5400_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5400_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5400_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5400_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5400_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5400_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5400_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5400_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5400_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5400_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5400_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5400_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5400_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5400_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);
Endif;

IF ( Vcc @= 'US20PM5600');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5600_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5600_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5600_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5600_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5600_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5600_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5600_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5600_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5600_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5600_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5600_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5600_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5600_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5600_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5600_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5600_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20PM5700');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5700_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5700_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5700_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5700_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5700_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5700_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5700_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5700_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5700_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5700_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5700_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5700_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5700_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5700_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5700_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5700_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20PM5800');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5800_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5800_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5800_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5800_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5800_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5800_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5800_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5800_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5800_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5800_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5800_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5800_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5800_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5800_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5800_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5800_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

IF ( Vcc @= 'US20PM5900');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20PM5900_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20PM5900_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20PM5900_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20PM5900_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20PM5900_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8'  ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VUS20PM5900_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20PM5900_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20PM5900_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20PM5900_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20PM5900_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20PM5900_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20PM5900_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20PM5900_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20PM5900_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20PM5900_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*VUS20PM5900_D9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D9' ,Vus);

Endif;

               IF ( Vcc @= 'US20GONC00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000',Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000',
		Vcc,Vacc, Vwbs,'52',Vus);
Endif;

IF ( Vcc @= 'US20REBILb');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000',Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000',
		Vcc,Vacc, Vwbs,'A4',Vus);
Endif;

IF ( Vcc @= 'US20GMOTND');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000',Vcc,Vacc, Vwbs,'D9' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000',
		Vcc,Vacc, Vwbs,'D9',Vus);
Endif;

IF ( Vcc @= 'US20GONCPD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000',Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000',
		Vcc,Vacc, Vwbs,'W0',Vus);
Endif;

IF ( Vcc @= 'US20GONEVO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000',Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000',
		Vcc,Vacc, Vwbs,'V7',Vus);
Endif;

IF ( Vcc @= 'US20GMDIGI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMDIGI_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMDIGI_A4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMDIGI_A5 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMDIGI_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
endif;

IF ( Vcc @= 'US20GMSTRG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMSTRG_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMSTRG_A4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMSTRG_A5 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMSTRG_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
endif;

IF ( Vcc @= 'US20GMEDDE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20GMEDDE_A2 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMEDDE_A4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMEDDE_A5 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMEDDE_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
endif;

IF ( Vcc @= 'US20CMBX01');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3110350000' ,  Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20CMBX01_A8 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;



IF ( Vcc @= 'US20GFCE00' % Vcc @= 'US20GFMA00' % Vcc @= 'US20GMBI00'
		% Vcc @= 'US20GMCE00' % Vcc @= 'US20GMGO00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,	   Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GMCE00_52 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,   Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20GMCE00_59 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,	   Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20GMCE00_77 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,	   Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20GMCE00_B4 )),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,	   Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20GMCE00_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,	   Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20GMCE00_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,   Vcc,Vacc, Vwbs,'97' ,Vus)+(Value*VUS20GMCE00_97)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'97' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,   Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20GMCE00_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,   Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20GMCE00_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,	   Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20GMCE00_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,   Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20GMCE00_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,   Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VUS20GMCE00_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,   Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GMCE00_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,   Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GMCE00_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,	   Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GMCE00_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
IF ( Vcc @= 'US20GGOVT0' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20GGOVT0_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20GGOVT0_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20GGOVT0_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VUS20GGOVT0_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VUS20GGOVT0_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B4' ,Vus)+(Value*VUS20GGOVT0_B4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B4' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B5' ,Vus)+(Value*VUS20GGOVT0_B5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B5' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B6' ,Vus)+(Value*VUS20GGOVT0_B6)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B6' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B7' ,Vus)+(Value*VUS20GGOVT0_B7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B7' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B8' ,Vus)+(Value*VUS20GGOVT0_B8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B8' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VUS20GGOVT0_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'97' ,Vus)+(Value*VUS20GGOVT0_97)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'97' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'77' ,Vus)+(Value*VUS20GGOVT0_77)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'77' ,Vus);
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D1' ,Vus)+(Value*VUS20GGOVT0_D1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'D1' ,Vus);
Endif;
### GOV

if (SubSt(Vwbs, 1, 13) @= 'US201000AESGV' & (Vwbs @<> 'US201000AESGVPR00' & Vwbs @<> 'US201000AESGVPR01' & Vwbs @<> 'US201000AESGVPR02'& Vwbs @<> 'US201000AESGVPR71'));
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VSP_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VSP_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VSP_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VSP_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VSP_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VSP_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VSP_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VSP_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VSP_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VSP_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
### Maureen C. - 01-20-2023 - Added allocations for EVO and XEV ###
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VSP_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VSP_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VSP_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110350000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
Endif;
Endif;


############	3110360000 - IC income sales promotion
if ( Vacc @= '13320100');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110360000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*V3110360000_A2)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110360000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110360000' ,Vcc,Vacc, Vwbs, '59',Vus)+(Value*V3110360000_59)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110360000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;


############	3110550000 – Medical activities (non-R&D)
	############	3110551000 – Medical education

### MarkF - 03-21-2018 -
###	Everything that contains US201MEDOPIPR  must to be allocated 100% in BF-W0 instead of V8.
###	Everything that contains US201MEDOPIPE or US201MEDOPIOH  must to continue in V8.

##############	Rebif   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 RE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Cladribine   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;
##############	Evobrutinib ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

##############	Novantrone   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 NO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Allergopharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

#############	AIID   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 AI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
Endif;
##############                Fertility ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 RH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;

##############                Fertility Technology ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 FT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;

##############	Egrifta   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 EG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############	Serostim   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 SE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Saizen   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 SZ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Zorbtive   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 ZO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############                Xalkori   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 XA');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
Endif;

##############                Evofosfamide TH302   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 EV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
Endif;

##############                Anti-PD-L1   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 AP');
	if(SCAN('PI', Vwbs) > 0 );
		if(SCAN('MEDOPIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
		else;
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
		endif;
	elseif(SCAN('PD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;
Endif;


##############                Oncology   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 ON');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;

##############	Tepotinib   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 TT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;

##############	Xevinapant ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

##############                Bintrafusp   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '51 BT');
	if(SCAN('BI', Vwbs) > 0 );
		if(SCAN('MEDOBIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus);
		else;
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'BS' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'BS' ,Vus);
		endif;
	elseif(SCAN('BD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110551000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
	endif;

Endif;


############	3110552000 – Medical donations
##############	Rebif   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 RE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Cladribine   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;

##############	Evobrutinib ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

##############	Novantrone   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 NO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Allergopharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

#############	AIID   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 AI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
Endif;
##############                Fertility ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 RH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;

##############                Fertility Technology ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 FT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;

##############	Egrifta   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 EG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############	Serostim   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 SE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Saizen   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 SZ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Zorbtive   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 ZO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############                Xalkori   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 XA');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
Endif;

##############                Evofosfamide TH302   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 EV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
Endif;

### MarkF - 03-21-2018 -
###	Everything that contains US201MEDOPIPR  must to be allocated 100% in BF-W0 instead of V8.
###	Everything that contains US201MEDOPIPE or US201MEDOPIOH  must to continue in V8.	
##############                Anti-PD-L1   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 AP');
	if(SCAN('PI', Vwbs) > 0 );
		if(SCAN('MEDOPIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
		else;
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
		endif;
	elseif(SCAN('PD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;
Endif;

##############                Oncology   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 ON');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;

##############	Tepotinib   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 TT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;

##############	Xevinapant ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

##############                Bintrafusp  ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '52 BT');
	if(SCAN('BI', Vwbs) > 0 );
		if(SCAN('MEDOBIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus);
		else;
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'BS' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'BS' ,Vus);
		endif;
	elseif(SCAN('BD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110552000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
	endif;
Endif;


############	3110553000 – Medical consultants
##############	Rebif   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 RE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Cladribine   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;

##############	Evobrutinib ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

##############	Novantrone   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 NO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Allergopharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

#############	AIID   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 AI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
Endif;
##############                Fertility ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 RH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;

##############                Fertility Technology ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 FT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;

##############	Egrifta   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 EG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############	Serostim   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 SE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Saizen   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 SZ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Zorbtive   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 ZO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############                Xalkori   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 XA');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
Endif;

##############                Evofosfamide TH302   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 EV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
Endif;

### MarkF - 03-21-2018 -
###	Everything that contains US201MEDOPIPR  must to be allocated 100% in BF-W0 instead of V8.
###	Everything that contains US201MEDOPIPE or US201MEDOPIOH  must to continue in V8.
##############                Anti-PD-L1   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 AP');
	if(SCAN('PI', Vwbs) > 0 );
		if(SCAN('MEDOPIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
		else;
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
		endif;
	elseif(SCAN('PD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;
Endif;

##############                Oncology   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 ON');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;

##############	Tepotinib   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 TT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;

##############	Xevinapant ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

##############                Bintrafusp   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '53 BT');
	if(SCAN('PI', Vwbs) > 0 );
		if(SCAN('MEDOBIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus);
		else;
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'BS' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'BS' ,Vus);
		endif;
	elseif(SCAN('BD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110553000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
	endif;
Endif;


############	3110554000 – Other Medical non-R&D
##############	Rebif   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 RE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Cladribine   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;

##############	Evobrutinib ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

##############	Novantrone   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 NO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Allergopharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

#############	AIID   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 AI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
Endif;
##############                Fertility ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 RH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;

##############                Fertility Technology ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 FT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;

##############	Egrifta   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 EG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############	Serostim   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 SE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Saizen   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 SZ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
##############                Zorbtive   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 ZO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############                Xalkori   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 XA');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
Endif;

##############                Evofosfamide TH302   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 EV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
Endif;

### MarkF - 03-21-2018 -
###	Everything that contains US201MEDOPIPR  must to be allocated 100% in BF-W0 instead of V8.
###	Everything that contains US201MEDOPIPE or US201MEDOPIOH  must to continue in V8.
##############                Anti-PD-L1   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 AP');
	if(SCAN('PI', Vwbs) > 0 );
		if(SCAN('MEDOPIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
		else;
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
		endif;
	elseif(SCAN('PD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;
Endif;

##############                Oncology   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 ON');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;

##############	Tepotinib   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 TT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;

##############	Xevinapant ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

##############                Bintrafusp  ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '54 BT');
	if(SCAN('PI', Vwbs) > 0 );
		if(SCAN('MEDOBIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus);
		else;
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'BS' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'BS' ,Vus);
		endif;
	elseif(SCAN('BD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110554000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
	endif;
Endif;


############	3110400000 - Logistics
############	3110410000 - Freight (outbound)
	##############	Supply Chain   ##############
if ( Vcc @= 'US20CL2000' & Vacc @= '16020000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110410000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLogi_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110410000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110410000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLogi_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110410000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110410000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLogi_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110410000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;
##############                Allegropharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '41 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110410000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110410000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;



############	3110420000 - Warehousing and dispatch

	##############	Supply Chain   ##############
if ( Vcc @= 'US20CL2000' & Vacc @= '16040000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110420000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLogi_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110420000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110420000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLogi_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110420000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110420000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLogi_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110420000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;
##############                Allegropharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '42 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110420000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110420000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;



############	3110430000 - Order processing and logistics / SCM

	##############	Supply Chain   ##############

if ( Vcc @= 'US20CL2000' & (Vacc @<> '16040000' & Vacc @<> '16020000'));
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110430000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLogi_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110430000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110430000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLogi_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110430000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110430000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLogi_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110430000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;

##############                Allegropharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '43 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110430000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110430000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

############	3110500000 - Special expenses of selling

  IF ( Vcc @= 'US20F03REG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20F03REG_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20F03REG_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20F03REG_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*VUS20F03REG_W0)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
Endif;
If ( Vcc @= 'US20F11MGF' % Vcc @= 'US20F34MGF' % Vcc @= 'US20F81MGF'  );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs, 'C2',Vus )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;


  IF ( Vcc @= 'US20CR6300');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VUS20CR6300_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VUS20CR6300_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VUS20CR6300_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;


####### Maureen - 09-06-2019 -- Added allocations for Regulatory Affairs FDA Fees

##############	Rebif   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 RE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Cladribine   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;

##############	Evobrutinib ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

##############	Novantrone   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 NO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
##############	Allergopharma   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 AL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

#############	AIID   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 AI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
Endif;
##############                Fertility ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 RH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;

##############                Fertility Technology ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 FT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;

##############	Egrifta   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 EG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############	Serostim   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 SE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############                Saizen   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 SZ');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############                Zorbtive   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 ZO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

##############                Xalkori   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 XA');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
Endif;

##############                Evofosfamide TH302   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 EV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
Endif;

#### Everything that contains US201MEDOPIPR  must to be allocated 100% in BF-W0 instead of V8
##############                Anti-PD-L1   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 AP');
	if(SCAN('PI', Vwbs) > 0 );

########		if(SCAN('MEDOPIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);
########		else;
########			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
########			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
########		endif;
	elseif(SCAN('PD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;

if(SCAN('PO', Vwbs) > 0 );

########		if(SCAN('MEDOPIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'W0' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'W0' ,Vus);

	elseif(SCAN('PD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	endif;
Endif;

##############                Oncology   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 ON');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
Endif;

##############	Tepotinib   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 TT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;

##############	Xevinapant ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

##############                Bintrafusp   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 BT');
	if(SCAN('BI', Vwbs) > 0 );

########		if(SCAN('MEDOBIPR', Vwbs) > 0 );
			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus)+(Value*1)),
			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'BQ' ,Vus);
########		else;
########			CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'BS' ,Vus)+(Value*1)),
########			'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'BS' ,Vus);
########		endif;
	elseif(SCAN('BD', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
	endif;
Endif;



############	3110900000 - Royalty expenses (Egrifta)
if (Vacc @= '15705000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110900000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3110900000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


############	3113200000 - Commission (Zentaris)
if (Vacc @= '15700090');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3113200000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3113200000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


############	3121000000 – Admin
############	3121010000 - Finance
if ( Vcc @= 'US20CA8200' % Vcc @= 'US20ESSA01' % Vcc @='US20GA8203' % Vcc @='US20GA8204'  );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121010000' ,Vcc,Vacc, Vwbs,'C2' ,Vus    )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121010000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;
if (Vcc @= 'US20CA8201');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121010000' ,Vcc,Vacc, Vwbs,'C6' ,Vus )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121010000' ,Vcc,Vacc, Vwbs,'C6' ,Vus);
Endif;
if (Vcc @= ' US20CA8202' & Vacc @<> '16110000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121010000' ,Vcc,Vacc, Vwbs,'C2' ,Vus )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121010000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;
if (Vcc @= ' US20CA8202' & Vacc @= '16110000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121010000' ,Vcc,Vacc, Vwbs,'C2' ,Vus )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121010000' ,Vcc,Vacc, Vwbs,'C6' ,Vus);
Endif;
if (Vcc @= 'US20CA8205');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121010000' ,Vcc,Vacc, Vwbs,'C6' ,Vus )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121010000' ,Vcc,Vacc, Vwbs,'C6' ,Vus);
Endif;

############	3121020000 - Human resources
	if ( Vcc @= 'US20CA8400'  % Vcc @= 'US20CA8405' % Vcc @= 'US20CA8401' % Vcc @= 'US20GAFLP0');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'C2' ,Vus   )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;
if ( Vcc @= 'US20CA8403' % Vcc @= 'US20CA8407');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'C6' ,Vus  )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'C6' ,Vus);
Endif;
if ( Vcc @= 'US20CA8402' % Vcc @= 'US20CA8404' % Vcc @= 'US20CA8406');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'C7' ,Vus  )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'C7' ,Vus);
Endif;
if ( Vcc @= 'US20REBIL7' % Vcc @= 'US20REBIL9' % Vcc @= 'US20REBILE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'A8' ,Vus )+(Value*VAdmin_A8)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VAdmin_A4)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VAdmin_A5)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VAdmin_59)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VAdmin_FD)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VAdmin_V7)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VAdmin_V8)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VAdmin_V9)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VAdmin_98)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VAdmin_E4)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121020000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
endif;

############	3121030000 - Legal
               if ( Vcc @= 'US20CA8500' %  Vcc @= 'US20CACO00'  );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'C2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;
if ( Vcc @= 'US20REBIL8' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VAdmin_A8)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VAdmin_A4)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VAdmin_A5)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VAdmin_59)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VAdmin_FD)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VAdmin_V7)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VAdmin_V8)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VAdmin_V9)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VAdmin_98)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VAdmin_E4)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
endif;
                            ############	Allegropharma ############

if ( Vwbs @= 'US201AL0AESLTPR01' % Vwbs @= 'US201AL0AESLTPR02');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121030000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

############	3121040000 - Communication and PR

if ( Vcc @= 'US20GACX00' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121040000' ,Vcc,Vacc, Vwbs,'C2' ,Vus)+(Value*1)), 'SPER_2013',Vyr,Vmon,Psce
A,Vver,Pcmg,Valt_A,VFun,VPar,'3121040000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;


############	3121050000 - Other administration costs
if ( SubSt(Vwbs, 1, 13) @= 'US201000AES80' );
	if( Subst(Vwbs, 14,4) @= 'PEAP');
		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
#				CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	else;
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VADMIN_A8)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VADMIN_A4)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VADMIN_A5)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VADMIN_59)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VADMIN_FD)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VADMIN_V7)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VADMIN_V8)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VADMIN_V9)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VADMIN_98)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VADMIN_E4)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
#### Maureen C.  - Added allocations for MAVENCLAD ###
                                CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VADMIN_B3)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
	
#### Maureen C.  - Added allocations for EVO and XEV ####
                                CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VADMIN_EV)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
                                CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VADMIN_XE)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
	endif;
Endif;

if ( SubSt(Vwbs, 1, 15) @= 'US201000AES83PR' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2' ,Vus)+(Value*1)), 
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;

IF ( Vcc @= 'US20GSRO00' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2' ,Vus  )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;

if ( SubSt(Vwbs, 1, 13) @= 'US201000AESCX'  );
	If(Subst(Vwbs, 14, 4) @= 'PEAP');
		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
#				CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
	else;
CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);

#		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VADMIN_A8)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
#		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VADMIN_A4)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
#		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VADMIN_A5)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
#		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VADMIN_59)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
#		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VADMIN_FD)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
#		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VADMIN_V7)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
#		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VADMIN_V8)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
#		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VADMIN_V9)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
#		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VADMIN_98)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
#		CellPutN ((CellGetN ('SPER_2013', Vyr, Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VADMIN_E4)),
#		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
	endif;
Endif;

############  3121060000 - Group Information Service
if ( Vcc @= 'US20CA8300'  % Vcc @= 'US20CA8301'  % Vcc @= 'US20CA8302'
% Vcc @= 'US20CA8303'  % Vcc @= 'US20CA8304' % Vcc @= 'US20CA8306' % Vcc @= 'US20CA8307'          % Vcc @= 'US20CA8308' % Vcc @= 'US20CA8309' % Vcc @= 'US20CA8310' % Vcc @= 'US20CA8320' % Vcc @= 'US20CA8330' % Vcc @= 'US20CADC00'  % Vcc @= 'US20CADC01');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121060000' ,Vcc,Vacc, Vwbs,'C2' ,Vus  )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121060000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;
if ( Vcc @= 'US20CA8305');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121060000' ,Vcc,Vacc, Vwbs,'C7' ,Vus )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121060000' ,Vcc,Vacc, Vwbs,'C7' ,Vus);
Endif;
if ( Vcc @= 'US20CA83AV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121060000' ,Vcc,Vacc, Vwbs,'V8' ,Vus )+(Value*VUS20CA83AV_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121060000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121060000' ,Vcc,Vacc, Vwbs,'V9' ,Vus )+(Value*VUS20CA83AV_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121060000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
Endif;
if ( Vcc @= 'US20REBILF');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121060000' ,Vcc,Vacc, Vwbs,'C8' ,Vus )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121060000' ,Vcc,Vacc, Vwbs,'C8' ,Vus);
Endif;

############  3121070000 - Environm., Health, Safety, Security, Quality
if ( Vcc @= 'US20536000' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121070000' ,Vcc,Vacc, Vwbs,'C6' ,Vus  )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121070000' ,Vcc,Vacc, Vwbs,'C6' ,Vus);
Endif;

############  3121080000 - Group Procurement
	if ( Vcc @= 'US20CA8800' % Vcc @= 'US20CA8801' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121080000' ,Vcc,Vacc, Vwbs,'C2' ,Vus  )+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121080000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;

############  3122000000 Other Operating Expenses / Income
############	3122101000 - Capital losses
if (Vcc @= 'US20000016');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122101000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3122101000_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122101000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122101000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3122101000_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122101000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122101000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3122101000_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122101000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;



############	3122102000 - Asset impairment
	if (Vcc @= 'US20000019');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122102000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3122102000_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122102000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122102000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3122102000_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122102000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122102000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3122102000_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122102000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;
if (Vcc @= 'US20000023');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122102000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122102000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
endif;
if (Vcc @= 'US20000024');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122102000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122102000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
endif;


############	3122103000 - Receivable allowances
############	3122104000 - Special projects



############	3122105000 - Premium/contribution/fees

if (Vcc @= 'US20000017' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3122105000' ,Vcc,Vacc, Vwbs,'C2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3122105000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
endif;
if (Vcc @= 'US20000029');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122105000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLogi_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122105000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122105000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLogi_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122105000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122105000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLogi_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122105000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;

############	3122106000 - Non-allocable personnel expenses
if (Vcc @= 'US20000026');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122106000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122106000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122106000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122106000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122106000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122106000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;

############	3122108000 - Restructuring expenses


if (Vcc @= 'US20000027' % Vcc @= 'US20G000BE' % Vcc @= 'US20GBD0BE'
% Vcc @= 'US20GCI0BE' % Vcc @= 'US20GDM0BE' % Vcc @= 'US20GDM0BF'
               % Vcc @= 'US20GMGFBE'  % Vcc @= 'US20GO00BE' % Vcc @= 'US20GREDBE'
               % Vcc @= 'US20GDMF18' % Vcc @= ' US20LGOF18');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3122108000' ,Vcc,Vacc, Vwbs,'Y1' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3122108000' ,Vcc,Vacc, Vwbs,'Y1' ,Vus);
endif;



############	3122109000 - Litigation expenses
if (Vcc @= 'US20CA8501');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLogi_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLogi_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLogi_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;
if (Vcc @= 'US20CA8502');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
endif;
if (Vcc @= 'US20CA8503');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
endif;


                             ############	Allegropharma ##############

if ( Vwbs @= 'US201AL0AESLTPR00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3122109000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
Endif;

############	3122112000 - Remaining other expenses 3rd parties

if (Vcc @= 'US20000011' % Vcc @= 'US20000000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122112000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122112000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122112000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122112000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122112000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122112000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


############	3122113000 - Transfer remaining other expenses

if (Vcc @= 'US20000006' % (Vcc @= 'US20 No Cost Center' & Subst(Vwbs,1,5) @= 'US20N'));
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*VOther_91)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VOther_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VOther_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VOther_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VOther_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*VOther_A9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VOther_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VOther_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122113000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;



############	3122114000 - Remaining other expenses IC

if (  Vcc @= 'US20150004' % Vcc @= 'US20175302' % Vcc @= 'US20195407'
	% Vcc @= 'US20182802' % Vcc @= 'US20138302' % Vcc @= 'US20139501'
	% Vcc @= 'US20157202' % Vcc @= 'US20182202' % Vcc @= 'US20189105'
	% Vcc @= 'US20121502' % Vcc @= 'US20171301' % Vcc @= 'US20195401'
               % Vcc @= 'US20111301' % Vcc @= 'US20102801' % Vcc @= 'US20150004'
               % Vcc @= 'US20175302' % Vcc @= 'US20175301' % Vcc @= 'US20197502'
               % Vcc @= 'US20175407' % Vcc @= 'US20188202'  );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*VOther_91)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VOther_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VOther_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VOther_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VOther_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*VOther_A9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VOther_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VOther_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122114000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


############	3122115000 - Internal allocation remaining other expense

if ( Vcc @= 'US20000008');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*VOther_91)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VOther_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VOther_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VOther_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VOther_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*VOther_A9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VOther_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VOther_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122115000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;

############	3122117000 - Non income related taxes
if (Vacc @= '17954000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122117000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122117000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122117000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122117000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122117000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122117000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;

###########   3122201000 - Capital gains
  if (Vcc @= 'US20000015');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122201000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122201000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122201000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122201000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122201000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122201000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


###########   3122202000 - Impairment reversals
  if (Vcc @= 'US20000025');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122202000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122202000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
endif;


############	3122203000 - Export cost reimbursement income
#  	Direct load to SPER cube due to several reimbursements


############	3122204000 - Remaining other income 3rd parties

if(Vcc @= 'US20900000');
	CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
		'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
endif;

if ( Vcc @= 'US20000004' % Vcc @= 'US20000010' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*VOther_91)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VOther_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VOther_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VOther_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VOther_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*VOther_A9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VOther_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VOther_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122204000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


############	3122205000 - Remaining other income IC

	if ( Vcc @= 'US20 No Cost Center' & Vacc @= '13502100');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*VOther_91)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VOther_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VOther_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VOther_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VOther_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*VOther_A9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VOther_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VOther_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122205000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


############	3122206000 - Income from allowance reversals

if ( Vcc @= 'US20 No Cost Center' & Vacc @= '13850100');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122206000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3122206000_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122206000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122206000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3122206000_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122206000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122206000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3122206000_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122206000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122206000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*V3122206000_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122206000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
endif;

###########     3123111000 - Currency diff operating - transactions, realized
if (Vcc @= 'US20000014');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3123111000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3123111000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122117000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3123111000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3123111000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3123111000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


###########     3123112000 - Currency diff operating - transactions, unrealized
if (Vcc @= 'US20000001');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3123112000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3123112000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3122112000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3123112000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3123112000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3123112000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;



############	3211100000 - R&D Expenses Local
############	Medical   Local R&D	   ################

#asciioutput('\\USBE1W0067\data\TM1\EMDSerono_Log\OpexToSPER2013_Rebif_US201MEDNROPR0100.txt', numbertostring(CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)), Vyr, Vmon, Vsce, Vver, Vcurr,  Vcc, Vwbs,ATTRS('WBS', Vwbs, 'RPP BF'), Vacc, Vamt, numbertostring(Value), Vfun);
   

IF (ATTRS('WBS', Vwbs, 'RPP BF') @= '');

if ( Subst(Vwbs,1,9) @= 'US201MEDN' % Subst(Vwbs,1,11) @= 'US20 No WBS');


####  Rebif and Novantrone  ####
if ( Subst(Vwbs,1,11) @= 'US201MEDNFR' % Subst(Vwbs,1,11) @= 'US201MEDNFD'  );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
if ( (Subst(Vcc,1,10) @= 'US20CRP4MS' % Subst(Vcc,1,10) @= 'US20CRRXMS')
&  Subst(Vwbs,1,11) @= 'US20 No WBS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif;
if (  Subst(Vwbs,1,11) @= 'US201MEDNRI' % Subst(Vwbs,1,11) @= 'US201MEDNRO'
	% Subst(Vwbs,1,11) @= 'US201MEDNNO');
   if( Vwbs @<> 'US201MEDNRIPRPC01' & Vwbs @<> 'US201MEDNRIPRPC02');
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
     'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
Endif; 
Endif;
####  PD  ####
if ( Subst(Vwbs,1,11) @= 'US201MEDNPD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
Endif;
####  AIID  ####
if ( Subst(Vwbs,1,11) @= 'US201MEDNAI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
Endif;
Endif;
####  Fertility  ####
if ( Subst(Vwbs,1,9) @= 'US201MEDF');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;
if ( (Subst(Vcc,1,10) @= 'US20CRP4RH' % Subst(Vcc,1,10) @= 'US20CRRXRH')
	&  Subst(Vwbs,1,11) @= 'US20 No WBS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;

####  Fertility  Technology ####
if ( Subst(Vwbs,1,10) @= 'US201MEDTF');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
Endif;
####  Cladribine ####
if ( Subst(Vwbs,1,11) @= 'US201MEDNCO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;

####  Evobrutinib####
if ( Subst(Vwbs,1,11) @= 'US201MEDNVO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;


####  Endo  ####
if ( Subst(Vwbs,1,9) @= 'US201MEDE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
if ( (Subst(Vcc,1,10) @= 'US20CRP4HG' % Subst(Vcc,1,10) @= 'US20CRRXHG'
	% Subst(Vcc,1,10) @= 'US20CRP4HV' % Subst(Vcc,1,10) @= 'US20CRRXHV'
	% Subst(Vcc,1,10) @= 'US20CRDXHV') &  Subst(Vwbs,1,11) @= 'US20 No WBS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;
####  Oncology  ####
if ( Subst(Vwbs,1,11) @= 'US201MEDOON' % Subst(Vwbs,1,11) @= 'US201MEDOFD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar, '3211100000' ,Vcc,Vacc, Vwbs, '59',Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar, '3211100000' ,Vcc,Vacc, Vwbs, '59',Vus);
Endif;

if ( (Subst(Vcc,1,10) @= 'US20ORP459' % Subst(Vcc,1,10) @= 'US20ORRX59')
	&  Subst(Vwbs,1,11) @= 'US20 No WBS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000'  ,Vcc,Vacc, Vwbs, '59',Vus);
Endif;

####  Evofosfamide TH302  ####
if(Subst(Vwbs,1,11) @= 'US201MEDOEV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'V7',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'V7',Vus);
Endif;
####  Anti-PD-L1 out Co-Promote ####
if(Subst(Vwbs,1,11) @= 'US201MEDOPD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'V9',Vus);
Endif;

####  Anti-PD-L1 in Co-Promote ####
if(Subst(Vwbs,1,11) @= 'US201MEDOPI');
	if(SCAN('PR', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'W0',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'W0',Vus);
	else;
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'V8',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'V8',Vus);
	Endif;
Endif;

####  Xalkori In Co-Promote  ####
if(Subst(Vwbs,1,11) @= 'US201MEDOXI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'FD',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'FD',Vus);
Endif;
####  Xalkori Out Co-Promote  ####
if(Subst(Vwbs,1,11) @= 'US201MEDOXO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'FD',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'FD',Vus);
Endif;

####  Allergopharma  ####
if(Subst(Vwbs,1,11) @= 'US201MEDAAL' % Subst(Vwbs,1,11) @= 'US201ALDAM' % Subst(Vwbs,1,11) @= 'US201ALS9M');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'98',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'98',Vus);
Endif;

####  Tepotinib In Co-Promote  ####
if(Subst(Vwbs,1,11) @= 'US201MEDOTI');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'TT',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'TT',Vus);
Endif;
####  Tepotinib Out Co-Promote  ####
if(Subst(Vwbs,1,11) @= 'US201MEDOTO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'TT',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'TT',Vus);
Endif;

####  Xevinapant Out Co-Promote  ####
if(Subst(Vwbs,1,11) @= 'US201MEDOXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'XE',Vus);
Endif;

####  Bintrafusp in Co-Promote ####
if(Subst(Vwbs,1,11) @= 'US201MEDOBI');
	if(SCAN('PR', Vwbs) > 0);
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'BQ',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'BQ',Vus);
	else;
		CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'BS',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'BS',Vus);
	Endif;
Endif;

####  Bintrafusp out Co-Promote ####
if(Subst(Vwbs,1,11) @= 'US201MEDOBD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'BT',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc,Vwbs,'BT',Vus);
Endif;


## According to actual – allocated to MS/RH/HG/WA
####  CMO Support  ####
###if ((  Subst(Vwbs,1,8) @= 'US201MES' & (Subst(Vwbs,10,2) @= '00')
# % Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,1) @= '_'));
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLRD_A8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLRD_A4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLRD_A5)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VLRD_FD)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VLRD_V7)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VLRD_V8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VLRD_V9)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VLRD_98)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VLRD_E4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
##### Maureen C. - 09-06-2019  - Added allocaiton for MAVENCLAD ####
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VLRD_B3)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
#Endif;


## According to actual – allocated to MS/RH/HG/WA
####  CMO Support  ####
###Maureen C. 02-23-2021 - Updated for Medical Support People/Overhead allocation
if (( Subst(Vwbs,1,8) @= 'US201MES' & (Subst(Vwbs,10,2) @= '00' & Subst(Vwbs,12,2) @= 'PE'))
% (Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,1) @= '_'  & Subst(Vwbs,12,2) @= 'PE'));
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLRDPEOH_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLRDPEOH_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLRDPEOH_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VLRDPEOH_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VLRDPEOH_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VLRDPEOH_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VLRDPEOH_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VLRDPEOH_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VLRDPEOH_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
##### Maureen C. - 09-06-2019  - Added allocaiton for MAVENCLAD ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VLRDPEOH_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
##### Maureen C. - 02-23-2021  - Added allocaiton for Tepotinib####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*VLRDPEOH_TT)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
##### Maureen C. - 01-23-2023  - Added allocaiton for EVO and XEV####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VLRDPEOH_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VLRDPEOH_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;


## According to actual – allocated to MS/RH/HG/WA
####  CMO Support  ####
###Maureen C. 02-23-2021 - Updated for Medical Support People/Overhead allocation
if (( Subst(Vwbs,1,8) @= 'US201MES' & (Subst(Vwbs,10,2) @= '00' & Subst(Vwbs,12,2) @= 'OH'))
% (Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,1) @= '_'  & Subst(Vwbs,12,2) @= 'OH'));
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLRDPEOH_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLRDPEOH_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLRDPEOH_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VLRDPEOH_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VLRDPEOH_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VLRDPEOH_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VLRDPEOH_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VLRDPEOH_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VLRDPEOH_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
##### Maureen C. - 09-06-2019  - Added allocaiton for MAVENCLAD ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VLRDPEOH_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
##### Maureen C. - 02-23-2021  - Added allocaiton for Tepotinib####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*VLRDPEOH_TT)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
##### Maureen C. - 02-23-2023  - Added allocaiton for EVO and XEV ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VLRDPEOH_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VLRDPEOH_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;


## According to actual – allocated to MS/RH/HG/WA
####  CMO Support  ####
###Maureen C. 02-23-2021 - Updated for Medical Support Program allocation
if (( Subst(Vwbs,1,8) @= 'US201MES' & (Subst(Vwbs,10,2) @= '00' & Subst(Vwbs,12,2) @= 'PR'))
% (Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,1) @= '_'  & Subst(Vwbs,12,2) @= 'PR'));

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLRDPR_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLRDPR_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLRDPR_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VLRDPR_FD)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VLRDPR_V7)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VLRDPR_V8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VLRDPR_V9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VLRDPR_98)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VLRDPR_E4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
##### Maureen C. - 09-06-2019  - Added allocaiton for MAVENCLAD ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VLRDPR_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
##### Maureen C. - 02-23-2021  - Added allocaiton for Tepotinib####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*VLRDPR_TT)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
##### Maureen C. - 02-23-2023  - Added allocaiton for EVO and XEV ####
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*VLRDPR_EV)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*VLRDPR_XE)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

#### Maureen C. - 09-09-2019 #####
#### CMO Support Allocation per Product ###

#### Rebif ####
if (  Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,2) @= 'RO');
      CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*1)),
      'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
 endif;

#### Cladribine ####
if (  Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,2) @= 'CO');
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*1)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
Endif;

#### Evobrutinib####
if (  Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,2) @= 'VO');
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV' ,Vus)+(Value*1)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV' ,Vus);
Endif;

#### Fertility ####
if (  Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,2) @= 'FO');
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*1)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
Endif;

#### Serostim ####
if (  Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,2) @= 'SO');
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*1)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
Endif;

#### Avelumab ####
if (  Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,2) @= 'PD');
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*1)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
Endif;

### Maureen C. 02-23-2021 - Added In Co Promote for Bavencio ###
#### Avelumab In Co-Pro####
if (  Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,2) @= 'PI');
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*1)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
Endif;


#### Tepotinib####
if (  Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,2) @= 'TO');
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT' ,Vus)+(Value*1)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT' ,Vus);
Endif;

#### Xevinapant ####
if (  Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,2) @= 'XE');
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE' ,Vus)+(Value*1)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE' ,Vus);
Endif;

#### Bintrafusp####
if (  Subst(Vwbs,1,8) @= 'US201MES' & Subst(Vwbs,10,2) @= 'BO');
     CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'BT' ,Vus)+(Value*1)),
     'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'BT' ,Vus);
Endif;


## According to actual – New CCs are US20CRCO00, US20CRCM01
#if ( (Subst(Vcc,1,10) @= 'US20CR0000' % Subst(Vcc,1,10) @= 'US20CR1500'
#	% Subst(Vcc,1,10) @= 'US20CR6300' % Subst(Vcc,1,10) @= 'US20CRCM00'
#	% Subst(Vcc,1,10) @= 'US20CRLX00' % Subst(Vcc,1,10) @= 'US20CRMO00'
#	% Subst(Vcc,1,10) @= 'US20CRMX00' % Subst(Vcc,1,10) @= 'US20CRMX01'
#% Subst(Vcc,1,10) @= 'US20CRCO00' % Subst(Vcc,1,10) @= 'US20CRCM01'  )
#	&  Subst(Vwbs,1,11) @= 'US20 No WBS');
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLRD_A8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLRD_A4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLRD_A5)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VLRD_59)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VLRD_FD)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VLRD_V7)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VLRD_V8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VLRD_98)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VLRD_E4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
#Endif;

#if (  Subst(Vcc,1,10) @= 'US20CRMGF1' & (Vacc @<>'92230000' & Vacc @<>'92250008'));
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLRD_A8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLRD_A4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLRD_A5)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VLRD_FD)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VLRD_V7)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VLRD_V8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VLRD_V9)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VLRD_98)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VLRD_E4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
#Endif;

#if (  Subst(Vcc,1,10) @= 'US20CRMGF1' & Vacc @='92230000');
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLRDLGOCIS_A8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLRDLGOCIS_A4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLRDLGOCIS_A5)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VLRDLGOCIS_FD)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VLRDLGOCIS_V7)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VLRDLGOCIS_V8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VLRDLGOCIS_V9)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VLRDLGOCIS_98)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VLRDLGOCIS_E4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
#Endif;

#if (  Subst(Vcc,1,10) @= 'US20CRMGF1' & Vacc @='92250008');
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VLRDLGOCFAC_A8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VLRDLGOCFAC_A4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VLRDLGOCFAC_A5)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus)+(Value*VLRDLGOCFAC_FD)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'FD' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus)+(Value*VLRDLGOCFAC_V7)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V7' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus)+(Value*VLRDLGOCFAC_V8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus)+(Value*VLRDLGOCFAC_V9)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus)+(Value*VLRDLGOCFAC_98)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'98' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus)+(Value*VLRDLGOCFAC_E4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'E4' ,Vus);
### Maureen C. - 09-08-2019 - Added allocations for MAVENCLAD
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VLRDLGOCFAC_B3)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
#Endif;

#if (  Subst(Vcc,1,10) @= 'US20CRMGF2' );
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'C2' ,Vus)+(Value*1)),
#'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
#Endif;

###commented out by Pierre 09/20/2024###

Endif;
############	3211200000 - R&D Expenses Local IC
############	3211300000 - R&D Expenses Local - Samples
############	3211400000 - R&D Reimbursment Local 3rd parties
############	3212100000 - R&D Expenses Global

#if ( Subst(Vcc,1,6) @= 'US203'  );
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*V3212000000pfd_91)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*V3212000000pfd_B9)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*V3212000000pfd_52)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*V3212000000pfd_59)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*V3212000000pfd_70)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*V3212000000pfd_A9)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3212000000pfd_A8)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3212000000pfd_A4)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*V3212000000pfd_A2)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*V3212000000pfd_B3)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3212000000pfd_A5)),
#'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212100000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
#endif;


############	3212200000 - R&D Expenses Global IC
	if (Vacc @= '15802000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212200000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VOther_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212200000' ,Vcc,Vacc, Vwbs,'A8' ,Vus );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212200000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VOther_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212200000' ,Vcc,Vacc, Vwbs,'A4' ,Vus );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212200000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VOther_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212200000' ,Vcc,Vacc, Vwbs,'A5' ,Vus );
endif;

############	3212300000 - R&D Expenses Global - Samples
############	3212500000 - R&D Reimbursment Global IC

	if ( Vcc @= 'US20 No Cost Center' & Vacc @= '13601000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*VGRD_91)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*VGRD_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*VGRD_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*VGRD_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*VGRD_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*VGRD_A9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*VGRD_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*VGRD_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*VGRD_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*VGRD_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*VGRD_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3212500000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


############	3213000000 - R&D Accruals for Group-IPR-Holder

############    3214000000 - R&D expenses local from global  -    Programming not confirmed

#if (  Subst(Vcc,1,10) @= 'US20CR0000' % Subst(Vcc,1,10) @= 'US20CR0001' % Subst(Vcc,1,10) @= 'US20CR6300' %
#     Subst(Vcc,1,10) @= 'US20CRLX00' % Subst(Vcc,1,10) @= 'US20CRMO00' % Subst(Vcc,1,10) @= 'US20CRMX00' %
#     Subst(Vcc,1,10) @= 'US20CRMX01' % );
#CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'C2' ,Vus)+(Value*1)),
#'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
#Endif;

############	3310000000 - Amortization intangible assets (without software)

if (Vcc @= 'US20CAMOEG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,
'3310000000',Vcc,Vacc,Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceF,Vver,
Pcmg,Valt_A,VFun,VPar,'3310000000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
	Endif;


############	3321000000 - Dividends
if (Vacc @='18000100');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,
'3321000000',Vcc,Vacc,Vwbs,'91',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,
Pcmg,Valt_A,VFun,VPar,'3321000000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
	Endif;

############	3323000000 - Investment result at equity
############	3411000000 - Non operating TP compensations - income

	if ( Vacc @= '13970100');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*V3411000000_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*V3411000000_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*V3411000000_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*V3411000000_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*V3411000000_A9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3411000000_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3411000000_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*V3411000000_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*V3411000000_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3411000000_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3411000000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;



############	3412000000 - Non operating TP Compensations – expense

	if (  Vacc @= '14950000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'B9' ,Vus)+(Value*V3412000000_B9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'B9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'52' ,Vus)+(Value*V3412000000_52)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'52' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'59' ,Vus)+(Value*V3412000000_59)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'59' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'70' ,Vus)+(Value*V3412000000_70)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'70' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'A9' ,Vus)+(Value*V3412000000_A9)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'A9' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'A8' ,Vus)+(Value*V3412000000_A8)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'A8' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'A4' ,Vus)+(Value*V3412000000_A4)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'A4' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'A2' ,Vus)+(Value*V3412000000_A2)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'A2' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'B3' ,Vus)+(Value*V3412000000_B3)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'B3' ,Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'A5' ,Vus)+(Value*V3412000000_A5)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3412000000' ,Vcc,Vacc, Vwbs,'A5' ,Vus);
endif;


############	3521110000 - Income from financial receivables 3rd parties

	if ( Vcc @= 'US20000018' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3521110000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3521110000' ,Vcc,Vacc, Vwbs,'91' ,Vus);


	endif;


############	3521120000 - Income from financial receivables IC

	if (Vacc @= '18210100');

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3521120000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3521120000' ,Vcc,Vacc, Vwbs,'91' ,Vus);


	endif;

############	3521130000 - Other interest income




############	3521210000 - Expenses from financial liabilities 3rd parties

if ( Vcc @= 'US20000009' );
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3521210000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3521210000' ,Vcc,Vacc, Vwbs,'91' ,Vus);
	endif;


############	3521220000 - Expenses from financial liabilities IC

	if (Vacc @= '18310100' % Vacc @= '18399100');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3521220000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3521220000' ,Vcc,Vacc, Vwbs,'91' ,Vus);

	endif;


############	3521230000 - Other interest expenses

	if ( Vcc @= 'US20000020' );

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3521230000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3521230000' ,Vcc,Vacc, Vwbs,'91' ,Vus);


	endif;


############	3524100000 - Interest quota - pensions

	if (Vacc @= '18341000');

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3524100000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3524100000' ,Vcc,Vacc, Vwbs,'91' ,Vus);


	endif;


############	3524200000 - Interest quota - long-term provisions

	if (Vacc @= '18340000');

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3524200000' ,Vcc,Vacc, Vwbs,'91' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3524200000' ,Vcc,Vacc, Vwbs,'91' ,Vus);


	endif;

############## 3121050000 - Other administration costs

if (Vacc @= '15304000');

CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);


	endif;

	
	##############	C2   ##############
If (ATTRS('WBS', Vwbs, 'RPP BF') @= '50 C2');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2' ,Vus)+(Value*1)),
'SPER_2013',Vyr,Vmon,PsceF,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2' ,Vus);
Endif;


###pierre 09/21/2024###

### OOP Admin - 3121050000 - US20CA8000 ###
if (Subst(Vcc,1,10) @= 'US20CA8000');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000',Vcc,Vacc, Vwbs,'A4',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### OOP Admin - 3121050000 - US20CA8000 ###
### Support Communications - 3121050000 - US20CACX00 ###
if (Subst(Vcc,1,10) @= 'US20CACX00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000' ,Vcc,Vacc, Vwbs,'C2',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3121050000',Vcc,Vacc, Vwbs,'C2',Vus);
Endif;
### Support Communications - 3121050000 - US20CACX00 ###
### GOV ISS - 3110250000 - US20CAGA00 ###
if (Subst(Vcc,1,10) @= 'US20CAGA00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### GOV ISS - 3110250000 - US20CAGA00 ###
### Support Meetings & Events - 3110170000 - US20CAMT00 ###
if (Subst(Vcc,1,10) @= 'US20CAMT00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### Support Meetings & Events - 3110170000 - US20CAMT00 ###
### ONC FF BAV - 3110170000 - US20CFABAP ###
if (Subst(Vcc,1,10) @= 'US20CFABAP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC FF BAV - 3110170000 - US20CFABAP ###
### ONC FF TEP - 3110170000 - US20CFAXAP ###
if (Subst(Vcc,1,10) @= 'US20CFAXAP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0.2)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.8)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC FF TEP - 3110170000 - US20CFAXAP ###
### N&I - FF N&I - 3110170000 - US20CFAXMS ###
if (Subst(Vcc,1,10) @= 'US20CFAXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - FF N&I - 3110170000 - US20CFAXMS ###
### F&E-FF RH - 3110170000 - US20CFAXRH ###
if (Subst(Vcc,1,10) @= 'US20CFAXRH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### F&E-FF RH - 3110170000 - US20CFAXRH ###
### F&E-FF SE - 3110170000 - US20CFAXSE ###
if (Subst(Vcc,1,10) @= 'US20CFAXSE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
Endif;
### F&E-FF SE - 3110170000 - US20CFAXSE ###
### ONC FF BAV - 3110170000 - US20CFAXTT ###
if (Subst(Vcc,1,10) @= 'US20CFAXTT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'TT',Vus);
Endif;
### ONC FF BAV - 3110170000 - US20CFAXTT ###
### ONC FF XEV - 3110170000 - US20CFAXXE ###
if (Subst(Vcc,1,10) @= 'US20CFAXXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### ONC FF XEV - 3110170000 - US20CFAXXE ###
### N&I - OEI MAV - 3110170000 - US20CFCLB3 ###
if (Subst(Vcc,1,10) @= 'US20CFCLB3');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - OEI MAV - 3110170000 - US20CFCLB3 ###
### OE&I - CO OE&I FF - 3110170000 - US20CFCO00 ###
if (Subst(Vcc,1,10) @= 'US20CFCO00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### OE&I - CO OE&I FF - 3110170000 - US20CFCO00 ###
### ONC OEI XEV - 3110170000 - US20CFCOXE ###
if (Subst(Vcc,1,10) @= 'US20CFCOXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### ONC OEI XEV - 3110170000 - US20CFCOXE ###
### OE&I - DDI FF - 3110170000 - US20CFDI00 ###
if (Subst(Vcc,1,10) @= 'US20CFDI00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### OE&I - DDI FF - 3110170000 - US20CFDI00 ###
### OE&I - FFE FF - 3110170000 - US20CFHX00 ###
if (Subst(Vcc,1,10) @= 'US20CFHX00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### OE&I - FFE FF - 3110170000 - US20CFHX00 ###
### N&I - FFE MAV - 3110170000 - US20CFHXB3 ###
if (Subst(Vcc,1,10) @= 'US20CFHXB3');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - FFE MAV - 3110170000 - US20CFHXB3 ###
### F&E - FFE RH - 3110170000 - US20CFHXRH ###
if (Subst(Vcc,1,10) @= 'US20CFHXRH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### F&E - FFE RH - 3110170000 - US20CFHXRH ###
### F&E - FFE SE - 3110170000 - US20CFHXSE ###
if (Subst(Vcc,1,10) @= 'US20CFHXSE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
Endif;
### F&E - FFE SE - 3110170000 - US20CFHXSE ###
### ONC FFE BAV - 3110170000 - US20CFHXTT ###
if (Subst(Vcc,1,10) @= 'US20CFHXTT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC FFE BAV - 3110170000 - US20CFHXTT ###
### ONC FFE XEV - 3110170000 - US20CFHXXE ###
if (Subst(Vcc,1,10) @= 'US20CFHXXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### ONC FFE XEV - 3110170000 - US20CFHXXE ###
### MAPS - MACS FF - 3110170000 - US20CFIX00 ###
if (Subst(Vcc,1,10) @= 'US20CFIX00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### MAPS - MACS FF - 3110170000 - US20CFIX00 ###
### ONC MAPS XEV - 3110170000 - US20CFIXXE ###
if (Subst(Vcc,1,10) @= 'US20CFIXXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### ONC MAPS XEV - 3110170000 - US20CFIXXE ###
### COMM FF LTIP - 3110170000 - US20CFLTIP ###
if (Subst(Vcc,1,10) @= 'US20CFLTIP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'EV',Vus)+(Value*0)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'EV',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### COMM FF LTIP - 3110170000 - US20CFLTIP ###
### OE&I - SA FF - 3110170000 - US20CFSA00 ###
if (Subst(Vcc,1,10) @= 'US20CFSA00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### OE&I - SA FF - 3110170000 - US20CFSA00 ###
### LGOC FF Facilities - 3110170000 - US20CFSSAL ###
if (Subst(Vcc,1,10) @= 'US20CFSSAL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2634)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4263)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1827)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0664)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0612)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### LGOC FF Facilities - 3110170000 - US20CFSSAL ###
### MAPS - FPS FF - 3110170000 - US20CFTX00 ###
if (Subst(Vcc,1,10) @= 'US20CFTX00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### MAPS - FPS FF - 3110170000 - US20CFTX00 ###
### ONC PAS XEV - 3110170000 - US20CFTXXE ###
if (Subst(Vcc,1,10) @= 'US20CFTXXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110170000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### ONC PAS XEV - 3110170000 - US20CFTXXE ###
### ONC  ISS MKTG XEV - 3110250000 - US20CMAXAP ###
if (Subst(Vcc,1,10) @= 'US20CMAXAP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.12)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0.18)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.7)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC  ISS MKTG XEV - 3110250000 - US20CMAXAP ###
### N&I - MKT MAV - 3110250000 - US20CMAXB3 ###
if (Subst(Vcc,1,10) @= 'US20CMAXB3');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - MKT MAV - 3110250000 - US20CMAXB3 ###
### N&I - MKT N&I - 3110250000 - US20CMAXMS ###
if (Subst(Vcc,1,10) @= 'US20CMAXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - MKT N&I - 3110250000 - US20CMAXMS ###
### F&E_ MKT RH - 3110250000 - US20CMAXRH ###
if (Subst(Vcc,1,10) @= 'US20CMAXRH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### F&E_ MKT RH - 3110250000 - US20CMAXRH ###
### F&E_ MKT SE - 3110250000 - US20CMAXSE ###
if (Subst(Vcc,1,10) @= 'US20CMAXSE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
Endif;
### F&E_ MKT SE - 3110250000 - US20CMAXSE ###
### ONC  ISS MKTG TEP - 3110250000 - US20CMAXTT ###
if (Subst(Vcc,1,10) @= 'US20CMAXTT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'TT',Vus);
Endif;
### ONC  ISS MKTG TEP - 3110250000 - US20CMAXTT ###
### ONC  ISS MKTG XEV - 3110250000 - US20CMAXXE ###
if (Subst(Vcc,1,10) @= 'US20CMAXXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC  ISS MKTG XEV - 3110250000 - US20CMAXXE ###
### COO ISS - 3110250000 - US20CMBX00 ###
if (Subst(Vcc,1,10) @= 'US20CMBX00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### COO ISS - 3110250000 - US20CMBX00 ###
### ONC Commerical ISS MKTG BAV - 3110250000 - US20CMBX59 ###
if (Subst(Vcc,1,10) @= 'US20CMBX59');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC Commerical ISS MKTG BAV - 3110250000 - US20CMBX59 ###
### N&I - MKT ADV - 3110250000 - US20CMBXMS ###
if (Subst(Vcc,1,10) @= 'US20CMBXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - MKT ADV - 3110250000 - US20CMBXMS ###
### N&I - COM N&I - 3110250000 - US20CMCXMS ###
if (Subst(Vcc,1,10) @= 'US20CMCXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - COM N&I - 3110250000 - US20CMCXMS ###
### F&E_ COMM RH - 3110250000 - US20CMCXRH ###
if (Subst(Vcc,1,10) @= 'US20CMCXRH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### F&E_ COMM RH - 3110250000 - US20CMCXRH ###
### F&E_COMM SE - 3110250000 - US20CMCXSE ###
if (Subst(Vcc,1,10) @= 'US20CMCXSE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
Endif;
### F&E_COMM SE - 3110250000 - US20CMCXSE ###
### ONC Communications BAV - 3110250000 - US20CMCXTT ###
if (Subst(Vcc,1,10) @= 'US20CMCXTT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC Communications BAV - 3110250000 - US20CMCXTT ###
### N&I - CO N&I - 3110250000 - US20CMDXMS ###
if (Subst(Vcc,1,10) @= 'US20CMDXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - CO N&I - 3110250000 - US20CMDXMS ###
### F&E_CO RH - 3110250000 - US20CMDXRH ###
if (Subst(Vcc,1,10) @= 'US20CMDXRH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### F&E_CO RH - 3110250000 - US20CMDXRH ###
### OE&I - EX ISS - 3110250000 - US20CMEX00 ###
if (Subst(Vcc,1,10) @= 'US20CMEX00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### OE&I - EX ISS - 3110250000 - US20CMEX00 ###
### ONC Data BAV - 3110250000 - US20CMEX59 ###
if (Subst(Vcc,1,10) @= 'US20CMEX59');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC Data BAV - 3110250000 - US20CMEX59 ###
### ONC GSI BAV - 3110250000 - US20CMEXAP ###
if (Subst(Vcc,1,10) @= 'US20CMEXAP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC GSI BAV - 3110250000 - US20CMEXAP ###
### N&I - MIF N&I - 3110250000 - US20CMEXB3 ###
if (Subst(Vcc,1,10) @= 'US20CMEXB3');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - MIF N&I - 3110250000 - US20CMEXB3 ###
### N&I - DATA N&I - 3110250000 - US20CMEXMS ###
if (Subst(Vcc,1,10) @= 'US20CMEXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - DATA N&I - 3110250000 - US20CMEXMS ###
### F&E _DATA RH - 3110250000 - US20CMEXRH ###
if (Subst(Vcc,1,10) @= 'US20CMEXRH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### F&E _DATA RH - 3110250000 - US20CMEXRH ###
### F&E _DATA SE - 3110250000 - US20CMEXSE ###
if (Subst(Vcc,1,10) @= 'US20CMEXSE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
Endif;
### F&E _DATA SE - 3110250000 - US20CMEXSE ###
### ONC GSI BAV - 3110250000 - US20CMEXTT ###
if (Subst(Vcc,1,10) @= 'US20CMEXTT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC GSI BAV - 3110250000 - US20CMEXTT ###
### ONC Data XEV - 3110250000 - US20CMEXXE ###
if (Subst(Vcc,1,10) @= 'US20CMEXXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### ONC Data XEV - 3110250000 - US20CMEXXE ###
### F&E _ADV RH - 3110250000 - US20CMGARH ###
if (Subst(Vcc,1,10) @= 'US20CMGARH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### F&E _ADV RH - 3110250000 - US20CMGARH ###
### F&E _ADV SE - 3110250000 - US20CMGASE ###
if (Subst(Vcc,1,10) @= 'US20CMGASE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
Endif;
### F&E _ADV SE - 3110250000 - US20CMGASE ###
### Gov't Pricing ISS - 3110250000 - US20CMGP00 ###
if (Subst(Vcc,1,10) @= 'US20CMGP00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### Gov't Pricing ISS - 3110250000 - US20CMGP00 ###
### Oncology Commerical GPA - 3110250000 - US20CMGV59 ###
if (Subst(Vcc,1,10) @= 'US20CMGV59');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### Oncology Commerical GPA - 3110250000 - US20CMGV59 ###
### N&I - GA N&I - 3110250000 - US20CMGVMS ###
if (Subst(Vcc,1,10) @= 'US20CMGVMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - GA N&I - 3110250000 - US20CMGVMS ###
### F&E _GA RH - 3110250000 - US20CMGVRH ###
if (Subst(Vcc,1,10) @= 'US20CMGVRH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### F&E _GA RH - 3110250000 - US20CMGVRH ###
### F&E _GA SE - 3110250000 - US20CMGVSE ###
if (Subst(Vcc,1,10) @= 'US20CMGVSE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
Endif;
### F&E _GA SE - 3110250000 - US20CMGVSE ###
### ONC  GPA BAV - 3110250000 - US20CMGVTT ###
if (Subst(Vcc,1,10) @= 'US20CMGVTT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC  GPA BAV - 3110250000 - US20CMGVTT ###
### MAPS - MACS ISS - 3110250000 - US20CMIX00 ###
if (Subst(Vcc,1,10) @= 'US20CMIX00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### MAPS - MACS ISS - 3110250000 - US20CMIX00 ###
### N&I - MACS N&I - 3110250000 - US20CMIXMS ###
if (Subst(Vcc,1,10) @= 'US20CMIXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - MACS N&I - 3110250000 - US20CMIXMS ###
### F&E _MACS RH - 3110250000 - US20CMIXRH ###
if (Subst(Vcc,1,10) @= 'US20CMIXRH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### F&E _MACS RH - 3110250000 - US20CMIXRH ###
### F&E _MACS SE - 3110250000 - US20CMIXSE ###
if (Subst(Vcc,1,10) @= 'US20CMIXSE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
Endif;
### F&E _MACS SE - 3110250000 - US20CMIXSE ###
### ONC  MAPS Mktg XEV - 3110250000 - US20CMIXTT ###
if (Subst(Vcc,1,10) @= 'US20CMIXTT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC  MAPS Mktg XEV - 3110250000 - US20CMIXTT ###
### ONC  MAPS Mktg XEV - 3110250000 - US20CMIXXE ###
if (Subst(Vcc,1,10) @= 'US20CMIXXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### ONC  MAPS Mktg XEV - 3110250000 - US20CMIXXE ###
### N&I - DPR N&I - 3110250000 - US20CMJXMS ###
if (Subst(Vcc,1,10) @= 'US20CMJXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - DPR N&I - 3110250000 - US20CMJXMS ###
### COMM ISS LTIP - 3110250000 - US20CMLTIP ###
if (Subst(Vcc,1,10) @= 'US20CMLTIP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'EV',Vus)+(Value*0)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'EV',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### COMM ISS LTIP - 3110250000 - US20CMLTIP ###
### ONC ISS OLL BAV - 3110250000 - US20CMLXAP ###
if (Subst(Vcc,1,10) @= 'US20CMLXAP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'TT',Vus);
Endif;
### ONC ISS OLL BAV - 3110250000 - US20CMLXAP ###
### N&I - TLL N&I - 3110250000 - US20CMLXMS ###
if (Subst(Vcc,1,10) @= 'US20CMLXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - TLL N&I - 3110250000 - US20CMLXMS ###
### ONC ISS OLL XEV - 3110250000 - US20CMLXXE ###
if (Subst(Vcc,1,10) @= 'US20CMLXXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### ONC ISS OLL XEV - 3110250000 - US20CMLXXE ###
### MI&F - GSI ISS - 3110250000 - US20CMMI00 ###
if (Subst(Vcc,1,10) @= 'US20CMMI00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### MI&F - GSI ISS - 3110250000 - US20CMMI00 ###
### ONC GSI XEV - 3110250000 - US20CMMIXE ###
if (Subst(Vcc,1,10) @= 'US20CMMIXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### ONC GSI XEV - 3110250000 - US20CMMIXE ###
### N&I - NURSE N&I - 3110250000 - US20CMMXMS ###
if (Subst(Vcc,1,10) @= 'US20CMMXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - NURSE N&I - 3110250000 - US20CMMXMS ###
### LGOC ISS Facilities - 3110250000 - US20CMSSAL ###
if (Subst(Vcc,1,10) @= 'US20CMSSAL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2634)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4263)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1827)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0664)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0612)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### LGOC ISS Facilities - 3110250000 - US20CMSSAL ###
### MAPS - PAS ISS - 3110250000 - US20CMTX00 ###
if (Subst(Vcc,1,10) @= 'US20CMTX00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.0945)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2147)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.4379)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.1489)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0541)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0499)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### MAPS - PAS ISS - 3110250000 - US20CMTX00 ###
### N&I - PAS N&I - 3110250000 - US20CMTXMS ###
if (Subst(Vcc,1,10) @= 'US20CMTXMS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### N&I - PAS N&I - 3110250000 - US20CMTXMS ###
### F&E_ PAS RH - 3110250000 - US20CMTXRH ###
if (Subst(Vcc,1,10) @= 'US20CMTXRH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### F&E_ PAS RH - 3110250000 - US20CMTXRH ###
### F&E_ PAS SE - 3110250000 - US20CMTXSE ###
if (Subst(Vcc,1,10) @= 'US20CMTXSE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'A5',Vus);
Endif;
### F&E_ PAS SE - 3110250000 - US20CMTXSE ###
### ONC PAS BAV - 3110250000 - US20CMTXTT ###
if (Subst(Vcc,1,10) @= 'US20CMTXTT');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### ONC PAS BAV - 3110250000 - US20CMTXTT ###
### ONC PAS XEV - 3110250000 - US20CMTXXE ###
if (Subst(Vcc,1,10) @= 'US20CMTXXE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110250000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### ONC PAS XEV - 3110250000 - US20CMTXXE ###
### MED - N&I LRD - 3211100000 - US20CR00CL ###
if (Subst(Vcc,1,10) @= 'US20CR00CL');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### MED - N&I LRD - 3211100000 - US20CR00CL ###
### MED - EVO LRD - 3211100000 - US20CR00VO ###
if (Subst(Vcc,1,10) @= 'US20CR00VO');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'EV',Vus);
Endif;
### MED - EVO LRD - 3211100000 - US20CR00VO ###
### MED - XEV LRD - 3211100000 - US20CR00XE ###
if (Subst(Vcc,1,10) @= 'US20CR00XE');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### MED - XEV LRD - 3211100000 - US20CR00XE ###
### MED - XEVSUP LRD - 3211100000 - US20CR00XS ###
if (Subst(Vcc,1,10) @= 'US20CR00XS');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'XE',Vus);
Endif;
### MED - XEVSUP LRD - 3211100000 - US20CR00XS ###
### MED - SUP5 LRD - 3211100000 - US20CRCM00 ###
if (Subst(Vcc,1,10) @= 'US20CRCM00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.28)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0.035)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.02)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.035)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.05)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A4',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.58)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### MED - SUP5 LRD - 3211100000 - US20CRCM00 ###
### MED - SUP8 LRD - 3211100000 - US20CRCM01 ###
if (Subst(Vcc,1,10) @= 'US20CRCM01');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.28)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0.035)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.02)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.035)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.05)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A4',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.58)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### MED - SUP8 LRD - 3211100000 - US20CRCM01 ###
### MED - SUP6 LRD - 3211100000 - US20CRCO00 ###
if (Subst(Vcc,1,10) @= 'US20CRCO00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.28)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0.035)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.02)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.035)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.05)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A4',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.58)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### MED - SUP6 LRD - 3211100000 - US20CRCO00 ###
### MED - SUP9 LRD - 3211100000 - US20CRHO00 ###
if (Subst(Vcc,1,10) @= 'US20CRHO00');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.28)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0.035)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.02)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.035)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.05)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A4',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.58)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'B3',Vus);
Endif;
### MED - SUP9 LRD - 3211100000 - US20CRHO00 ###
### COMM LRD LTIP - 3211100000 - US20CRLTIP ###
if (Subst(Vcc,1,10) @= 'US20CRLTIP');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'XE',Vus)+(Value*0.28)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'XE',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.035)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0.035)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'EV',Vus)+(Value*0)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'EV',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.58)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.02)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.05)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### COMM LRD LTIP - 3211100000 - US20CRLTIP ###
### LGOC LR&D Facilities - 3211100000 - US20CRMGF1 ###
if (Subst(Vcc,1,10) @= 'US20CRMGF1');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.2634)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.609)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.0664)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.0612)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### LGOC LR&D Facilities - 3211100000 - US20CRMGF1 ###
### MED - HIV LRD - 3211100000 - US20CRRXHV ###
if (Subst(Vcc,1,10) @= 'US20CRRXHV');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A5',Vus);
Endif;
### MED - HIV LRD - 3211100000 - US20CRRXHV ###
### MED - FRT LRD - 3211100000 - US20CRRXRH ###
if (Subst(Vcc,1,10) @= 'US20CRRXRH');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*1)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### MED - FRT LRD - 3211100000 - US20CRRXRH ###
### REG - OTHER M&S - 3110500000 - US20F03REG ###
if (Subst(Vcc,1,10) @= 'US20F03REG');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'B3',Vus)+(Value*0.05)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000',Vcc,Vacc, Vwbs,'B3',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A8',Vus)+(Value*0.26)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000',Vcc,Vacc, Vwbs,'A8',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0.05)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.05)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000',Vcc,Vacc, Vwbs,'V9',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A5',Vus)+(Value*0.23)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000',Vcc,Vacc, Vwbs,'A5',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000' ,Vcc,Vacc, Vwbs,'A4',Vus)+(Value*0.36)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3110500000',Vcc,Vacc, Vwbs,'A4',Vus);
Endif;
### REG - OTHER M&S - 3110500000 - US20F03REG ###
### MED - ONC LRD - 3211100000 - US20ORRXPD ###
if (Subst(Vcc,1,10) @= 'US20ORRXPD');
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'TT',Vus)+(Value*0.5)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'TT',Vus);
CellPutN((CellGetN('SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000' ,Vcc,Vacc, Vwbs,'V9',Vus)+(Value*0.5)),'SPER_2013',Vyr,Vmon,PsceA,Vver,Pcmg,Valt_A,VFun,VPar,'3211100000',Vcc,Vacc, Vwbs,'V9',Vus);
Endif;
### MED - ONC LRD - 3211100000 - US20ORRXPD ###



###pierre 09/21/2024###