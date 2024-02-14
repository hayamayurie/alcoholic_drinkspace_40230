document.addEventListener('turbo:load', function() {
  const postButton = document.getElementById('postButton');

  postButton.addEventListener('mouseover', function() {
    postButton.style.backgroundColor = 'lightgray';
    postButton.style.color = 'maroon'; 
  });

  postButton.addEventListener('mouseout', function() {
    postButton.style.backgroundColor = '';
    postButton.style.color = '';
  });
});
