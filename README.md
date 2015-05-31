medr
====

Morphine Equivalent Dosages in R. Used to convert various opioids daily
doses to the total morphine equivalent daily dose.

Morphine Equivalent Dosage table
--------------------------------

<table>
<thead>
<tr class="header">
<th align="left">generic</th>
<th align="left">route</th>
<th align="left">key</th>
<th align="right">meq_po</th>
<th align="left">source</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">fentanyl</td>
<td align="left">iv</td>
<td align="left">fentanyl_iv</td>
<td align="right">200.00000</td>
<td align="left">NDARC</td>
</tr>
<tr class="even">
<td align="left">hydrocodone</td>
<td align="left">po</td>
<td align="left">hydrocodone_po</td>
<td align="right">1.00000</td>
<td align="left">UNC</td>
</tr>
<tr class="odd">
<td align="left">hydromorphone</td>
<td align="left">iv</td>
<td align="left">hydromorphone_iv</td>
<td align="right">15.00000</td>
<td align="left">NDARC</td>
</tr>
<tr class="even">
<td align="left">hydromorphone</td>
<td align="left">po</td>
<td align="left">hydromorphone_po</td>
<td align="right">5.00000</td>
<td align="left">NDARC</td>
</tr>
<tr class="odd">
<td align="left">meperidine</td>
<td align="left">iv</td>
<td align="left">meperidine_iv</td>
<td align="right">0.13333</td>
<td align="left">UNC</td>
</tr>
<tr class="even">
<td align="left">methadone</td>
<td align="left">iv</td>
<td align="left">methadone_iv</td>
<td align="right">13.50000</td>
<td align="left">NDARC</td>
</tr>
<tr class="odd">
<td align="left">methadone</td>
<td align="left">po</td>
<td align="left">methadone_po</td>
<td align="right">4.70000</td>
<td align="left">NDARC</td>
</tr>
<tr class="even">
<td align="left">morphine</td>
<td align="left">iv</td>
<td align="left">morphine_iv</td>
<td align="right">3.00000</td>
<td align="left">NDARC</td>
</tr>
<tr class="odd">
<td align="left">morphine</td>
<td align="left">po</td>
<td align="left">morphine_po</td>
<td align="right">1.00000</td>
<td align="left">NDARC</td>
</tr>
<tr class="even">
<td align="left">nalbuphine</td>
<td align="left">iv</td>
<td align="left">nalbuphine_iv</td>
<td align="right">1.00000</td>
<td align="left">UNC</td>
</tr>
<tr class="odd">
<td align="left">oxycodone</td>
<td align="left">po</td>
<td align="left">oxycodone_po</td>
<td align="right">1.50000</td>
<td align="left">NDARC</td>
</tr>
<tr class="even">
<td align="left">oxymorphone</td>
<td align="left">po</td>
<td align="left">oxymorphone_po</td>
<td align="right">0.33333</td>
<td align="left">OPANA</td>
</tr>
<tr class="odd">
<td align="left">sufentanil</td>
<td align="left">iv</td>
<td align="left">sufentanil_iv</td>
<td align="right">2.00000</td>
<td align="left">NDARC</td>
</tr>
<tr class="even">
<td align="left">tramadol</td>
<td align="left">iv</td>
<td align="left">tramadol_iv</td>
<td align="right">0.20000</td>
<td align="left">NDARC</td>
</tr>
</tbody>
</table>

Sources
-------

-   [NDARC](https://ndarc.med.unsw.edu.au/sites/default/files/ndarc/resources/TR.329.pdf):
    Table 1  
-   [UNC](https://www.med.unc.edu/aging/fellowship/current/curriculum/palliative-care/UNC%20Equianalgesic%20Card%20-Dec2009.pdf)
-   [OPANA](http://www.opana.com/prescriber/dosing/opioid-conversions.aspx)

Installation
------------

This package can be installed using devtools with the following:

    devtools::install_github(build_vignettes = TRUE, "rparrish/medr")

Requirements
------------

Usage
-----

    me_data <- medd(data)
