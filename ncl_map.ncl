load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_code.ncl"
load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_csm.ncl"

begin
   f = addfile("./my2.nc", "r")
   var = f->uas(0,:,:)
  
   wks = gsn_open_wks("png", "test")
  
   res                         = True

   res@tiMainString            = "test the var"

   plot = gsn_csm_contour_map(wks,var, res)

end
