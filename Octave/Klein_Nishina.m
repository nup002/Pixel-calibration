%Klein-Nishina function

function [pEout, pElost, diffCross] = Klein_Nishina(pEin, angle)
  %Function for calculating the Klein-Nishina cross section.
  %Parameters:
  %pEin   : Energy of the incoming photon in eV
  %angle  : Scattering angle of the photon in radians
  
  %Returns:
  %[pEout, pElost, diffCrss] : Photon energy after scattering, energy lost 
  %from scattering, and differential cross section.
  run("Constants.m")
  
  theta = angle;
  P = 1/(1+pEin*(1-cos(theta))/me); %Ratio of photon energy after and before collision
  pEout = P*pEin;
  pElost = pEin - pEout;
  diffCross = re2*(P^-2)*(P+P^-1-sin(theta)^2)/2;
end