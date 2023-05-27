function likeAnswer(answerId) {
    // AJAX request to update the like count
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'like_answer.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Update the like count display
            var updatedLikeCount = xhr.responseText;
            document.getElementById('like-count-' + answerId).textContent = updatedLikeCount;
        }
    };
    xhr.send('answer_id=' + answerId);
}
