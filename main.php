<html>
<body>
<!--Day In and Out-->
<br>Normal Day In and Out<br />
<form method="post" action="checking.php">
<label> ID Number </label>
<input type="text" name="idno" />
<label> Place </label>
<input type="text" name="place" />
<br />
<input type="submit" value="Search" />
</form>

<!--Day Pass-->
<br>Day Pass<br />
<form method="post" action="daypass.php">
<label> ID Number </label>
<input type="text" name="idno" />
<br />
<input type="submit" value="Pass the day!" />
</form>
<!--Leave-->
<br>Overnight Leave<br />
<form method="post" action="leave.php">
<label> ID Number </label>
<input type="text" name="idno" />
<br />
<input type="submit" value="Leave!" />
</form>

<!--Show students off campus-->
<br>Students off Campus<br />
<form method="post" action="offcampus.php">
<input type="submit" value="Show" />
</form>

<!--Show students off campus on leave-->
<br>Students off Campus On Leave<br />
<form method="post" action="offcampus_leave.php">
<input type="submit" value="Show" />
</form>

</body>
</html>
