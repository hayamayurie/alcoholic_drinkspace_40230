document.addEventListener('turbo:load', function() {
  const postButton = document.getElementById('postButton');

  postButton.addEventListener('mouseover', function() {
    postButton.style.backgroundColor = 'lightyellow';
    postButton.style.color = 'dimgray'; 
  });

  postButton.addEventListener('mouseout', function() {
    postButton.style.backgroundColor = '';
    postButton.style.color = '';
  });
});



document.addEventListener('DOMContentLoaded', function() {
  const categoryButtons = document.querySelectorAll('.wapper');

  categoryButtons.forEach(function(categoryButton) {
    categoryButton.addEventListener('mouseover', function() {
      categoryButton.style.backgroundColor = 'lightyellow';
      categoryButton.style.color = 'dimgray';
    });

    categoryButton.addEventListener('mouseout', function() {
      categoryButton.style.backgroundColor = '';
      categoryButton.style.color = '';
    });
  });
});