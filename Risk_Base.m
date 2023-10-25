function [U_Obs]=Risk_Base(X,Y,Sta_mu1,Sta_mu2,Mov_mu1,Mov_mu2,Sta_sigma1,Sta_sigma2,v_sigma1,v_rel,ks)
U_Sta=1*exp(-0.5.*(((X-Sta_mu1).^2./(Sta_sigma1^2)).^2+((Y-Sta_mu2).^2./(Sta_sigma2^2))).^2); 
 U_Mov=1*(exp(-0.5.*(((X-Mov_mu1).^2./(v_sigma1^2)).^1+((Y-Mov_mu2).^2./(Sta_sigma2^2))).^1))./(1+exp(v_rel*(X-Mov_mu1-(Sta_sigma1*v_rel*ks)))); 
U_Obs=0.3*U_Sta+0.7*U_Mov;
end