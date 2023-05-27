<?php
// Retrieve the answer ID from the AJAX request
$answerId = $_POST['answer_id'];

// Create a database connection
$con = mysqli_connect("localhost", "root", "", "qna"); // Replace with your database credentials

// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
}

// Update the like count in the database
$sql = "UPDATE user_answers SET like_count = like_count + 1 WHERE answer_id = $answerId";
$result = mysqli_query($con, $sql);

if ($result) {
    // Query the database to fetch the updated like count for the answer
    $query = "SELECT like_count FROM user_answers WHERE answer_id = $answerId";
    $result = mysqli_query($con, $query);

    if ($result) {
        $row = mysqli_fetch_assoc($result);
        $updatedLikeCount = $row['like_count'];

        // Echo the updated like count
        echo $updatedLikeCount;
    } else {
        echo "Error fetching updated like count";
    }
} else {
    echo "Error updating like count";
}

// Close the database connection
mysqli_close($con);
?>
