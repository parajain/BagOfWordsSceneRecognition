Project url: [Scene recognition with bag of words](http://cs.brown.edu/courses/cs143/proj3/)

Parag Jain
Bag of SIFTs+Chi squared kernel SVM : accuracy 0.753


SVM Result:

<dt>
<dt>
<!DOCTYPE html>
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Nunito:300|Crimson+Text|Droid+Sans+Mono' rel='stylesheet' type='text/css'>
<style type="text/css">
</style>
</head>
<body>

<div class="container">


<center>
<h1>CS 143 Project 3 results visualization</h1>
<img src="confusion_matrix.png">

<br>
Accuracy (mean of diagonal of confusion matrix) is 0.705
<p>

<table border=0 cellpadding=4 cellspacing=1>
<tr>
<th>Category name</th>
<th>Accuracy</th>
<th colspan=2>Sample training images</th>
<th colspan=2>Sample true positives</th>
<th colspan=2>False positives with true label</th>
<th colspan=2>False negatives with wrong predicted label</th>
</tr>
<tr>
<td>Kitchen</td>
<td>0.710</td>
<td bgcolor=LightBlue><img src="thumbnails/Kitchen_image_0193.jpg" width=100 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Kitchen_image_0099.jpg" width=112 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Kitchen_image_0121.jpg" width=100 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Kitchen_image_0028.jpg" width=57 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/Bedroom_image_0029.jpg" width=133 height=75><br><small>Bedroom</small></td>
<td bgcolor=LightCoral><img src="thumbnails/Store_image_0141.jpg" width=125 height=75><br><small>Store</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Kitchen_image_0125.jpg" width=114 height=75><br><small>Mountain</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Kitchen_image_0064.jpg" width=107 height=75><br><small>LivingRoom</small></td>
</tr>
<tr>
<td>Store</td>
<td>0.510</td>
<td bgcolor=LightBlue><img src="thumbnails/Store_image_0142.jpg" width=76 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Store_image_0064.jpg" width=57 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Store_image_0048.jpg" width=100 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Store_image_0122.jpg" width=74 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/LivingRoom_image_0079.jpg" width=103 height=75><br><small>LivingRoom</small></td>
<td bgcolor=LightCoral><img src="thumbnails/InsideCity_image_0043.jpg" width=75 height=75><br><small>InsideCity</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Store_image_0082.jpg" width=135 height=75><br><small>Kitchen</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Store_image_0134.jpg" width=57 height=75><br><small>LivingRoom</small></td>
</tr>
<tr>
<td>Bedroom</td>
<td>0.470</td>
<td bgcolor=LightBlue><img src="thumbnails/Bedroom_image_0025.jpg" width=95 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Bedroom_image_0145.jpg" width=102 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Bedroom_image_0080.jpg" width=100 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Bedroom_image_0007.jpg" width=101 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/Kitchen_image_0167.jpg" width=57 height=75><br><small>Kitchen</small></td>
<td bgcolor=LightCoral><img src="thumbnails/LivingRoom_image_0037.jpg" width=113 height=75><br><small>LivingRoom</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Bedroom_image_0115.jpg" width=89 height=75><br><small>LivingRoom</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Bedroom_image_0120.jpg" width=116 height=75><br><small>InsideCity</small></td>
</tr>
<tr>
<td>LivingRoom</td>
<td>0.470</td>
<td bgcolor=LightBlue><img src="thumbnails/LivingRoom_image_0226.jpg" width=100 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/LivingRoom_image_0149.jpg" width=100 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/LivingRoom_image_0042.jpg" width=105 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/LivingRoom_image_0114.jpg" width=98 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/InsideCity_image_0104.jpg" width=75 height=75><br><small>InsideCity</small></td>
<td bgcolor=LightCoral><img src="thumbnails/Store_image_0091.jpg" width=89 height=75><br><small>Store</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/LivingRoom_image_0096.jpg" width=100 height=75><br><small>Kitchen</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/LivingRoom_image_0078.jpg" width=113 height=75><br><small>Kitchen</small></td>
</tr>
<tr>
<td>Office</td>
<td>0.900</td>
<td bgcolor=LightBlue><img src="thumbnails/Office_image_0101.jpg" width=115 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Office_image_0156.jpg" width=108 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Office_image_0110.jpg" width=107 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Office_image_0055.jpg" width=108 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/LivingRoom_image_0002.jpg" width=100 height=75><br><small>LivingRoom</small></td>
<td bgcolor=LightCoral><img src="thumbnails/LivingRoom_image_0013.jpg" width=100 height=75><br><small>LivingRoom</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Office_image_0144.jpg" width=115 height=75><br><small>LivingRoom</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Office_image_0127.jpg" width=119 height=75><br><small>Kitchen</small></td>
</tr>
<tr>
<td>Industrial</td>
<td>0.550</td>
<td bgcolor=LightBlue><img src="thumbnails/Industrial_image_0159.jpg" width=112 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Industrial_image_0226.jpg" width=97 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Industrial_image_0040.jpg" width=135 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Industrial_image_0008.jpg" width=114 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/Street_image_0145.jpg" width=75 height=75><br><small>Street</small></td>
<td bgcolor=LightCoral><img src="thumbnails/TallBuilding_image_0016.jpg" width=75 height=75><br><small>TallBuilding</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Industrial_image_0007.jpg" width=117 height=75><br><small>InsideCity</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Industrial_image_0005.jpg" width=114 height=75><br><small>Highway</small></td>
</tr>
<tr>
<td>Suburb</td>
<td>0.950</td>
<td bgcolor=LightBlue><img src="thumbnails/Suburb_image_0091.jpg" width=113 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Suburb_image_0016.jpg" width=113 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Suburb_image_0061.jpg" width=113 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Suburb_image_0068.jpg" width=113 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/Coast_image_0024.jpg" width=75 height=75><br><small>Coast</small></td>
<td bgcolor=LightCoral><img src="thumbnails/OpenCountry_image_0004.jpg" width=75 height=75><br><small>OpenCountry</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Suburb_image_0053.jpg" width=113 height=75><br><small>Coast</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Suburb_image_0046.jpg" width=113 height=75><br><small>Mountain</small></td>
</tr>
<tr>
<td>InsideCity</td>
<td>0.560</td>
<td bgcolor=LightBlue><img src="thumbnails/InsideCity_image_0212.jpg" width=75 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/InsideCity_image_0028.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/InsideCity_image_0068.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/InsideCity_image_0139.jpg" width=75 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/Industrial_image_0140.jpg" width=100 height=75><br><small>Industrial</small></td>
<td bgcolor=LightCoral><img src="thumbnails/Street_image_0055.jpg" width=75 height=75><br><small>Street</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/InsideCity_image_0012.jpg" width=75 height=75><br><small>LivingRoom</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/InsideCity_image_0037.jpg" width=75 height=75><br><small>Industrial</small></td>
</tr>
<tr>
<td>TallBuilding</td>
<td>0.750</td>
<td bgcolor=LightBlue><img src="thumbnails/TallBuilding_image_0331.jpg" width=75 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/TallBuilding_image_0320.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/TallBuilding_image_0018.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/TallBuilding_image_0080.jpg" width=75 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/Industrial_image_0114.jpg" width=49 height=75><br><small>Industrial</small></td>
<td bgcolor=LightCoral><img src="thumbnails/InsideCity_image_0021.jpg" width=75 height=75><br><small>InsideCity</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/TallBuilding_image_0024.jpg" width=75 height=75><br><small>Kitchen</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/TallBuilding_image_0107.jpg" width=75 height=75><br><small>Bedroom</small></td>
</tr>
<tr>
<td>Street</td>
<td>0.740</td>
<td bgcolor=LightBlue><img src="thumbnails/Street_image_0280.jpg" width=75 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Street_image_0002.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Street_image_0018.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Street_image_0027.jpg" width=75 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/InsideCity_image_0057.jpg" width=75 height=75><br><small>InsideCity</small></td>
<td bgcolor=LightCoral><img src="thumbnails/Store_image_0084.jpg" width=93 height=75><br><small>Store</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Street_image_0041.jpg" width=75 height=75><br><small>Store</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Street_image_0025.jpg" width=75 height=75><br><small>InsideCity</small></td>
</tr>
<tr>
<td>Highway</td>
<td>0.810</td>
<td bgcolor=LightBlue><img src="thumbnails/Highway_image_0033.jpg" width=75 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Highway_image_0223.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Highway_image_0075.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Highway_image_0027.jpg" width=75 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/Mountain_image_0079.jpg" width=75 height=75><br><small>Mountain</small></td>
<td bgcolor=LightCoral><img src="thumbnails/Coast_image_0058.jpg" width=75 height=75><br><small>Coast</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Highway_image_0013.jpg" width=75 height=75><br><small>Coast</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Highway_image_0140.jpg" width=75 height=75><br><small>Coast</small></td>
</tr>
<tr>
<td>OpenCountry</td>
<td>0.460</td>
<td bgcolor=LightBlue><img src="thumbnails/OpenCountry_image_0363.jpg" width=75 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/OpenCountry_image_0235.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/OpenCountry_image_0016.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/OpenCountry_image_0051.jpg" width=75 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/Coast_image_0030.jpg" width=75 height=75><br><small>Coast</small></td>
<td bgcolor=LightCoral><img src="thumbnails/Highway_image_0034.jpg" width=75 height=75><br><small>Highway</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/OpenCountry_image_0122.jpg" width=75 height=75><br><small>Coast</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/OpenCountry_image_0023.jpg" width=75 height=75><br><small>Mountain</small></td>
</tr>
<tr>
<td>Coast</td>
<td>0.840</td>
<td bgcolor=LightBlue><img src="thumbnails/Coast_image_0248.jpg" width=75 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Coast_image_0043.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Coast_image_0050.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Coast_image_0106.jpg" width=75 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/OpenCountry_image_0080.jpg" width=75 height=75><br><small>OpenCountry</small></td>
<td bgcolor=LightCoral><img src="thumbnails/InsideCity_image_0042.jpg" width=75 height=75><br><small>InsideCity</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Coast_image_0024.jpg" width=75 height=75><br><small>Suburb</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Coast_image_0107.jpg" width=75 height=75><br><small>Highway</small></td>
</tr>
<tr>
<td>Mountain</td>
<td>0.910</td>
<td bgcolor=LightBlue><img src="thumbnails/Mountain_image_0318.jpg" width=75 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Mountain_image_0070.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Mountain_image_0027.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Mountain_image_0097.jpg" width=75 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/OpenCountry_image_0012.jpg" width=75 height=75><br><small>OpenCountry</small></td>
<td bgcolor=LightCoral><img src="thumbnails/OpenCountry_image_0079.jpg" width=75 height=75><br><small>OpenCountry</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Mountain_image_0076.jpg" width=75 height=75><br><small>Forest</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Mountain_image_0003.jpg" width=75 height=75><br><small>Coast</small></td>
</tr>
<tr>
<td>Forest</td>
<td>0.950</td>
<td bgcolor=LightBlue><img src="thumbnails/Forest_image_0016.jpg" width=75 height=75></td>
<td bgcolor=LightBlue><img src="thumbnails/Forest_image_0129.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Forest_image_0122.jpg" width=75 height=75></td>
<td bgcolor=LightGreen><img src="thumbnails/Forest_image_0101.jpg" width=75 height=75></td>
<td bgcolor=LightCoral><img src="thumbnails/Mountain_image_0076.jpg" width=75 height=75><br><small>Mountain</small></td>
<td bgcolor=LightCoral><img src="thumbnails/Store_image_0073.jpg" width=101 height=75><br><small>Store</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Forest_image_0117.jpg" width=75 height=75><br><small>Mountain</small></td>
<td bgcolor=#FFBB55><img src="thumbnails/Forest_image_0109.jpg" width=75 height=75><br><small>Mountain</small></td>
</tr>
<tr>
<th>Category name</th>
<th>Accuracy</th>
<th colspan=2>Sample training images</th>
<th colspan=2>Sample true positives</th>
<th colspan=2>False positives with true label</th>
<th colspan=2>False negatives with wrong predicted label</th>
</tr>
</table>
</center>


</div>
</body>
</html>
</dt>

</dt>
