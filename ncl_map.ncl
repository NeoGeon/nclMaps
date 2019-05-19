load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_code.ncl"
load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_csm.ncl"

begin
   f = addfile("./wuli.nc", "r")
   var = f->T(0,0,:,:)
  
   wks = gsn_open_wks("png", "test4")
  
   res                         = True
  
   res@cnFillOn                = True 
   res@cnFillPalette           = "BlueWhiteOrangeRed"
   res@cnLevelSelectionMode    = "ManualLevels"
   res@cnMinLevelValF          = 120.
   res@cnMaxLevelValF          = 300.
   res@tiMainString            = "test the var"

   plot = gsn_csm_contour_map(wks,var, res)

end
