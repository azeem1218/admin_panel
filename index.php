
<?php
session_start();

				
	if (isset($_SESSION['status'])) {
		echo $_SESSION['status'];
		unset($_SESSION['status']);
	}

?>
				<h5>
	home page for user
</h5>
