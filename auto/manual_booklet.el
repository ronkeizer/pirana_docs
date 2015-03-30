(TeX-add-style-hook "manual_booklet"
 (lambda ()
    (TeX-add-symbols
     '("command" 1)
     '("action" 1)
     '("fname" 1)
     '("psn" 1)
     "test"
     "reference"
     "valpsn"
     "ValPsN")
    (TeX-run-style-hooks
     "mathpazo"
     "lscape"
     "hyperref"
     "bbm"
     "listings"
     "enumitem"
     "float"
     "color"
     "setspace"
     ""
     "graphicx"
     "pdftex"
     "geometry"
     "paperheight=22.86cm"
     "paperwidth=15.24cm"
     "latex2e"
     "rep10"
     "report"
     "9pt"
     "manual_body"
     "manual_tutorial"
     "7_quick_guide_configuration_pirana_body"
     "3_quick_guide_nonmem_installation_body"
     "2_quick_guide_cluster_body"
     "4_quick_guide_working_with_models_body"
     "10_quick_guide_reporting_body"
     "8_quick_guide_graphics_withoutXpose_body"
     "1_quick_guide_vpc_body"
     "6_quick_guide_Xpose_graphics_body"
     "5_quick_guide_convertingODEs_body"
     "9_quick_guide_psn_body")))

