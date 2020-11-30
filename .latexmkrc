# from https://qiita.com/Gandats/items/d7718f12d71e688f3573

# LaTeX
$latex = 'platex -synctex=1 -halt-on-error -file-line-error %O %S';
$max_repeat = 5;

# BibTeX
$bibtex = 'pbibtex %O %S';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';

# index
$makeindex = 'mendex %O -o %D %S';

# DVI / PDF
$dvipdf = 'dvipdfmx %O -o %D %S';
$pdf_mode = 3;

# preview
$pvc_view_file_via_temporary = 0;
$dvi_previewer = "xdg-open %S";
$pdf_previewer = "xdg-open %S";

# clean up
$clean_full_ext = "%R.synctex.gz"
